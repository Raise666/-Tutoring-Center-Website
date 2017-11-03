<%@ page language="java" import="java.util.*" import="java.sql.*" contentType="text/html; charset=utf-8" %>
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
    
    <title>My JSP 'respond1.jsp' starting page</title>
    
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
        String sqlstr1;
        int i;      
 		String cid=request.getParameter("tid");
 	    String adreply=request.getParameter("message");
 	    sqlstr1="update messagecon set reply='"+adreply+"'where idmessagecon='"+cid+"'"; 
 	    i=jdbc.executeUpdate(sqlstr1); 
 	     if(i==1)
 	     {out.println("<script language='javascript'>alert('回复成功 ')</script>"); response.setHeader("refresh","0;url=managemess.jsp");
 	      }
  %>
  </body>
</html>
