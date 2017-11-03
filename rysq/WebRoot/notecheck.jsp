<%@ page language="java" import="java.util.Date,java.text.*,java.sql.*" pageEncoding="utf-8"%>
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
  <%request.setCharacterEncoding("UTF-8");
 String zhuti=request.getParameter("zhuti");
  String message=request.getParameter("message");
  String admin=(String)session.getAttribute("getname");
   Date date = new Date();
  SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
  String  date1=sdf.format(date);
  String sql="insert into notice(bt,message,date,author)  values('"+zhuti+"','"+message+"','"+date1+"','"+admin+"')";
  int  i=jdbc.executeUpdate(sql);
  if(i==1)
  {out.println("<script language='javascript'>alert('公告发布成功 ')</script>");
       response.setHeader("refresh","0;url=allnotice.jsp");}
 
%>
  </body>
</html>

