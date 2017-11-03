<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'signup.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<script type="text/javascript">     
		    function check1()
		    {
		        if(document.getElementById("id").value=="")
		        {
		            alert("请输入ID");
		            return false;
		        }
		        
		        if(document.getElementById("loginname").value=="")
		        {
		            alert("请输入姓名");
		            return false;
		        }
		        
		        if(document.getElementById("logintel").value=="")
		        {
		            alert("请输入电话");
		            return false;
		        }
		        if(document.getElementById("type1").value=="teacher"&&document.getElementById("IDcard").value=="")
		        {
		            alert("请输入身份证");
		            return false;
		        }
		        if(document.getElementById("type1").value=="student"&&document.getElementById("age").value=="")
		        {
		            alert("请输入年龄");
		            return false;
		        }
		       if(document.getElementById("type1").value=="studnt"&&document.getElementById("add").value=="")
		        {
		            alert("请输入地址");
		            return false;
		        }
		        
		        if(document.getElementById("loginpw").value=="")
		        {
		            alert("请输入密码");
		            return false;
		        }
		        
		    }
        </script>
  </head>
  
  <body>
    <form action="signupcheck.jsp"  method="post" name="form1" onSubmit="return check1()">
				<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
					<tr>
						<th height="40" colspan="2" bgcolor="#FFFFFF" class="f12b-red" style="font-size: 11px;">
							用 户 注 册
						</th>
					</tr>
					<tr>
						<td width="20%" height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
							注册类型：
						</td>
						<td width="80%" bgcolor="#FFFFFF">
							&nbsp;
						   <select name="type1" style="width: 110px">
                               <option value="teacher">老师</option>
                               <option value="student">学生</option>
                           </select>
						</td>
					</tr>
					<tr>
						<td width="20%" height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
							用户名：
						</td>
						<td width="80%" bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="id"/>
						</td>
					</tr>
					<tr>
						<td width="20%" height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
							姓名：
						</td>
						<td width="80%" bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="loginname" id="loginname"/>
						</td>
					</tr>
					<tr>
						<td width="20%" height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
							性别：
						</td>
						<td width="80%" bgcolor="#FFFFFF">
							&nbsp;
						   <select name="type2" style="width: 110px">
                               <option value="男">男</option>
                               <option value="女">女</option>
                           </select>
						</td>
					</tr>
					<tr>
						<td width="20%" height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
							电话：
						</td>
						<td width="80%" bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="logintel" id="logintel"/>
						</td>
					</tr>
					<tr>
						<td width="20%" height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
							身份证（老师必填）：
						</td>
						<td width="80%" bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="IDcard" id="IDcard"/>
						</td>
					</tr>
					<tr>
						<td width="20%" height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
							年龄（学生必填）：
						</td>
						<td width="80%" bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="age" id="age"/>
						</td>
					</tr>
					<tr>
						<td width="20%" height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
							地址（学生必填）：
						</td>
						<td width="80%" bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="add" id="add"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
							密 码：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="password" name="loginpw"/>
						</td>
					</tr>
					
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9">
							&nbsp;
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type=submit  name="sub" value="确定" />	&nbsp;&nbsp;<a href='Home.jsp'><img src='picture/zy.png' width='30' height='30'/></a>
						</td>
					</tr>
				</table>
			</form>
  </body>
</html>
