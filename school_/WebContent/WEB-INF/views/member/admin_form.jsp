<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../global/header.jsp" />
<img src="${context}/resources/img/main/background.jpg" alt="" width="100%" height=""/>

<form action="">
<fieldset>
<legend>회원관리</legend>
<table class ="table-condensed" style="width:90%; margin-left; 50px">
	<tr>
		<td>전체회원 목록보기</td>
		<td>
		<a href="${context}/grade/admin_list.do">회원 정보 리스트</a>
		</td>
		<td>
		</td>
	</tr>
	<tr>
		<td> ID 로 회원검색</td>
		<td>
			<input type="text" id = "searchById" name="searchById" />
		</td>
	</tr>
	<tr>
		<td>이름으로 회원검색(동명이인 이름)</td>
		<td>
			<input type="text" id ="searchByName" name ="searchByName"/>
		</td>
	</tr>
	<tr>
		<td>학생 점수 입력</td>
		<td>
			<a href="${context}/grade/grade_addform.do">회원 정보 추가</a>
		</td>
	</tr>
	<tr>
		<td colspan="2">
		<button>전송</button>
		<button>취소</button>
		</td>
		<td></td>
	</tr>
</table>
</fieldset>
</form>
</div>

		<jsp:include page="../global/footer.jsp" />
</div>