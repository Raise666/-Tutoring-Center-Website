<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="head.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'we.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	#gg{margin-top:50px;}
	#xz{margin-top:50px;}
	.we{width:850px;height:150px;margin:0 auto;}
	img #i1{float:left;}
	.mess{float:right;width:700px;margin-left:10px;font-size:20px;font:MV Boli;}
	ul{text-decoration:none;list-style:none;color:Maroon;}
	</style>
<script type="text/javascript" >
window.onload=function(){
var s=document.getElementsByTagName("a");
s[4].style.color="lightgreen";
};

</script>
  </head>
  
  <body>
  <%
  String message=null;
   request.setCharacterEncoding("UTF-8");
    String s=" SELECT message FROM notice order by nid desc limit 1";
    ResultSet rs=jdbc.executeQuery(s);
    while(rs.next()){message=rs.getString(1);}
   %>
  <div id="gg"class="we"><img id="i1"src='picture/gg.png' width=100px height=100px/><div  class="mess"><%=message %></div></div>
  <hr/>   <div  id="xz"  class="we">
   <img src='picture/service.PNG' width=100px height=100px/>
     <div class="mess">
   <ul>
   <li>1.您必须先登录才能查看网页数据</li>
   <li>2.学员和教员是两个不同的帐号,功能分开.如果您申请两个服务请注册两个账户</li>
   <li>3.所有的申请是否通过请在个人中心中查看</li>
   <li>4.请您相信我们将竭尽全力为您服务</li>
   <li>5.本网站所有服务解释权归上海海事大学家教服务中心</li>
   </ul>
      </div>
   </div>
   <hr/>
   <div class="we"></div>
  </body>
</html>
