<%@ page language="java" 
		 contentType="text/html; charset=utf-8"
    	 pageEncoding="utf-8"%>
    	 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Lotto</title>
<style type="text/css">
	td { 
		border: solid 1px; 
		width: 100px; height: 50px;
		text-align: center; 
		font-size: 15pt }
</style>
</head>
<body>

	<%
	int[] numbers = new int[6];
	for (int i = 0; i < numbers.length; i++) {
		numbers[i] = (int)(Math.random() * 45) + 1;
		for (int j = 0; j < i; j++) {
			if (numbers[i] == numbers[j]) {
				i--;
				break;
			}
		}
	}
	%>

	<h3><a href="03.exercise.jsp">당첨 예상번호 뽑기</a></h3>
	<hr>
	<table>
		<tr>
			<% 
			for (int i = 0; i < numbers.length; i++) {
				out.println("<td>");
				out.println(numbers[i]);
				out.println("</td>");
			} 
			%>
		</tr>
	</table>
	
	<table>
		<tr>
			<% for (int i = 0; i < numbers.length; i++) { %>
			<% 	out.println("<td>"); %>
			<% 	out.println(numbers[i]);%>
			<% 	out.println("</td>");%>
			<% } %>
		</tr>
	</table>
	
	<table>
		<tr>
			<% for (int i = 0; i < numbers.length; i++) { %>
			<td>
			<%= numbers[i] %>
			</td>
			<% } %>
		</tr>
	</table>

</body>
</html>
















