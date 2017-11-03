<%@ page language="java" import="java.util.*" import="java.sql.*" contentType="text/html; charset=utf-8" %>
<%@ include file="head.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'personal_st.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <style type="text/css">
  
   #caidan{float:left;padding-top:40px;margin-left:150px;width:230px;height:800px;background:RosyBrown;overflow:hidden;}
    *{margin:0;padding:0;font-size:18px;}
    #caidan ul{list-style:none;width:100px;}
     #caidan a:hover{background-color:#FFFFFF;color:#000080;}
   #caidan  a{text-decoration:none;display:block;height:70px;line-height:70px;width:230px;margin-buttom:1px;text-indent:60px;font-size:22px;color:#FFFFFF;}
  </style>
  </head>
  
  <body>
      <div id="caidan">
      <ul>
       <li><a href="personal.jsp" >我的信息</a></li>
       <li><a href="mycourse3.jsp">我的课程</a></li>
       <li><a href="mymessage.jsp">我的消息</a></li>
       <li><a href="mypassword.jsp">我的密码</a></li>
    </ul><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
  </div>
  </body></html>