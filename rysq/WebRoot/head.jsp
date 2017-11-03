<%@ page language="java" import="java.util.Date" import="java.sql.*" contentType="text/html; charset=utf-8" %>
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
    
    <title>My JSP 'head.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
*{margin:0;padding:0;}
#out  li{list-style:none;display:inline;word-spacing:5px;}
#out ul{margin-bottom；10px;}
#div1{float:left;}
#login-area{
float:right;
}
#main{width:1000px;}
#out{margin:0;padding:0;background-color:gray;height:80px;overflow:hidden;}
#div1  a{text-decoration:none;color:black;font-size:25px;}
#out a:hover{color:red;}
#main{overflow:hidden;margin-top:45px;}

</style>
  </head>
  
  <body>
    <div id="out"  align="center" >
  <div id="main">
  <div id="div1">
   <ul>
       <li><a href='Home.jsp'><img src='picture/zy.png' width='30' height='30'/></a></li>
        <li><a href="Ccourse.jsp">课程信息</a></li>
        <li><a href="teacher.jsp">教员库</a></li>
        <li><a href="message.jsp">留言</a></li>
        <li><a href="we.jsp">关于我们</a></li>
        </ul>
        </div>
      
   <div id="login-area">
   <ul>
   <li> <% 
        String limit=null;
   if((String) session.getAttribute("getname")!= null) {
					String name = (String) session.getAttribute("getname");
					String sql="select userlimit from user where userid='"+name+"'";
					ResultSet rs=jdbc.executeQuery(sql);
				while(rs.next()){limit=rs.getString(1);}
					if(limit.equals("teacher")){
					out.println("<a href='personal.jsp'><img src='picture/personal.png' width='35' height='35'/></a></li><li><a href='mymessage.jsp'><img src='picture/ld1.png' width=36px height=36px/></a></li>&nbsp;&nbsp;<li><a href='closeuser.jsp'><img  src='picture/tc.png' width=31px height=31px/></a>");
					}
					else{	out.println("<a href='personal_st.jsp'><img src='picture/personal.png' width='35' height='35'/></a></li><li><a href='mymessage_st.jsp'><img src='picture/ld1.png' width=36px height=36px/></a></li>&nbsp;&nbsp;<li><a href='closeuser.jsp'><img  src='picture/tc.png' width=31px height=31px/></a>");}
				}	
				else{
					out.println("<a href='login.jsp' style='color:black;font-size:25px;text-decoration:none;'>登录</a> <li><a href='signup.jsp' id='a6'style='color:black;font-size:25px;text-decoration:none;'>注册</a>");
					}
	     %></li>
  <!--  <li><a href="login.jsp"   id="a5"  target="_blank">登陆</a></li>--> 
   <!--  <li><a href="signup.jsp" id="a6">注册</a></li>-->
   </ul>     
   </div></div></div>
  </body>
</html>
