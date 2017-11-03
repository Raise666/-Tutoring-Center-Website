<%@ page language="java" import="java.util.*" import="java.sql.*" contentType="text/html; charset=utf-8" %>
<%@page import="com.DBBean.DBBean"%>
<jsp:useBean id="jdbc" class="com.DBBean.DBBean"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

   request.setCharacterEncoding("UTF-8");
   String name1=null,connnum=null;
   int rs;
   name1 = (String) session.getAttribute("getname");
   connnum=request.getParameter("num");
   String s="update contract set techeck='yes' where num='"+connnum+"'";
   rs=jdbc.executeUpdate(s);
   if(rs==1){
       out.println("<script language='javaScript'>alert('确认成功！');</script>");
       response.setHeader("refresh","0;url=mymessage.jsp");}                    
   jdbc.close();
%>
