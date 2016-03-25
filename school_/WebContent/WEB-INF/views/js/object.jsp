<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <jsp:include page="../global/header.jsp" />
 <div class="container" style="width:1000px; margin:0 auto;">
 	<div>
 		<h3>자스는 객체기반 언어이다.</h3>
 		자스는 객체지향 언어이다. <br />
 		객체기반언어와 객체지향언어가 다른 점은 객체를 표현하는 데 있어서 <br />
 		클래스(객체의 정의) 와 인스턴스(객체의 실체)를 정확이 구분하는가와 <br />
 		구분하지 않은가 이다. <br />
 		객체기반언어에서는 정의하는 클래스가 존재하지 않아도 객체로 명명함
 	</div>
 	<div style ="margin-top: 30px">
 		<h3>객체 구분</h3>
 	<ol>
 		<li>기본 객체 : String, Math, Date, Array</li>
 		<li>내장 객체 : 브라우저 객체, 다큐먼트 객체</li>
 		<li>사용자 정의 객체</li>
 	</ol>
 	</div>
 	<div style ="margin-top: 30px">
 		<h3>브라우저 객체 BOM(Browser Object Model)</h3>
 		웹 브라우저는 최초 HTML 문서를 로드하면서 HTML 문서에 관계없이 <br />
 		5개의 브라우저객체(BOM) 을 생성한다.
 		<ol>
 			<li>Window</li>
 			<li>Document</li>
 			<li>Location</li>
 			<li>Navigation</li>
 			<li>History</li>
 		</ol>
 		<h4>
 			즉, 브라우저 객체(BOM = Window 객체) 은<br />
 			브라우저 창이 열릴때마다 하나씩 만들어지는 객체로서 <br />
 			브라우저 창 안에 존재하는 모든 요소(객체) 들의 상위 객체이다. <br />
 			window.alert(); 처럼 사용하나 <br />
 			window 객체는 생략이 가능하고 보통 생략하고 쓴다.
 		</h4>
 	</div>
 	<div style ="margin-top: 30px">
 		<h3>자바에서 객체 생성방법</h3>
 		<ul>
 			<li>생성자 : Account a = new Account()</li>
 			<li>딥카피 : MemberService m = new MemberServiceImpl()</li>
 			<li>쉘로우카피 : MemberSerive m = MemberServiceImpl.getInstance</li>
 		</ul>
 		<h3>자스에서 객체 생성 방법</h3>
 		<ul>
 			<li>생성자 함수 : var a = new Object();</li>
 			<li>객체 리터럴 : var foo ={var opr : function(){}}</li>
 			<li>함수 표현식 : var func=function(){} </li>
 		</ul>
 	</div>
 </div>