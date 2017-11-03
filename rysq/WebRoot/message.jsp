<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%@ include file="head.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'message.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" >
window.onload=function(){
var s=document.getElementsByTagName("a");
s[3].style.color="lightgreen";
};
</script>
<style type="text/css">
.message{
	text-align:center;margin-top:30px;
	}
#message{width:800px;height:200px;margin:0 auto;}

	</style>
	<script type="text/javascript">     
		    function check1()
		    {
		         if(document.getElementById("message").value=="")
		        {
		            alert("请输入留言内容");
		            return false;
		        }
		        if(document.getElementById("zhuti").value=="")
		        {
		            alert("请输入主题");
		            return false;
		        }
		        if(document.getElementById("email").value=="")
		        {
		            alert("请输入Email");
		            return false;
		        }
		        if(document.getElementById("mess").val()=="")
		        {
		            alert("请输入留言内容");
		            return false;
		        }
		        
		    }
        </script>
  </head>
  
  <body>
 <% 
  request.setCharacterEncoding("UTF-8");
   // String id=request.getParameter("id");
    if((String) session.getAttribute("getname")== null) {
      //    String study="s";
         // session.setAttribute("study",study);
		  out.println("<script language='javaScript'>alert('请先登录！');</script>");
		  response.setHeader("refresh","0;url=Home.jsp");}
		  
		  %>
<div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div>
		<div id="message" >
		    <form action="messagecontrol.jsp"  method="post"  onSubmit="return check1()">
				<table width=800px border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
					<tr>
						<th height="50" colspan="2" bgcolor="#FFFFFF" class="f12b-red" style="font-size: 25px;">
						 有任何问题您可以留言联系我们
						</th>
					</tr>
					<tr>
						<td width="20%" height=45px align="right" bgcolor="#F0FFFF" style="font-size: 20px;">
							主题：
						</td>
						<td width="80%" bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="zhuti" id="zhuti" style=" height:30px"/>
						</td>
					</tr>
					<tr>
						<td width="20%" height="45" align="right" bgcolor="#B0E0E6" style="font-size: 20px;">
							Email：
						</td>
						<td width="80%" bgcolor="#FFFFFF">
							&nbsp;
						   <input type="text" name="email" id="email"style=" height:30px"/>
						</td>
					</tr>
					<tr>
						<td width="20%" height=75px align="right" bgcolor="#87CEEB" style="font-size: 20px;">
							留言：
						</td>
						<td width="80%" bgcolor="#FFFFFF">
							&nbsp;
							<textarea rows="6" cols="50" name="message"  id="mess"></textarea>
						</td>
					</tr>		
			</table>	
<div class="message">
 			<input type=submit name="sub" value="确定"  onclick="" style="width:50px;height:30px;"/> &nbsp;&nbsp;&nbsp;&nbsp; 
			<input type=submit name="qx"  value="取消"  onclick=""style="width:50px;height:30px;"/>
			</div>	
			</form>
			</div>
  </body>
</html>
