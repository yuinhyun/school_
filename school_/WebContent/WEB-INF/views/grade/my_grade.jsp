<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="../global/header.jsp"/>
<div class="mg_auto" style="width:1000px">
	<div class="joinTop">
			<h2 class="text-center">나의 점수 확인</h2>
	</div>
<div class="my_grade row">
			<form action="${context}/global.do" name="gradeForm" class="form-horizontal">
				<fieldset class="joinField">
					<div class="form-group">
					 	<label for="input_java" class="col-sm-4 control-label">JAVA</label>
					 	<div class="col-sm-4">
					 		<input type="text" class="form-control" id="java" name="java" value="${score.java}"/>
						</div>
					</div>
					<div class="form-group">
						<label for="input_sql" class="col-sm-4 control-label">SQL</label>
					 	<div class="col-sm-4">
							<input type="text" class="form-control" id="sql" name="sql" value="${score.sql}"/>
						</div>
					</div>
					<div class="form-group">
						<label for="input_spring" class="col-sm-4 control-label">SPRING</label>
					 	<div class="col-sm-4">
							<input type="text" class="form-control" id="spring" name="spring" value="${score.spring}"/>
						</div>
					</div>
					<div class="form-group">
						<label for="input_jsp" class="col-sm-4 control-label">JSP</label>
					 	<div class="col-sm-4">
							<input type="text" class="form-control" id="jsp" name="jsp" value="${score.jsp}"/>
						</div>
					</div>
				</fieldset>
		</form>
			<form action="${context}/global/main.do">
			<div class="input_button text-center">
			<input type="submit"  id="updateButton" class="btn btn-primary" value="로그아웃" />
			<input type="hidden" id="id" name="id" class="btn btn-primary" value ="${member.id}"/>
			</div>
			</form>
		</div>
<jsp:include page="../global/footer.jsp"/>