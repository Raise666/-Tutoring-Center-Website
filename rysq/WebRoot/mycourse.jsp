<%@ page language="java" import="java.util.*" import="java.sql.*" contentType="text/html; charset=utf-8" %>
<%@ include file="head3.jsp" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'mycourse.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	#content{padding-top:40px;width:200px;margin:0 auto;}
    *{margin:0;padding:0;list-style:none;}
 .notice-tit{height:37px;
            position:relative;
            background:#F7F7F7;}

.notice-tit ul{position:absolute;
               width:1001px;
              }

.notice-tit li{float:left;
               width:280px;
               height:36px;
               line-height:36px;
               text-align:center;
               overflow:hidden;
               background:#FFF;
               padding:0 1px;
               background:#F7F7F7;
               border-bottom:1px solid #eee;}

.notice-tit li.select{background:#FFF;
                      border-bottom-color:#FFF;
                      border-left:1px solid #eee;
                      border-right:1px solid #eee;
                      padding:0;
                      font-weight:bolder;}

.notice-tit  li a:link,.notice li a:visited{text-decoration:none;color:#000;}

.notice li a:hover{color:#F90;}
table  td th{font-size:20px;width:80px;}
  </style> 
  <script type="text/javascript" >
window.onload=function(){
var s=document.getElementsByTagName("a");
s[9].style.backgroundColor="white";
s[9].style.color="#000080";
};
</script>
 </head>
  
  <body>
<div id="content">
       <div id="notice-tit" class="notice-tit">
		  <ul>
		  	<li >
		  		<a href="mycourse3.jsp"style="font-size:25px;" >我的教授课程</a>
		  	</li>
		  
		  	<li class="select">
		  		<a href="mycourse.jsp" style="color:#191970;font-size:25px;">我的申请课程</a>
		  	</li>
		  </ul>
		</div>
        </div>
        <div  align="center">
	<table width=70%>
				   <tr><th>课程编号</th><th>课程名</th><th>年级</th><th>学时</th><th>价格</th><th>审核状态</th></tr>
				   <%
				     request.setCharacterEncoding("UTF-8");
                     String name1=null;
                     ResultSet rs=null;
                     name1 = (String) session.getAttribute("getname");
				     String s="select class.classid,classtype,target,period,price,isapply from class,apply where class.classid=apply.classid and tid='"+name1+"'";
                     rs=jdbc.executeQuery(s);
                     while(rs.next()){
                     String id=rs.getString(1);
                     String name=rs.getString(2);                     
                     String target=rs.getString(3);
                     int period=rs.getInt(4);
                     int price=rs.getInt(5);
                     String isapply=rs.getString(6);
                     String s1="等待审核";
                     String s2="审核通过";
                     if(isapply.equals("wait")){
                       out.println("<tr align='center'><td>"+id+"</td><td>"+name+"</td><td>"+target+"</td><td>"+period+"</td><td>"+price+"</td><td>"+s1+"</td></tr>");
                      }                    
                     else{
                     out.println("<tr align='center'><td>"+id+"</td><td>"+name+"</td><td>"+target+"</td><td>"+period+"</td><td>"+price+"</td><td>"+s2+"</td></tr>");
                     }
                     }                     
                     jdbc.close();
				    %>
				</table>
</div>

  </body>
</html>
