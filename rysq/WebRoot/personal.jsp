<%@ page language="java" import="java.util.*" import="java.sql.*" contentType="text/html; charset=utf-8" %>
<%@ include file="head3.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'personalinformation.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" >
window.onload=function(){
var s=document.getElementsByTagName("a");
s[8].style.backgroundColor="white";
s[8].style.color="#000080";
};
</script>
 </head>
  
  <body>
  <%
    request.setCharacterEncoding("UTF-8");
    String name1=null;
    String tid=null,tidcard=null,tname=null,ttel=null,tsex=null,state=null,tschool=null,self=null;
    name1 = (String) session.getAttribute("getname");
    String sql="select * from teacher where tid='"+name1+"'";
    ResultSet rs=jdbc.executeQuery(sql);
    while(rs.next()){
    tid=rs.getString(1);
    tidcard=rs.getString(2);
    tname=rs.getString(3);
    ttel=rs.getString(4);
    tsex=rs.getString(5);
    state=rs.getString(6);
    tschool=rs.getString(7);
    self=rs.getString(8);
    }
    rs.close();
     %>
 
  <div id="content">
  <form action="edit.jsp" method="post">
    <table align="center" width="50%" border=0 CellSpacing=20px>
    <tr><td >用户名：</td><td><input type="text" value=<%=tid %> name="userid" disabled></td></tr>
    <tr><td>姓名：</td><td><input type="text" value=<%=tname %> name="username" ></td></tr>
    <tr><td>身份证号：</td><td><input type="text" value=<%=tidcard %> name="useridcard" disabled></td></tr>
    <tr><td>电话号码：</td><td><input type="text" value=<%=ttel %> name="usertel" ></td></tr>
    <tr><td>学校：</td><td><input type="text" value=<%=tschool %> name="userschool" ></td></tr>
     <tr><td>个人介绍：</td><td><input type="text" value=<%=self%> name="self" ></td></tr>
    <tr><td>审核状态：</td><td><input type="text" value=<%=state %> name="userstate" disabled></td></tr> 
    
    </table>
    <input type="submit"  value="修改" style="font-size:16px;margin-left:220px;">
    </form>
  </div>
 
  </body>
</html>
