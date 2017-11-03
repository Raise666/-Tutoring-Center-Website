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
</style>
<script type="text/javascript" >
window.onload=function(){
var s=document.getElementsByTagName("a");
s[0].style.color="red";
};
function checknum(){
if(document.getElementById("a").value==null)
{return false;};}
</script>
</head>

  <body>
     <div id="box2">
<div  id="select1"> 
     <span style="font-size:25px">辅导对象：</span><!-- 这一整块可以设置背景颜色 -->
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
   <table  class="tab" align="center" border="1" width="80%"  bgColor="#ff8080"> <%
     request.setCharacterEncoding("UTF-8");
  String Target=request.getParameter("target");
  String Name=null;
  Name=request.getParameter("name");
  //分页
    int pages=0;            //待显示页面
    int count=0;            //总条数
    int totalpages=0;        //总页数
    int limit1=10;            //每页显示记录条数    
    //计算记录总数的第二种办法：使用mysql的聚集函数count(*)
    ResultSet sqlRst = jdbc.executeQuery("select count(*) from teacher");
    if(sqlRst.next()){
        count = sqlRst.getInt(1);//结果为count(*)表，只有一列。这里通过列的下标索引（1）来获取值
    }    
    //由记录总数除以每页记录数得出总页数
    totalpages = (int)Math.ceil(count/(limit*1.0));
    //获取跳页时传进来的当前页面参数
//     String strPage=null;
   // if(request.getParameter("pages")!=null)
   String strPage = request.getParameter("pages");
    //判断当前页面参数的合法性并处理非法页号（为空则显示第一页，小于0则显示第一页，大于总页数则显示最后一页）
    if (strPage == null) { 
        pages = 1;
    } else {
        try{
            pages = java.lang.Integer.parseInt(strPage);
        }catch(Exception e){
            pages = 1;
        }
        if (pages < 1){
            pages = 1;
        }     
        if (pages > totalpages){
            pages = totalpages;
        }                            
    }
    if(Target==null&&Name==null){
    //由(pages-1)*limit算出当前页面第一条记录，由limit查询limit条记录。则得出当前页面的记录
   ResultSet rs= jdbc.executeQuery("select classid,classtype,period,target,price from class  limit "+(pages-1)*12+",12");
 // if(Target==null&&Name==null){
    //String s="select classid,classtype,period,target,price from class";
   // ResultSet rs=jdbc.executeQuery(s);
    while(rs.next()){
    String id=rs.getString(1);
    String name=rs.getString(2);
    float period=rs.getFloat(3);
    String target=rs.getString(4);
    float price=rs.getFloat(5);
    out.println("<tr><td>"+id+"</td><td>"+name+"</td><td>"+period+"</td><td>"+target+"</td><td>"+price+"</td><td><a href='study.jsp?id="+id+"'>我要学</a><a href='teach.jsp?id="+id+"'>我要教</a></td></tr>");
  }}
  else
  {
   if(Target!=null)//&&Name==null)
    {
      ResultSet rs1= jdbc.executeQuery("select  classid,classtype,period,target,price from class where target='"+Target+"'  limit "+(pages-1)*12+",12");
   // String ss="select classid,classtype,period,target,price from class where target='"+Target+"'";
    //ResultSet rs1=jdbc.executeQuery(ss);
    while(rs1.next()){
    String id=rs1.getString(1);
    String name=rs1.getString(2);
    float period=rs1.getFloat(3);
    String target=rs1.getString(4);
    float price=rs1.getFloat(5);
    out.println("<tr><td>"+id+"</td><td>"+name+"</td><td>"+period+"</td><td>"+target+"</td><td>"+price+"</td><td><a href='study.jsp?id="+id+"'>我要学</a><a href='teach.jsp?id="+id+"'>我要教</a></td></tr>");
    }}
   else //(Target!=null&&Name!=null)
    { String sss="select classid,classtype,period,target,price from class where classtype='"+Name+"'";
    ResultSet rs2=jdbc.executeQuery(sss);
    while(rs2.next()){
    String id=rs2.getString(1);
    String name=rs2.getString(2);
    float period=rs2.getFloat(3);
    String target=rs2.getString(4);
    float price=rs2.getFloat(5);
    out.println("<tr><td>"+id+"</td><td>"+name+"</td><td>"+period+"</td><td>"+target+"</td><td>"+price+"</td><td><a href='study.jsp?id="+id+"'>我要学</a><a href='teach.jsp?id="+id+"'>我要教</a></td></tr>");
    }}}

   // jdbc.close();
   %>       
    </table>
   </div></div>
   <div id="last">
  <form name="f1" method="POST" action="teacher.jsp" onSubmit="return checknum()">
            <table border="0" align="center" >
                <tr>
                    <td>第<%=pages%>页 共<%=totalpages%>页 <a href="Ccourse.jsp?pages=1">首页</a></td>
                    <td><a href="Ccourse.jsp?pages=<%=(pages<1)?pages:(pages-1) %>"> 上一页</a></td>
                    <td><a href="Ccourse.jsp?pages=<%=(pages>=totalpages)?totalpages:(pages+1)%>"> 下一页</a></td>
                    <td><a href="Ccourse.jsp?pages=<%=totalpages%>">最后一页</a></td>
                    <td>转到第:<input type="text"  id="a" name="pages" size="8"/>页<input type="submit" value="GO" name="cndok"/></td>
                </tr>
            </table> 
 </form></div>
  </body>
</html>

