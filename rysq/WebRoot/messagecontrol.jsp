<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
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
    
    <title>My JSP 'messagecontrol.jsp' starting page</title>
    
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
      String userid=(String)session.getAttribute("getname");
      String zhuti=request.getParameter("zhuti");
 	  String email=request.getParameter("email");
 	  String message=request.getParameter("message");   
 	
 	  String s="insert into messagecon(userid,zhuti,email,message) values('"+userid+"','"+zhuti+"','"+email+"','"+message+"')";
 	   int i=jdbc.executeUpdate(s);
 	
 	   if(i==1)
 	   {out.println("<script language='javaScript'>alert('留言成功！');</script>");
 	         response.setHeader("refresh","0;url=message.jsp"); }
 	        else{
 	        out.println("<script language='javaScript'>alert('留言失败！');</script>");
 	        }
  
  %>
  
  </body>
</html>
