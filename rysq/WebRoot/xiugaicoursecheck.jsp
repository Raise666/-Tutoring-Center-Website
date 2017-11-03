<%@ page language="java" import="java.util.*" import="java.sql.*" contentType="text/html; charset=utf-8" %>
<%@page import="com.DBBean.DBBean"%>
<jsp:useBean id="jdbc" class="com.DBBean.DBBean"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

        request.setCharacterEncoding("UTF-8");
        int rs1=0;
        String sqlstr1; 
 		String cid=request.getParameter("classid");
 		String cname=request.getParameter("classtype");
 		String ctime=request.getParameter("period");
 		String ctarget=request.getParameter("target");
 		String cprice=request.getParameter("price");	
 		if(cid!="" && cname!="" && ctime!="" && ctarget!="" && cprice!=""){
 		 sqlstr1="update class set classtype='"+cname+"',period='"+ctime+"',target='"+ctarget+"',price='"+cprice+"'where classid='"+cid+"'"; 
 	     rs1=jdbc.executeUpdate(sqlstr1);
 	      if(rs1==1)
 	   {out.println("<script language='javaScript'>alert('选择成功！');</script>");
 	    response.setHeader("refresh","0;url=changecour.jsp"); }
 	     }

 
%>

