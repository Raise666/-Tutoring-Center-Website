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
table  td th{font-size:20px;width:50px;}
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
		  	<li class="select">
		  		<a href="mycourse3.jsp" style="color:#191970;font-size:25px;">我的教授课程</a>
		  	</li>
		  
		  	<li>
		  		<a href="mycourse.jsp" style="font-size:25px;">我的申请课程</a>
		  	</li>
		  </ul>
		</div>
        </div>
<div align="center">
				<table  width=800px;>
				   <tr><th>课程编号</th><th>课程名</th><th>年级</th><th>学生名</th><th>学时</th><th>学生联系电话</th><th>查看评价</th><th>家教协议</th></tr>
				   <%
				     request.setCharacterEncoding("UTF-8");
                     String name1=null;
                     ResultSet rs=null;
                     name1 = (String) session.getAttribute("getname");
				     String s="select class.classid,classtype,target,student.studentname,period,studenttel,studentid,admin from class,contract,student where class.classid=contract.courseid and contract.stconfirm=student.studentid and teconfirm='"+name1+"' and techeck='yes' ";
                     rs=jdbc.executeQuery(s);
                     while(rs.next()){
                     String id=rs.getString(1);
                     String name=rs.getString(2);                     
                     String target=rs.getString(3);
                     String name2=rs.getString(4);
                     int period=rs.getInt(5);
                     String stel=rs.getString(6);
                     String sid=rs.getString(7);
                     String admin=rs.getString(8);
                     String xieyi="未生效";
                     String xieyi_yes="已生效";
                     if(admin==null){
                     out.println("<tr align='center'><td>"+id+"</td><td>"+name+"</td><td>"+target+"</td><td>"+name2+"</td><td>"+period+"</td><td>"+stel+"</td><td><a href='display.jsp?classid="+id+"&sid="+sid+"' target='_blank'><img src='picture/look.png' width=35px height=35px/></a></td><td>"+xieyi+"</td></tr>");
                     }
                     else{
                     out.println("<tr align='center'><td>"+id+"</td><td>"+name+"</td><td>"+target+"</td><td>"+name2+"</td><td>"+period+"</td><td>"+stel+"</td><td><a href='display.jsp?classid="+id+"&sid="+sid+"' target='_blank'><img src='picture/look.png' width=35px height=35px/></a></td><td>"+xieyi_yes+"</td></tr>");
                     }
                       
                     
                     }                     
                     jdbc.close();
				    %>
				</table>			
 </div>
  </body>
</html>
