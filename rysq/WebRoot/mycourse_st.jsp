<%@ page language="java" import="java.util.*" import="java.sql.*" contentType="text/html; charset=utf-8" %>
<%@ include file="head2.jsp" %>

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
  *{margin:0;padding:0;list-style:none;}
 .notice-tit{height:37px;
            position:relative;
            background:#F7F7F7;}

.notice-tit ul{position:absolute;
               width:1001px;
               left:-1px;}

.notice-tit li{float:left;
               width:300px;
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
		  	<li class="select">
		  		<a href="mycourse_st.jsp" style="color:#191970;font-size:25px;">我的学习课程</a>
		  	</li>
		  	<li><a href="mycourse_st2.jsp" style="font-size:25px;">我选择的课程</a>
		  	</li></ul>
		</div>
		<table width=100%>
				   <tr><th>课程名</th><th>年  级</th><th>老  师</th><th>学  时</th><th>联系电话</th></tr>
				   <%
				     request.setCharacterEncoding("UTF-8");
                     String name1=null;
                     ResultSet rs=null;
                     name1 = (String) session.getAttribute("getname");                    
				     String s="select classtype,target,teacher.tname,period,ttel,class.classid,teconfirm from teacher,contract,class where stconfirm='"+name1+"' and class.classid=contract.courseid and contract.teconfirm=teacher.tid and admin is not null";
                     rs=jdbc.executeQuery(s);
                     while(rs.next()){                  
                     String name=rs.getString(1);                     
                     String target=rs.getString(2);
                     String tname=rs.getString(3);
                     int period=rs.getInt(4);
                     String ttel=rs.getString(5);
                     String classid=rs.getString(6);
                     String tid=rs.getString(7);
                     out.println("<tr align='center'><td>"+name+"</td><td>"+target+"</td><td>"+tname+"</td><td>"+period+"</td><td>"+ttel+"</td><td><a href='pinjia_st.jsp?id="+classid+"&tid="+tid+"' target='_blank'><img src='picture/look.png' width=20px height=20px/></a></td></tr>");
                     }                     
                     jdbc.close();
				    %>
				</table>		
   </div>
  </body>
</html>
