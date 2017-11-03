<%@ page language="java" import="java.util.*" import="java.sql.*" import="java.text.*" contentType="text/html; charset=utf-8" %>
<%@page import="com.DBBean.DBBean"%>
<jsp:useBean id="jdbc" class="com.DBBean.DBBean"></jsp:useBean>

<%
        String path = request.getContextPath();
        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
        String date=new SimpleDateFormat("yyyy-MM-dd HH:mm").format(Calendar.getInstance().getTime());
        request.setCharacterEncoding("UTF-8");
        String a=(String)session.getAttribute("getname");
        String sqlstr1; 
 		String cid=request.getParameter("tid"); 		
 	   // sqlstr1="insert into contract(admin,date) values('"+a+"','"+date+"')where num='"+cid+"'";
 	    sqlstr1="update contract  set admin='"+a+"',date='"+date+"'  where num='"+cid+"'";
 	     int i=jdbc.executeUpdate(sqlstr1);
 	     if(i==1)
 	     {out.println("<script language='javascript'>alert('协议生成 ')</script>");response.setHeader("refresh","0;url=aaprotocol.jsp");
 	      }
%>
