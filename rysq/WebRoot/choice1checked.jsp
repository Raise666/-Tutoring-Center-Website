<%@ page language="java" import="java.util.*,java.sql.*" contentType="text/html; charset=utf-8"%>
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
    
    <title>My JSP 'choice1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>

 <body>
 	<% 
 	 request.setCharacterEncoding("UTF-8");
 	String kcid=request.getParameter("id");
 	  String sid=null;
 	  sid=(String)(session.getAttribute("getname"));
 	  String str="select studentname,studentsex from student where studentid='"+sid+"' ";  
 	  ResultSet rs=jdbc.executeQuery(str);   
 	  String studentid1=null;
   while(rs.next())
   { studentid1=rs.getString(1); }
 	   //选出课程号
 	   String s="insert into contract(stconfirm,courseid,sname) values('"+sid+"','"+kcid+"','"+studentid1+"')";
 	   int i=jdbc.executeUpdate(s);
 	   if(i==1)
 	   {out.println("<script language='javaScript'>alert('选择成功！');</script>");
 	      request.getRequestDispatcher("choice2.jsp").forward(request,response); }
 	      else{out.println("<script language='javaScript'>alert('选择失败！您已经选择过该课程');</script>");
 	      response.sendRedirect("Ccourse.jsp");}
 	   %>
  </body>
</html>
