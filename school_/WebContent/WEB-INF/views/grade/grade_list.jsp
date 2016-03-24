<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="../global/header.jsp"/>
	<table cellpadding="3" cellspacing="3" border="1">

		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>주소</th>
			<th>생년월일</th>
			<th>Java</th>
			<th>Jsp</th>
			<th>Sql</th>
			<th>Spring</th>
		</tr>
		<c:forEach var="score" items="${requestScope['totalScore']}">
			<tr>
				<td><c:out value="${score.id}" /></td>
				<td><c:out value="${score.password}" /></td>
				<td><c:out value="${score.name}" /></td>
				<td><c:out value="${score.addr}" /></td>
				<td><c:out value="${score.birth}" /></td>
				<td><c:out value="${score.java}" /></td>
				<td><c:out value="${score.jsp}" /></td>
				<td><c:out value="${score.sql}" /></td>
				<td><c:out value="${score.spring}" /></td>
			</tr>
			</c:forEach>
	</table>
  
<jsp:include page="../global/footer.jsp"/>