<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../global/header.jsp" />
<img src="${context}/resources/img/main/background.jpg" alt="" width="100%" height=""/>
	<div class="row display-table">
    <div class="col-xs-12 col-sm-4 display-cell" >
	    <ul id="admin_sidebar" class="nav nav-pills nav-stacked">
		<h3>배열 출력하기</h3>
		<li><button onclick="admin.memberList()">전체회원 목록보기</button></li>
		<li><button onclick="admin.gradeList()">전체성적 목록보기</a></li>
		<li><button onclick="admin.searchById()">ID 로 회원검색</button></li>
		<li><button onclick="admin.searchByName()">이름으로 회원검색(동명이인 이름)</button></li>
		<li><button onclick="admin.addScore()">학생점수입력</button></li>
 		</ul>
 		    </div>
    <div class="col-xs-12 col-sm-8 display-cell" id="result" style="border: 1px solid black;height: 500px">
    </div>
</div>
</div>
<script src ="${context}/resources/js/admin.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('#admin_sidebar').children().first().addClass('dropdown active');
	$('#admin_sidebar').children().click(function(){
		$(this).addClass('dropdown active');
		$(this).siblings().removeClass('dropdown active');
	}	
});
	

</script>