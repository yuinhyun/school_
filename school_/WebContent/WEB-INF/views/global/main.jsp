<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<jsp:include page="header.jsp" />
<img src="${context}/img/main/background.jpg" alt="" width="100%" height=""/>
<br />
<div style="margin-left: 43.5%;">
   <div><a href="${context}/member/login_form.do"> 로그인 화면 이동</a></div>
   <div><a href="${context}/member/join_form.do">회원가입</a></div>
   <div><a href="${context}/member/admin_form.do">관리자</a></div>
</div>
<jsp:include page="footer.jsp"/>