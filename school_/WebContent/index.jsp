<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var = "context" value="<%=request.getContextPath() %>"></c:set>
<!doctype html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메인화면</title>
</head>
<body>
<form action="${context}/global/main.do">
		<input type="submit" value="홈으로" />
	</form>
	<%-- a href = url
	${context}=도메인
	/member/login_form.do --%>
</body>
</html>

