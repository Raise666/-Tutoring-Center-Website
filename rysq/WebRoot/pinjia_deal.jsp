<%@ page language="java" import="java.util.Date,java.text.*" import="java.sql.*" contentType="text/html; charset=utf-8" %>
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
    
    <title>My JSP 'pinjia_deal.jsp' starting page</title>
    
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
                     String name1=null;
                     int rs;
                     name1 = (String) session.getAttribute("getname");
                     String content=request.getParameter("pinjia");
                     String id=request.getParameter("id");
                     String tid=request.getParameter("tid");
                      Date date = new Date();
				     SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
				     String commdate=sdf.format(date);
				     String s="insert into comment(studentid,classid,teacherid,stcommdate,stcomm) values('"+name1+"','"+id+"','"+tid+"','"+commdate+"','"+content+"')";
                     rs=jdbc.executeUpdate(s);
                     if(rs==1){
                     out.println("<script language='javaScript'>alert('评价成功！');</script>");
                     response.setHeader("refresh","0;url=mycourse_st.jsp");}              
                     jdbc.close();
				    %>
  </body>
</html>
