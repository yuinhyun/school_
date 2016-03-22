<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- Expression tag 를 사용하지 않는다. -->
<c:set var ="context" value="<%=request.getContextPath() %>"></c:set>
 <!doctype html>
 <html lang="ko">
 <head>
 	<meta charset="UTF-8" />
 	<title>메인화면</title>
 </head>
 <body>
 	<div>
 		<h2> 로그인</h2>
 		<!--  -->
 		<form action="${context}/member/login.do" name="frm" meth="get">
 		<table>
 			<tr>
 				<td>
 					<h3>아이디</h3>
 				</td>
 				<td>
 					<input type="text" name="id" value="" autofocus="autofocus" required="required"/>
 				</td>
 			</tr>
 			<tr>
 				<td>
 					<h3>비밀번호</h3>
 				</td>
 				<td>
 					<input type="password" required="required" />
 				</td>
 			</tr>
 		</table>
 		<div>
 			<input type="submit" value="로그인" />
 			<input type="reset"  value="취소"/>
 		</div>
 		</form>
 	</div>
 	<div><h4>아이디가 없으면, 계정을 생성하시오</h4>
 	<a href="${context}/member/join_form.do">회원가입화면 이동</a>
 	</div>
 	
 	
 	
 </body>
 </html>