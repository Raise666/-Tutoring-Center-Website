<%@ page language="java" import="java.util.*" import="java.sql.*" contentType="text/html; charset=utf-8" %>
<%@page import="com.DBBean.DBBean"%>
<jsp:useBean id="jdbc" class="com.DBBean.DBBean"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setCharacterEncoding("UTF-8");
        String sql; 
 		String id=request.getParameter("id");
 		 sql="update notice set state='N' where nid='"+id+"'"; 
 	     int i=jdbc.executeUpdate(sql);
 	     if(i==1)
 	     {out.println("<script language='javascript'>alert('删除成功 ')</script>");
 	         response.setHeader("refresh","0;url=allnotice.jsp"); 
 	      }
 	     
%>

