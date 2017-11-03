<%@ page language="java" import="java.util.*,java.sql.*" contentType="text/html; charset=utf-8" %>
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
    
    <title>My JSP 'teach.jsp' starting page</title>
    
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
      String  limit=null;
        String userid= (String) session.getAttribute("getname");
        String sql="select userlimit from user where userid='"+userid+"'";
        ResultSet rs=jdbc.executeQuery(sql);
        while(rs.next()){limit=rs.getString(1);}
     if(userid== null) {
          String study="s";
          session.setAttribute("study",study);
		  out.println("<script language='javaScript'>alert('请先登录！');</script>");
		  response.setHeader("refresh","0;url=Ccourse.jsp");}
					else{
					 if(limit.equals("teacher"))
	{	request.getRequestDispatcher("teachchecked.jsp").forward(request,response);}
	else { out.println("<script language='javaScript'>alert('您无权选择教授的课程！');</script>");  response.setHeader("refresh","0;url=Ccourse.jsp");}}
	
	     %>
  </body>
</html>
