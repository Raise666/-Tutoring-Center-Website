<%@ page language="java" import="java.util.Date" import="java.sql.*" contentType="text/html; charset=utf-8" %>
<%@ include file="head2.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'mycourse2.jsp' starting page</title>
    
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

.notice-tit li{
               width:500px;
               height:36px;
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
table  td th{font-size:20px;width:80px; overflow:hidden;}
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
   <div id="content">
     <div id="notice-tit" class="notice-tit">
		  <ul>
		  	<li class="select">
		  		<a href="mymessage_st.jsp" style="color:#191970;font-size:35px;">我的留言</a>
		  	</li>	</ul>
		</div>
		<div>
		<table width=100%>
				   <tr><th>标题</th><th>内容</th><th>回复信息</th></tr>
				   <%
				      request.setCharacterEncoding("UTF-8");
                     String name1=null;String zt=null;
                     ResultSet rs=null;
                     name1 = (String) session.getAttribute("getname");
				     String s="select zhuti,message,reply from messagecon where userid='"+name1+"'";
                     rs=jdbc.executeQuery(s);
                     while(rs.next()){
                     zt=rs.getString(1);
                     String mycomment=rs.getString(2);                     
                 String rep=rs.getString(3);        
                     out.println("<tr align='center'><td>"+zt+"</td><td>"+mycomment+"</td><td>"+rep+"</td></tr>");
                     
                     }                     
                     jdbc.close();
				    %>
				</table>
				</div>
		
		
		
   </div>
      
  </body>
</html>