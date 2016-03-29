<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<h3>${member.name} 성적 입력</h3>
<form>
	<table id="member">
	<tr>
		<th style="text-align : center;" >JAVA</th>
		<th style="text-align : center;" >JSP</th>
		<th style="text-align : center;" >SQL</th>
		<th style="text-align : center;" >SPRING</th>
	
	
	<td>
		<input type="text" class="form-control" id="java" name="java" /> Java
		<input type="text" class="form-control" id="jsp" name="jsp" /> JSP
		<input type="text" class="form-control" id="sql" name="sql" /> SQL
		<input type="text" class="form-control" id="spring" name="spring" /> Spring
		<input type="hidden" class="form-control" id="id" name="id" value="${member.id}"/> 
		

	</td>
	</tr>
	
	<tr>
		<td colspan="4">
			<button id="grade_input">입력</button>
			<button id="grade_cancle">취소</button>
				
		</td>
	</tr>
	</table>

</form>
<script>
$(function() {
	$('#grade_input').click(function() {
		
         $('form').attr('action','${context}/grade/grade_add.do').submit();
         });
	
	$('#grade_cancle').click(function() {
        $('form').reset();
        });
	
		
	
});
</script>