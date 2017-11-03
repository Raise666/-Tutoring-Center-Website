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
s[10].style.backgroundColor="white";
s[10].style.color="#000080";
};
</script>
 </head>
  
  <body>
    <div id="content" >
       <div id="notice-tit" class="notice-tit">
		  <ul>
		  	
		  	<li class="select">
		  		<a href="mymessage.jsp" style="color:#191970;font-size:25px;">学生选择课程</a>
		  	</li>
		  
		  	<li>
		  		<a href="mycomment.jsp" style="font-size:25px;">我的留言</a>
		  	</li>
		  	
		  </ul>
		</div>
    <div align="center">
				<table width=500px;>
				   <tr><th>课程编号</th><th>课程名</th><th>年级</th><th>学生名</th><th>学时</th><th>学生联系电话</th></tr>
				   <%
				     request.setCharacterEncoding("UTF-8");
                     String name1=null;
                     ResultSet rs=null;
                     name1 = (String) session.getAttribute("getname");
				     String s="select class.classid,classtype,target,studentname,period,studenttel,num from class,contract,student where class.classid=contract.courseid and contract.stconfirm=student.studentid and teconfirm='"+name1+"' and techeck='no'";
                     rs=jdbc.executeQuery(s);
                     while(rs.next()){
                     String id=rs.getString(1);
                     String name=rs.getString(2);                     
                     String target=rs.getString(3);
                     String name2=rs.getString(4);
                     int period=rs.getInt(5);
                     String stel=rs.getString(6);
                     int connum=rs.getInt(7);
                     out.println("<tr align='center'><td>"+id+"</td><td>"+name+"</td><td>"+target+"</td><td>"+name2+"</td><td>"+period+"</td><td>"+stel+"</td><td><a href='conteach.jsp?num="+connum+"'><img src='picture/dui.png' width='40' height='40'/></a></td></tr>");
                     
                     }                     
                     jdbc.close();
				    %>
				</table>			
        </div>
      </div>
  </body>
</html>