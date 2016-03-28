<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../global/header.jsp"/>
<div id="detail">
		<div class="joinTop">
			<h2 class="text-center">${sessionScope.user.name} 상제정보</h2>
		</div>					
		<div class="joinCenter row">
			<form >
				<fieldset class="joinField">
					<div class="form-group">
					 	<label for="input_id" class="col-sm-4 control-label">아이디</label>
					 	<div class="col-sm-4">
							<input type="text" class="form-control" id="id" name="id" value="${sessionScope.user.id }" readonly="readonly"/>
						</div>
					</div>
					<div class="form-group">
						<label for="input_pw" class="col-sm-4 control-label">비밀번호</label>
					 	<div class="col-sm-4">
						<input type="password" class="form-control" id="password" name="password" value="${sessionScope.user.password}" readonly="readonly"/>
						</div>
					</div>
					<div class="form-group">
						<label for="input_name" class="col-sm-4 control-label">이름</label>
					 	<div class="col-sm-4">
								<input type="text" class="form-control" id="name" name="name" value="${sessionScope.user.name}" readonly="readonly"/>
						</div>
					</div>
					<div class="form-group">
						<label for="input_name" class="col-sm-4 control-label">주소</label>
					 	<div class="col-sm-4">
							<input type="text" class="form-control" id="addr" name="addr" value="${sessionScope.user.addr}" readonly="readonly"/>
						</div>
					</div>
					<div class="form-group">
						<label for="input_name" class="col-sm-4 control-label">생년월일</label>
					 	<div class="col-sm-4">
							<input type="text" class="form-control" id="birth" name="birth" value="${sessionScope.user.birth}" readonly="readonly"/>
						</div>
					</div>
					
					
				</fieldset>
			</form>
      			   <div class="input_button text-center">
						<button  id="updateButton">내정보수정하기</button>
						<button  id="deleteButton">아이디삭제하기</button>
						<button  id="scoreButton">내성적보기</button>
					</div>
		</div>
	</div>
	<script>
	
		    $(function() {
		  $('form').addClass('form-horizontal');
			$('#updateButton').addClass('btn btn-primary').click(function() {
				location.href = '${context}/member/update_form.do'; 
			});
	      
	     
			$('#deleteButton').addClass('btn btn-primary').click(function() {
		       location.href = '${context}/member/delete.do';
	          	 });
	      	$('#scoreButton').addClass('btn btn-primary').click(function() {
		       location.href = '${context}/grade/my_grade.do';
	          	 });
	         });
	   
	   
	   
	</script>