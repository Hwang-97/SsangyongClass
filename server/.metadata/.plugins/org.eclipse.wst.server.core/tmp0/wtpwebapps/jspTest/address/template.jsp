<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.jdbc.DBUtill"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	Connection conn;
	
	conn = DBUtill.open();
	
	ResultSet rs = conn.prepareStatement("select * from tblAddress").executeQuery();

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@include file="/inc/asset.jsp" %>
<%@include file="/address/inc/asset.jsp" %>
<style>

</style>
</head>
<body>
	<div class="container">
		<h1 class="page-header">주소록<small>Home</small></h1>
		
		<table>
			<tr>
			<%while(rs.next()){
				
				
			}%>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			<tr>	
		</table>
		
		
	</div>

<script>

</script>
</body>
</html>

<%
	
%>