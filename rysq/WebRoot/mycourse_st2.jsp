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
		  	<li >
		  		<a href="mycourse_st.jsp" style="color:#191970;font-size:25px;">我的学习课程</a>
		  	</li>
		  	<li class="select"><a href="mycourse_st2.jsp" style="font-size:25px;">我选择的课程</a>
		  	</li></ul>
		</div>
		<table width=100%>
				   <tr><th>课程编号</th><th>课程名</th><th>年 级</th><th>学  时</th><th>价格</th><th>老师审核</th><th>家教协议</th></tr>
				   <%
				     request.setCharacterEncoding("UTF-8");
                     String name1=null;
                     ResultSet rs=null;
                     String id=null,cname=null,target=null,admin=null,techeck=null;
                     int period=0,price=0; 
                     name1 = (String) session.getAttribute("getname");
				     String s1="select class.classid,classtype,target,period,price,admin,techeck from contract,class where class.classid=contract.courseid and stconfirm='"+name1+"'";
                     rs=jdbc.executeQuery(s1);                     
                     while(rs.next()){                   
                      id=rs.getString(1);
                      cname=rs.getString(2);
                      target=rs.getString(3);
                      period=rs.getInt(4);
                      price=rs.getInt(5);
                      admin=rs.getString(6);
                      techeck=rs.getString(7);
                      String state="等待审核";
                      String state_yes="审核通过";
                      String state2="未生效";
                      String state2_yes="已生效";
                      if(admin==null&&techeck.equals("no")){
                      out.println("<tr align='center'><td>"+id+"</td><td>"+cname+"</td><td>"+target+"</td><td>"+period+"</td><td>"+price+"</td><td>"+state+"</td><td>"+state2+"</td></tr>");
                     }     
                     else{
                      if(admin==null&&techeck.equals("yes")){
                      out.println("<tr align='center'><td>"+id+"</td><td>"+cname+"</td><td>"+target+"</td><td>"+period+"</td><td>"+price+"</td><td>"+state_yes+"</td><td>"+state2+"</td></tr>");
                     }  
                     else{
                      out.println("<tr align='center'><td>"+id+"</td><td>"+cname+"</td><td>"+target+"</td><td>"+period+"</td><td>"+price+"</td><td>"+state_yes+"</td><td>"+state2_yes+"</td></tr>");
                     }             
                     }   
                     }       
                     jdbc.close();
				    %>
				</table>
		
		
		
   </div>
      
  </body>
</html>
