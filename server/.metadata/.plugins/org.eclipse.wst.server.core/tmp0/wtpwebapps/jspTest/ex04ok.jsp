<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	request.setCharacterEncoding("UTF-8");

	String txt1 = request.getParameter("txt1");
	
	String pass = request.getParameter("pass");
	
	String textArea = request.getParameter("txtArea");
	textArea = textArea.replace("\r\n", "<br>");
	
	String color = request.getParameter("color");
	
	String cb1 = request.getParameter("cb1");
	cb1=cb1==null?"no":cb1;
	
	String cb2 = request.getParameter("cb2");

	String cb3 = request.getParameter("cb3");
	String cb4 = request.getParameter("cb4");
	String cb5 = request.getParameter("cb5");
	
	String temp = "";
	temp+=cb3==null?"":cb3;
	temp+=cb4==null?"":cb4;
	temp+=cb5==null?"":cb5;
	
	String[] cheboxs = request.getParameterValues("cb6");
	
	String rd = request.getParameter("rd");

	String hd = request.getParameter("hd");
	
	String[] sel2 = request.getParameterValues("sel2");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@include file="/inc/asset.jsp" %>
<body>

	<div>
		<h1 class =  "page-header" >결과</h1>
			<table class="table table-bordered">
				<tr>
					<th>텍스트 박스</th>
					<td><%=txt1 %></td>
				</tr>
				<tr>
					<th>password</th>
					<td><%=pass %></td>
				</tr>
				<tr>
					<th>textArea</th>
					<td><%=textArea %></td>
				</tr>
				<tr>
					<th>color</th>
					<td style="background-color:<%=color %>"><%=color %></td>
				</tr>
				<tr>
					<th>checkBox</th>
					<td><%=cb1 %></td>
				</tr>
				<tr>
					<th>checkBox2</th>
					<td><%=cb2 %></td>
				</tr>
				<tr>
					<th>checkboxs</th>
					<td><%=temp %></td>
				</tr>
				<tr>
					<th>checkboxs</th>
					<td><%=Arrays.toString(cheboxs) %></td>
				</tr>
				<tr>
					<th>radio</th>
					<td><%=rd %></td>
				</tr>
				<tr>
					<th>hidden</th>
					<td><%=hd %></td>
				</tr>
				<tr>
					<th>sel2</th>
					<td><%=Arrays.toString(sel2) %></td>
				</tr>
				<tr>
					<th></th>
					<td></td>
				</tr>
				<tr>
					<th></th>
					<td></td>
				</tr>
				<tr>
					<th></th>
					<td></td>
				</tr>
				<tr>
					<th></th>
					<td></td>
				</tr>
				<tr>
					<th></th>
					<td></td>
				</tr>
				<tr>
					<th></th>
					<td></td>
				</tr>
				<tr>
					<th></th>
					<td></td>
				</tr>
				<tr>
					<th></th>
					<td></td>
				</tr>
				<tr>
					<th></th>
					<td></td>
				</tr>
				<tr>
					<th></th>
					<td></td>
				</tr>
				<tr>
					<th></th>
					<td></td>
				</tr>
			</table>
	</div>

</body>
</html>