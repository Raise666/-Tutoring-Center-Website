<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>LOGIN</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
  <script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
	<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
	<script type="text/javascript">
	        function reg()
	        {
	                var url="<%=path %>/signup.jsp";
	                var n="";
	                var w="480px";
	                var h="500px";
	                var s="resizable:no;help:no;status:no;scroll:yes";
				    openWin(url,n,w,h,s);
	        }
	        
	        function check()
			{                                                                                         
			     if(document.ThisForm.userName.val()=="")
				 {
				 	alert("请输入用户名");
					return false;
				 }
				 if(document.ThisForm.userPw.value=="")
				 {
				 	alert("请输入密码");
					return false;
				 }
				 document.getElementById("indicator").style.display="block";
				 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,document.ThisForm.userType.value,callback);
			}
		
			function callback(data)
			{
			    document.getElementById("indicator").style.display="none";
			    if(data=="no")
			    {
			        alert("用户名或密码错误");
			    }
			    if(data=="yes")
			    {   alert("登陆成功");
			        window.location.reload();
			    }
			    
			}
	</script>
	<style type="text/css">
	*{margin:0 auto;padding:0;}
	.pic1{border:0;background:#000080;height:200px;font-size:40px;color:white;}
	
	#a1{margin-top:100px;font-size:20px;}
	#a2{position:relative;margin-top:40px;font-size:20px;}
	#a3{position:relative;margin-top:40px;font-size:20px;}
	#a4{position:relative;margin-top:40px;font-size:20px;}
	</style>
  </head>
  
  <body>
       
			<form action="logincheck.jsp"  method="post">
			
			<div class="pic1"><br/>若月抒情海大家教服务中心<br/>
			                  SHANGHAI MARITIME UNIVERSITY</div>
			<div align="center" id="a1">登陆身份：<input type="radio" name="type" value="teacher" checked>老师
			            <input type="radio" name="type" value="student">学生
			            <input type="radio" name="type" value="administrator">管理员</div>
			<div align="center" id="a2">用户名<input type="text" name="userName" size="20"></div>
			<div align="center" id="a3">密     码<input type="password" name="userPw" size="20"></div>   
			<div align="center" id="a4"><input type=submit name="login" value="登  录" style="border:#ccc 1px solid; background-color:#FFFFFF; font-size:22px; padding-top:3px;" />   <a href='Home.jsp'><img src='picture/zy.png' width=30px  height=30px/></a>      
                               <!--  <input type=submit name="signup" value="注  册" style="border:#ccc 1px solid; background-color:#FFFFFF; font-size:12px; padding-top:3px;" /> --></div>  
		    </form>	
		  
  </body>
</html>
