<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.jdbc.DBUtill"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	Connection conn = null;
	ResultSet resultSet;
	
	conn=DBUtill.open();
	resultSet = conn.prepareStatement("select * from tbljava").executeQuery();
	
    
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@include file="../inc/asset.jsp" %>
<style>

</style>
</head>
<body>
	<% while(resultSet.next()){%>
			<div><%=resultSet.getString("id")%></div>
			<div><%=resultSet.getString("name")%></div>
			<div><%=resultSet.getInt("age")%></div>
			<div><%=resultSet.getString("regdate")%></div>
	<% } 
	conn.close();
	%>

<script>

</script>
</body>
</html>