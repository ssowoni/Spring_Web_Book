package com.zerock.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {

	private int pageNum; //페이지 번호
	private int amout;//한 페이지당 보여질 데이터 개수 
	
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amout = amount;
	}
	
	public Criteria() {
		this(1,10);
	}
}
