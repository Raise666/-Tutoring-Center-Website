<%@ page language="java" import="java.util.*" import="java.sql.*" contentType="text/html; charset=utf-8" %>
<%@page import="com.DBBean.DBBean"%>
<jsp:useBean id="jdbc" class="com.DBBean.DBBean"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

        request.setCharacterEncoding("UTF-8");
        String sqlstr1; 
 		String cid=request.getParameter("tid");
 	
 		 sqlstr1="delete  from class where classid='"+cid+"'"; 
 	     int i=jdbc.executeUpdate(sqlstr1);
 	     if(i==1)
 	     {out.println("<script language='javascript'>alert('删除成功 ')</script>");
 	         response.setHeader("refresh","0;url=changecour.jsp"); 
 	      }
 	     

 
%>
