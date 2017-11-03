<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="head.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Home.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
img {
border:0;
margin:0;
padding:0;
}
#pic {margin:0 auto;width:1000px;}
</style>
<script type="text/javascript">
window.onload=tab;
function tab(){
//找到图片的最大索引
var index=0;//dangqian显示的图片
var timer=null;
var lis=document.getElementsByClassName('pi');
timer=setInterval(function(){
index++;
if(index>=lis.length)
{index=0;}
for(var j=0;j<lis.length;j++){lis[j].style.display='none';}
lis[index].style.display='block';
},2000);
}
</script>
  </head>
  
  <body>
    <div id="pic">
   <img  class="pi" src="picture\pic2.JPG"  />
   <img  class="pi" src="picture\pic3.JPG" style="display:none" />
   </div>
  </body>
</html>
