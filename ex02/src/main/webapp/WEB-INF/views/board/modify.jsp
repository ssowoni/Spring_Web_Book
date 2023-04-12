<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<%@include file="../includes/header.jsp" %>


<script>
	$(document).ready(function(){
		var formObj = $("form");
		
		
	});
	
	
	
</script>





            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Board Modify</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Board Modify
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                       		<div class="form-group">
                       			<label>Bno</label>
                       			<input class="form-control" name='bno'
                       				value='<c:out value="${board.bno}"/>' readonly="readonly">
                       		</div>
                       	
                       		<div class="form-group">
                       			<label>Title</label>
                       			<input class="form-control" name='title'
                       			value='<c:out value="${board.title}"/>' >
                       		</div>
                       		<div class="form-group">
                       			<label>Text area</label>
                       			<textarea class="form-control" rows="3" name='content' >
                       			<c:out value="${board.content}"></c:out></textarea>
                       		</div>
                       		<div class="form-group">
                       			<label>Writer</label>
                       			<input class="form-control" name='writer'
                       			value='<c:out value="${board.writer}"/>' >
                       		</div>
           		      		<div class="form-group">
                       			<label>RegDate</label>
                       			<input class="form-control" name='regDate'
                       			value='<fmt:formatDate pattern="yyyy/MM/dd" value="${board.regDate}"/>' readonly="readonly" >
                       		</div>
                       		<div class="form-group">
                       			<label>UpdateDate</label>
                       			<input class="form-control" name='updateDate'
                       			value='<fmt:formatDate pattern="yyyy/MM/dd" value="${board.updateDate}"/>' readonly="readonly">
                       		</div>
                       		<button type='submit' data-oper='modify' class="btn btn-default">Modify</button>
                       		<button type='submit' data-oper='remove' class="btn btn-default">Remove</button>
                       		<button data-oper='list' class="btn btn-default"
                       			onclick="location.href='/board/list'">List</button>
                       	
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->



<%@include file="../includes/footer.jsp" %>