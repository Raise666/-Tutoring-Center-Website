<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%@ include file="head.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'choice2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
*{margin:0px;padding:0px;}
a{text-decoration:none;}
a:link{color:blue;}
a:visited{color:blue;}
#div{width:800px;margin:20px auto;font-size:20px;}
#box{width:800px;border:1px solid #aaa;margin:0 auto;overflow:hidden;}

ul{list-style:none;}
#box ul li{height:auto;width:220px;border:1px solid #aaa;float:left;margin:5px;}
.a-img{width:167px;display:block;overflow:hidden;}
p a,p span{
display:block;line-height:23px;
padding-left:10px;
}
.bottom{height:30px;line-height:20px;text-align:center;background-color:#ccc;}
</style>
  </head>
  
  <body>

 <div id="div">请选择教员：</div>

 	<div id="box">
 	<div class="top"></div>
 	<ul>   <%  
 	String id2=request.getParameter("id"); 
 	  request.setCharacterEncoding("UTF-8");
 	 String sql="select tname,ttel,tsex,tschool,selfintroduce,teacher.tid from teacher,apply  where classid='"+id2+"' and apply.tid=teacher.tid and isapply='pass'";  
 	   ResultSet rs1=jdbc.executeQuery(sql); 
 	      while(rs1.next()){
 	String tname=rs1.getString(1);
    String ttel=rs1.getString(2);
    String tsex=rs1.getString(3);
    String tschool=rs1.getString(4);
    String selfintroduce=rs1.getString(5);
    String tid=rs1.getString(6);
 	out.println(" <li><div class='con'><p><span > 姓名:"+tname+"&nbsp;&nbsp;性别:"+tsex+"</span><span>电话:"+ttel+"</span><span>就读大学:"+tschool+"</span><span>自我介绍:</span><span><textarea rows='10' cols='25'>"+selfintroduce+"</textarea></span></p></div><div class='bottom'><a href='choice2checked.jsp?tid="+tid+"&id="+id2+"'> 选择</a></div></li>");}%>
 	
 	</ul>
 	</div>
  </body>
</html>
