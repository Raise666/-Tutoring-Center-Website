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
.message{text-align:center;}
#message{width:800px;height:200px;margin-top:20px;}
*{margin:0;padding:0;}
  </style> 
<script type="text/javascript">     
		    function check1()
		    {
		        if(document.getElementById("neirong").val()=="")
		        {
		            alert("请输入评价内容");
		            return false;
		        }
		        
		    }
        </script>
  </head>
  
  <body>
   <div id="content">

<%request.setCharacterEncoding("UTF-8");
    String id=request.getParameter("id");
    String tid=request.getParameter("tid"); %>
  <form action="pinjia_deal.jsp"  method="post"  onSubmit="return check1()">
   <input type="hidden" name="id" value=<%=id %> />
   <input type="hidden" name="tid" value=<%=tid %> />
				<table width=700px border=0px cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
					<tr>
						<td width="20%" height=75px align="right" bgcolor="#87CEEB" style="font-size: 25px;">
							我的评价：
						</td>
						<td width="80%" bgcolor="#FFFFFF">
							
							<textarea rows="10" cols="60" name="pinjia"  id="neirong"></textarea>
						</td>
					</tr>		
			</table>
			<br/>
<div class="message">
 			<input type=submit name="sub" value="确定"  onclick="" style="width:50px;height:30px;margin-left:650px;"/>
</div></form>
		 </div>	
  </body>
</html>