<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'study.jsp' starting page</title>
    
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
  
    if((String) session.getAttribute("getname")== null) {
          String study="s";
          session.setAttribute("study",study);
		  out.println("<script language='javaScript'>alert('请先登录！');</script>");
		  response.setHeader("refresh","0;url=Ccourse.jsp");}
     else{      
          request.getRequestDispatcher("choice1.jsp").forward(request,response);	 
		  }
	     %>
	 
  </body>
</html>
