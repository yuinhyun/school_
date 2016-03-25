<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <jsp:include page="../global/header.jsp" />
 <div class="container" style="width:1000px; margin:0 auto;">
 	<h3>Form 객체</h3>
 	<ul>
 		<li><h3>1.정의</h3>
 			<ul>
 				<li>사용자의 정보를 주고 받을 수 있는 상호작용 기능</li>
 				<li>form 태그를 사용해서 입력할 내용을 정의</li>
 				<li>글상자, 선택 양식, 버튼 등 여러가지 입력 양식을 사용</li>
 			</ul>
 		</li>
 		<li><h3>2.form</h3>
 			<ul>
 				<li>name : 입력양식에 이름을 설정</li>
 				<li>method : get/post 방식 지정</li>
 				<li>action : 입력양식을 처리할 URL 지정</li>
 				<li>target : 입력양식의 데이터를 서버에서 처리한 후 <br />
 					받아 보는 결과물을 처리할 창 설정
 				</li>
 			</ul>
 		</li>
 		<li><h3>3.form 태그에서 사용하는 입력양식들</h3>
 			<ul>
 				<li>text : 한줄의 글</li>
 				<li>password : 비번</li>
 				<li>checkbox : 체크박스</li>
 				<li>radio : 라디오 버튼</li>
 				<li>select : 옵션방식</li>
 				<li>textarea : 여러줄의 글</li>
 				<li>file : 파일 업로드</li>
 				<li>date : 날짜 선택</li>
 			</ul>
 		</li>
 		<li></li>
 	</ul>
  </div>
  <script type="text/javascript">
  	var frm = {}
  	frm.display = function(id,pw,nation){
  		alert('아이디는'+id+'이고, 비번은'+pw+'이고,\n'+'출신국가는'+nation+'입니다.');
  	}
  	
  	frm.checkbox = function (subjects) {
  		var arr =[];
  		for (var i = 0; i < subjects.length; i++) {
  			if (subjects[i].checked==true) {
  				arr.push(subjects[i].value);
			}
		}
		alert(arr);
	}
  	frm.select = function(subject) {
		var index = subject.selectIndex;
		if (index===0) {
			alert('과목을 선택하시오')
			return false;
		}
		var list = subject.option[index].text;
		var val = subject.option[index].value;
		var result = '';
		
		result += '선택항목 인덱스 :' +index+ '\n';
		result += '선택항목 리스트 :' +list+ '\n';
		result += '선택항목 값 :' +val+ '\n';
		
		alert(result);
	}
  </script>