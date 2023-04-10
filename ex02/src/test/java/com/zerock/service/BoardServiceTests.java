package com.zerock.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zerock.domain.BoardVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j2;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j2
//@RequiredArgsConstructor
public class BoardServiceTests {
	
	@Setter(onMethod_ = {@Autowired})
	private BoardService service;
	
	@Test
	public void testExist() {
		log.info(service);
		assertNotNull(service);
	}
	
	@Test
	public void testRegister() {
		BoardVO board = new BoardVO();
		board.setTitle("새로 작성 서비스 제목");
		board.setContent("새로 작성 서비스 내용");
		board.setWriter("user01");
		service.register(board);
		log.info("생성된 게시물 번호" + board.getBno());
		
	}
	
	
	@Test
	public void testGetList() {
		//collection.forEach(변수 -> 반복처리(변수))
		service.getList().forEach(board->log.info(board));
	}
	
	@Test
	public void testGet() {
		service.get(2L);
	}
	
	@Test
	public void testRemove() {
		service.remove(11L);
	}
	
	@Test
	public void testModify() {
		
		BoardVO board = service.get(10L);
		
		if(board==null) {
			return;
		}
		
		board.setTitle("수정 됐나욤");
		log.info("modify result" + service.modify(board));
		
	}
	

}
