<%@ page language="java" import="java.util.*" import="java.sql.*" contentType="text/html; charset=utf-8" %>
<%@page import="com.DBBean.DBBean"%>
<jsp:useBean id="jdbc" class="com.DBBean.DBBean"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

 <%
    request.setCharacterEncoding("UTF-8");
     String userid=request.getParameter("userid");
       String sql="update teacher set state='通过' where  tid='"+userid+"'";
       String s="update apply set isapply='pass' where tid='"+userid+"'";
       int j=jdbc.executeUpdate(s);
       int i=jdbc.executeUpdate(sql);
       if(i==1){out.println("<script language='javascript'>alert('通过成功 ')</script>");
       response.setHeader("refresh","0;url=admin.jsp");}
  %>