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
    
    <title>My JSP 'teachchecked.jsp' starting page</title>
    
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
    	String kcid=request.getParameter("id"); 
    		  String sid=null;
 	      sid=(String)(session.getAttribute("getname"));
 	      if(kcid!=null&sid!=null)
 	      { String ss="insert into apply(classid,tid) values('"+kcid+"','"+sid+"')";
 	   int i=jdbc.executeUpdate(ss);
 	   if(i==1)
 	   {out.println("<script language='javaScript'>alert('选择成功！');</script>");} 
 	   else{out.println("<script language='javaScript'>alert('您已选择过该课程！2s后自动跳转');</script>");}
 	   }%>
 	   <% 	String kcid1=request.getParameter("id");    
 	    String s="select classid,classtype,period,target,price from class where classid='"+kcid1+"'";
     ResultSet rs=jdbc.executeQuery(s);
     while(rs.next()){
     String id=rs.getString(1);
     String name=rs.getString(2);
    float period=rs.getFloat(3);
    String target=rs.getString(4);
    float price=rs.getFloat(5);
    out.println("<div>您选择任教的课程是:课程编号"+id+"&nbsp;&nbsp;"+target+""+name+"&nbsp;&nbsp;学时:"+period+"&nbsp;&nbsp;&nbsp;"+price+"元</div>");
     response.setHeader("refresh","2;url=Ccourse.jsp");}
	%>
  </body>
</html>
