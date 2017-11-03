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
  #content{padding-top:40px;width:500px;margin:0 auto;}
   #caidan{float:left;padding-top:40px;margin-left:150px;width:230px;height:800px;background:RosyBrown;overflow:hidden;}
    *{margin:0;padding:0;font-size:18px;}
    #caidan ul{list-style:none;width:100px;}
     #caidan a:hover{background-color:#FFFFFF;color:#000080;}
   #caidan  a{text-decoration:none;display:block;height:70px;line-height:70px;width:230px;margin-buttom:1px;text-indent:60px;font-size:22px;color:#FFFFFF;}
  </style>
  </head>
  
  <body>
    <%
    request.setCharacterEncoding("UTF-8");
    String name1=null;
    String sid=null,sname=null,stel=null,sage=null,sadd=null;
    name1=(String)session.getAttribute("getname");
    String sql="select studentid,studentname,studenttel,studentage,studentadd from student where studentid='"+name1+"'";
    ResultSet rs=jdbc.executeQuery(sql);
    while(rs.next()){
    sid=rs.getString(1);
    sname=rs.getString(2);
    stel=rs.getString(3);
    sage=rs.getString(4);
    sadd=rs.getString(5);
    }
    rs.close();
     %>
      <div id="caidan">
      <ul>
       <li><a href="personal_st.jsp" style="background-color:#FFFFFF;color:#000080;">我的信息</a></li>
       <li><a href="mycourse_st.jsp">我的课程</a></li>
       <li><a href="mymessage_st.jsp">我的消息</a></li>
       <li><a href="mypassword_st.jsp">我的密码</a></li>
    </ul><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
  </div>
  <div id="content">
  <form action="edit_st.jsp" method="post">
    <table  width="80%" border=0 CellSpacing=20px>
    <tr><td >用户名：</td><td><input type="text" value=<%=sid %> name="userid" disabled></td></tr>
    <tr><td>姓    名：</td><td><input type="text" value=<%=sname %> name="username" ></td></tr>
    <tr><td>年    龄：</td><td><input type="text" value=<%=sage %> name="userage" ></td></tr>
    <tr><td>电话号码：</td><td><input type="text" value=<%=stel %> name="usertel" ></td></tr>   
    <tr><td>家庭地址：</td><td><input type="text" value=<%=sadd %> name="useradd" ></td></tr>   
    </table>
    <input type="submit"  value="修改" style="font-size:16px;margin-left:320px;">
    </form>
  </div>
  </body>
</html>
