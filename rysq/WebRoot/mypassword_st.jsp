<%@ page language="java" import="java.util.*" import="java.sql.*" contentType="text/html; charset=utf-8" %>
<%@ include file="head2.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'mypassword.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <style type="text/css">
  #content{width:700px;margin:0 auto;}
  </style>
   <script type="text/javascript" >
window.onload=function(){
var s=document.getElementsByTagName("a");
s[11].style.backgroundColor="white";
s[11].style.color="#000080";
};
</script>
  </head>
  <body>
    <div id="content">
  <form action="editpassword_st.jsp" method="post">
    <table align="center" border=0 CellSpacing=20px>
    <tr><td width="25%">请输入原密码：</td><td><input type="password" name="oldpwd"></td></tr>
    <tr><td>请输入新密码：</td><td><input type="password" name="newpwd" ></td></tr>
    <tr><td>请确认新密码：</td><td><input type="password" name="confirmpwd"></td></tr>  
    </table>
    <input type="submit"  value="修改" style="font-size:16px;margin-left:200px;">
    </form>
  </div>
  </body>
</html>
