<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@include file="/inc/asset.jsp" %>
<style>

</style>
</head>
<body>

	<div class = "container" >
		<h1 class="page-header">로그인</h1>
		
		<table class="table table-bordered" style="width: 200px">
         <tr>
            <th>아이디</th>
            <td><input type="text" id="txtid" class="form-control"></td>
         </tr>
         <tr>
            <th>암호</th>
            <td><input type="password" id="txtpw" class="form-control"></td>
         </tr>
      </table>
      <label><input type="checkbox" id="cb"> 아이디 기억하기</label>
      <input type="button" value="로그인" class="btn btn-default" id="btn">

	</div>

<script>
	$("#btn").click(()=>{
		if($("#cb").prop('checked')){
			
			setCookie('txtid', $('#txtid').val(),365);
			
		}
	});
	
	if(getCookie('txtid')!=''){
		$("#txtid").val(getCookie('txtid'));
		$("#db").prop('checked',true);
	}
</script>
</body>
</html>