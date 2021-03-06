<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.jdbc.DBUtill"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Connection conn;
	conn = DBUtill.open();
	ResultSet rs = conn.prepareStatement("select * from tblAddress order by seq desc").executeQuery();
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
		<h1 class="page-header">주소록<small>리스트</small></h1>
		
		<table class="table table-bordered horizontal">
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>나이</th>
				<th>연락처</th>
				<th>주소</th>
				<th></th>
			</tr>
			<%while(rs.next()){%>
				<tr>
					<td><%= rs.getInt("seq")%></td>
					<td><%= rs.getString("name")%></td>
					<td><%= rs.getInt("age")%></td>
					<td><%= rs.getString("tel")%></td>
					<td><%= rs.getString("address")%></td>
					 <td>
		               <span class="glyphicon glyphicon-edit" title="수정하기" 
		               	data-toggle="tooltip" data-placement="top" onclick="location.href='/jsp/address/edit.jsp?seq=<%= rs.getInt("seq")%>'"></span>
		               <span class="glyphicon glyphicon-remove-sign" title="삭제하기"
		                data-toggle="tooltip" data-placement="top"onclick="location.href='/jsp/address/del.jsp?seq=<%= rs.getInt("seq")%>'"></span>
		            </td>
				</tr>
			<%}%>
		</table>
		<div class="btns">
         <button type="button" class="btn btn-primary" onclick="location.href='/jsp/address/add.jsp';">
            <span class="glyphicon glyphicon-pencil"></span>
            추가하기               
         </button>
      </div>

	</div>

<script>
	$('[data-toggle="tooltip"]').tooltip();
</script>
</body>
</html>

<%
	conn.close();
%>