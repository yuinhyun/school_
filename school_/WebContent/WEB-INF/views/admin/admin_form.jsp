<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="admin_header.jsp" />

<div class="container" style="width: 1000px; margin: 0 auto;">
	<div class="row display-table">
		<div class="col-xs-12 col-sm-4 display-cell">
			<ul id='admin_sidebar' class="nav nav-pills nav-stacked">
				<li><a href="#" id= "member_list">전체학생 목록보기</a></li></button>
				<li><a href="#" id="grade_list">전체성적 목록보기</a></li>
			</ul>
		</div>
		 <div class="col-xs-12 col-sm-8 display-cell" id="result"
			style="border: 1px solid black; height: 500px">
			<div id='totalList' style="display: none;">
			<jsp:include page="../member/member_list.jsp" />
			</div>
			<div id='gradeList' style="display: none;">
			<jsp:include page="../grade/grade_list.jsp"  />
			</div>
			<div id='searchById' style="display: none;">
			<jsp:include page="../grade/searchById.jsp"  />
			</div>
			<div id='scoreAdd' style="display: none;">
			<jsp:include page="../grade/add_form.jsp" />
			</div>
			</div>

</div>

<script src="$(context)/resources/js/admin.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
	    $('#result').load('${context}/member/list.do')
		$('#admin_sidebar').children().first().addClass('dropdown active');
		$('#admin_sidebar').children().click(function() {
			$(this).siblings().removeClass('dropdown active');
			$(this).addClass('dropdown active');
		});
		$('#member_list').click(function() {
			$('#result').empty();
			$('#result').load('${context}/member/list.do');
		});
		$('#greade_list').click(function() {
			$('#result').empty();
			$('#result').load('${context}/grade/list.do');
		});
		$('#greade_regist').click(function() {
			$('#result').empty();
			$('#result').load('${context}/member/grade_add.do');
		});
	});
 
</script>