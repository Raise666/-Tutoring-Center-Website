<%@ page language="java" import="java.util.*" import="java.sql.*" import="com.DBBean.DBBean" pageEncoding="utf-8"%>

<%@ include file="head.jsp" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'homepage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">

a{text-decoration:none;color:black;}
.tab td{width:100px;text-align:center;}
table{border-collapse:collapse;}
.df  li{list-style:none;display:inline;line-height:35px;word-spacing:50px;background:white;}
.df li a:hover{color:teal;}
#box2{width:1000px;margin-left:250px;}
.df  li .select{background-color:black;color:white;}
#last{width:720px;margin:0 auto;height:35px;float:right;}
.a a:hover{color:navy;}
</style>
<script type="text/javascript" >
window.onload=function(){
var s=document.getElementsByTagName("a");
s[1].style.color="red";
};
function checknum(){
if(document.getElementById("a").value==null)
{return false;};}
</script>
</head>

  <body>
     <div id="box2">
<div  id="select1"> 
     <span style="font-size:25px">辅导对象：</span>
     <ul  class="df" style="display:inline">
            <li> <a href="Ccourse.jsp?target=小学 " >小学</a></li>
            <li> <a href=" Ccourse.jsp?target=初中">初中</a></li>
            <li> <a href="Ccourse.jsp?target=高中">高中</a></li>
             <li> <a href=#></a></li>
     </ul>
   </div>
    <div  id="select2">
     <span style="font-size:25px">课程类型：</span>
     <ul  class="df" style="display:inline">
            <li> <a href="Ccourse.jsp?name=数学" >数学</a></li>
            <li> <a href="Ccourse.jsp?name=英语" >英语</a></li>
            <li> <a href="Ccourse.jsp?name=物理" >物理</a></li>
             <li> <a href="Ccourse.jsp?name=兴趣课程" >兴趣课程</a></li>
     </ul>
   </div>
   <div id="content" class="content"> 
    <table class="tab" align="center" border="0" width="80%"  bgColor="#ff8080">
    <tr style="boder:0"><td>课程编号</td><td>课程名</td><td>学时</td><td>对象</td><td>价格</td><td></td></table>
   <table class="tab" align="center" border="1" width="80%"  bgColor="#ff8080"> <%
     request.setCharacterEncoding("UTF-8");
  String Target=request.getParameter("target");
  String Name=null;
  Name=request.getParameter("name");
  
 if(Target==null&&Name==null){
   String s="select classid,classtype,period,target,price from class";
   ResultSet rs=jdbc.executeQuery(s);
    while(rs.next()){
    String id=rs.getString(1);
    String name=rs.getString(2);
    float period=rs.getFloat(3);
    String target=rs.getString(4);
    float price=rs.getFloat(5);
    out.println("<tr><td>"+id+"</td><td>"+name+"</td><td>"+period+"</td><td>"+target+"</td><td>"+price+"</td><td class='a'><a  href='study.jsp?id="+id+"' >我要学</a><a href='teach.jsp?id="+id+"'>我要教</a></td></tr>");
}}
  else
  {
   if(Target!=null)
    {
    
    String ss="select classid,classtype,period,target,price from class where target='"+Target+"'";
    ResultSet rs1=jdbc.executeQuery(ss);
    while(rs1.next()){
    String id=rs1.getString(1);
    String name=rs1.getString(2);
    float period=rs1.getFloat(3);
    String target=rs1.getString(4);
    float price=rs1.getFloat(5);
    out.println("<tr><td>"+id+"</td><td>"+name+"</td><td>"+period+"</td><td>"+target+"</td><td>"+price+"</td><td class='a'><a href='study.jsp?id="+id+"' >我要学</a><a href='teach.jsp?id="+id+"'>我要教</a></td></tr>");
    }}
   else 
    { String sss="select classid,classtype,period,target,price from class where classtype='"+Name+"'";
    ResultSet rs2=jdbc.executeQuery(sss);
    while(rs2.next()){
    String id=rs2.getString(1);
    String name=rs2.getString(2);
    float period=rs2.getFloat(3);
    String target=rs2.getString(4);
    float price=rs2.getFloat(5);
    out.println("<tr><td>"+id+"</td><td>"+name+"</td><td>"+period+"</td><td>"+target+"</td><td>"+price+"</td><td class='a'><a href='study.jsp?id="+id+"'>我要学</a><a href='teach.jsp?id="+id+"'>我要教</a></td></tr>");
    }}}
   %>       
    </table>
   </div></div>
  </body>
</html>
