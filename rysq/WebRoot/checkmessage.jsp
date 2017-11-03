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
    
    <title>My JSP 'checkmessage.jsp' starting page</title>
    
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
    #caidan{float:left;padding-top:40px;border:0;background:#000080;overflow:hidden;}
    *{margin:0;padding:0;font-size:18px;}
    ul{list-style:none;width:100px;}
    #autab{width: 800px;padding-left:10px;}
    #autab tr td{border: #ccc 1px solid;padding: 4px 8px 4px 8px;padding-left:10px;}
    #atabhead td{background-color: #C4D3F0;}

   
    
    a:hover{background-color:#FFFFFF;color:#000080;}
    a{text-decoration:none;display:block;height:70px;line-height:70px;width:230px;margin-buttom:1px;text-indent:60px;font-size:22px;color:#FFFFFF;}
    .pic1{border:0;background:#000080;height:130px;font-size:40px;color:white;padding-left:20px;}
    #content{padding-top:40px;}
    #autab a{color:black;}
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
       <li><a href="admin.jsp" style="background-color:#FFFFFF;color:#000080;">教员审核</a></li>
       <li><a href="changecourses.jsp">修改课程</a></li>
       <li><a href="aprotocol.jsp">家教协议</a></li>
       <li><a href="note.jsp">发布公告</a></li>
    </ul><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
  </div>
  <div id="content">
    <table id="autab" >
    <tr align="center" id="atabhead">
    <td class="mod01">留言编号</td>
    <td>用户名称</td>
    <td>课程编号</td>
    <td>用户留言</td>
    <td>回复内容</td>
    <td>操作1</td>
    <td>操作2</td>
    </tr>
    <%
    request.setCharacterEncoding("UTF-8");
    String  commid=null;
    String studentid=null;
    String classid=null;
    String stcomm=null;
    String reply=null;
    ResultSet rs;
    String sql="select commid,studentid,classid,stcomm,reply from comment";
    rs=jdbc.executeQuery(sql);
    while(rs.next()){
    commid=rs.getString(1);
    studentid=rs.getString(2);
    classid=rs.getString(3);
    stcomm=rs.getString(4);
    reply=rs.getString(5);
    out.println("<tr><td>"+commid+"</td><td>"+studentid+"</td><td>"+classid+"</td><td>"+stcomm+"</td><td>"+reply+"</td><td><a href='deletecomm.jsp?tid="+commid+"'>删除</a></td><td><a href='respond.jsp?tid="+commid+"'>回复</a></td></tr>");
    }
    %>

</table>          
  </div>         
  </body>
</html>
