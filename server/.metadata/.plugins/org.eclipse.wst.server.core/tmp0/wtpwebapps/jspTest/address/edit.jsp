<%@page import="com.test.jdbc.DBUtill"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String seq = request.getParameter("seq");

	Connection conn;
	ResultSet rs;
	
	conn = DBUtill.open();
	
	rs = conn.prepareStatement("select * from tblAddress where seq = "+seq).executeQuery();

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
		<h1 class="page-header">주소록 <small> 추가하기</small></h1>
		
		<form method="POST" action="/jsp/address/editok.jsp">
		
			<table class="table table-bordered vertical">
			<%rs.next(); %>
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" class="form-control short" value="<%=rs.getString("name") %>" required></td>
				</tr>
				<tr>
					<th>나이</th>
					<td><input type="number" name="age" class="form-control short" value=<%=rs.getInt("age") %>  required></td>
				</tr>
				<tr>
					<th>연락처</th>
					<td><input type="tel" name="tel" class="form-control middle" value="<%=rs.getString("tel") %>"  required></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input type="text" name="address" class="form-control middle" value="<%=rs.getString("address") %>"  required></td>
				</tr>
					
			</table>
			<div class="btns">
				<button type="button" class="btn btn-default"  onclick="location.href='/jsp/address/list.jsp';">
					<span class="glyphicon glyphicon-chevron-left"></span>
					돌아가기					
				</button>
				<button type="submit" class="btn btn-primary">
					<span class="glyphicon glyphicon-pencil"></span>
					수정하기					
				</button>
			</div>
			
			<input type="hidden" name="seq" value="<%=seq%>">
		
		</form>
		
		
	</div>

<script>

</script>
</body>
</html>

<%
	rs.close();
	conn.close();
%>