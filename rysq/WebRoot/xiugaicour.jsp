<%@ page language="java" import="java.util.*" import="java.sql.*" contentType="text/html; charset=utf-8" %>
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
    
    <title>My JSP 'admin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <style type="text/css">
    #tuichu{float:right;padding-top:15px;padding-right:20px;}
    #caidan{float:left;padding-top:40px;width:230px;height:800px;background:#000080;overflow:hidden;}
    *{margin:0;padding:0;font-size:18px;}
    #caidan ul{list-style:none;width:100px;}
    table{border-collapse:collapse;}
     td{width:100px;text-align:center;line-height:50px;}
    #atabhead td{background-color: #C4D3F0;}
    #caidan a:hover{background-color:#FFFFFF;color:#000080;}
   #caidan  a{text-decoration:none;display:block;height:70px;line-height:70px;width:230px;margin-buttom:1px;text-indent:60px;font-size:22px;color:#FFFFFF;}
    .pic1{border:0;background:#000080;height:130px;font-size:40px;color:white;padding-left:20px;}
    #content{padding-top:40px;padding-leftt:5px;}
    #autab a{color:black;}
    a{text-decoration:none;}
#last a:link{color:gray;}
#last a:visited{color:gray;}
#tj{width:50px;margin-left:20px;}
p{display:inline;margin-left:520px;}
#last p a:link{color:red;}
    </style>
 </head>
  
  <body>
  

  <div class="pic1"><div id="tuichu"><form action="closeuser.jsp" method="post">
    <input type="submit" value="退出账户" name="close" style="border:#ccc 2px solid; background-color:#FFFFFF; font-size:12px;padding-top:3px;cursor:pointer" />
    </form></div><br/>若月抒情家教网<br/>
  <span style="font-size:30px;">RUO YUE SHU QING</span>
  <hr/>
  </div>
 
  <div id="caidan"><ul>
       <li><a href="admin.jsp">教员审核</a></li>
       <li><a href="changecour.jsp"  style="background-color:#FFFFFF;color:#000080;">修改课程</a></li>
       <li><a href="aaprotocol.jsp">家教协议</a></li>
         <li><a href="managemess.jsp">留言管理</a></li>
       <li><a href="note.jsp">发布公告</a></li>
    </ul><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
  </div>
     <%
    request.setCharacterEncoding("UTF-8");
    String classid=null;String classtype=null;String period=null;String target=null;String price=null;
    String tid=request.getParameter("tid");
    String sql="select * from class where classid='"+tid+"'";
    ResultSet rs=jdbc.executeQuery(sql);
    while(rs.next()){
    classid=rs.getString(1);
    classtype=rs.getString(2);
    period=rs.getString(3);
    target=rs.getString(4);
    price=rs.getString(5);
    }
%>    
  <div id="content">
 <form action="xiugaicoursecheck.jsp" method="post">
   <table align="center" width="30%" border=0 CellSpacing=20px>
    <tr><td >课程号：</td><td><input type="text" value=<%=classid %> name="classid"></td></tr>
    <tr><td>课程名：</td><td><input type="text" value=<%=classtype %> name="classtype"></td></tr>
    <tr><td>学时：</td><td><input type="text" value=<%=period%> name="period"></td></tr>
    <tr><td>对象：</td><td><input type="text" value=<%=target%> name="target"></td></tr>
    <tr><td>价格：</td><td><input type="text" value=<%=price%> name="price"></td></tr>
    <tr><th colspan="2"><input type="submit" value="修改"></th></tr>
 
    </table>
    </form>

 
</div>  
  </body>
</html>