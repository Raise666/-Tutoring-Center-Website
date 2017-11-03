<%@ page language="java" import="java.sql.*" contentType="text/html; charset=utf-8"%>
<%@page import="com.DBBean.DBBean"%>
<jsp:useBean id="jdbc" class="com.DBBean.DBBean"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'display.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <style type="text/css">
	*{margin:0 auto;padding:0;}
	.pic1{border:0;background:gray;height:120px;font-size:45px;color:white;padding-left:30px;padding-top:25px;}
    img {border:0;margin:0;padding:0;}
    th{background:#eee;}
	</style>
  </head>
  
  <body>
  <div class="pic1">评价内容</div>
  <br/>
  <table align="center" border=1px width=1000px>
  <tr>
  <th width=120px>课程编号</th><th width=120px>课程名</th><th height=50px>评价信息</th></tr>
  <% 
     request.setCharacterEncoding("utf-8");
     String name1=null;
     name1 = (String) session.getAttribute("getname");
     String classid=request.getParameter("classid");
     String sid=request.getParameter("sid");
     String sql="select class.classid,classtype,stcomm from comment,class where class.classid=comment.classid and teacherid='"+name1+"' and studentid='"+sid+"'";
     ResultSet rs=jdbc.executeQuery(sql);
     while(rs.next()){  
       String id=rs.getString(1);
       String cname=rs.getString(2);                     
       String stcomm=rs.getString(3);            
       out.println("<tr align='center' height=50px><td>"+id+"</td><td>"+cname+"</td><td>"+stcomm+"</td></tr>");
       }
       jdbc.close();
       %>
  </table>    
  </body>
</html>
