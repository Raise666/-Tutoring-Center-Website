<%@ page language="java" import="java.util.*" import="java.sql.*" contentType="text/html; charset=utf-8" %>
<%@page import="com.DBBean.DBBean"%>
<jsp:useBean id="jdbc" class="com.DBBean.DBBean"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <style type="text/css">
    #tuichu{float:right;padding-top:15px;padding-right:20px;}
    #caidan{float:left;padding-top:40px;width:230px;height:800px;background:#000080;overflow:hidden;}
    *{margin:0;padding:0;font-size:18px;}
    #caidan ul{list-style:none;width:100px;}
    table{border-collapse:collapse;margin-top:50px;}
    .autab td{border: black  1px solid;width:100px;text-align:center;}
    #atabhead td{background-color: #C4D3F0;}
    #caidan a:hover{background-color:#FFFFFF;color:#000080;}
   #caidan  a{text-decoration:none;display:block;height:70px;line-height:70px;width:230px;margin-buttom:1px;text-indent:60px;font-size:22px;color:#FFFFFF;}
    .pic1{border:0;background:#000080;height:130px;font-size:40px;color:white;padding-left:20px;}
    a{text-decoration:none;}
.message{text-align:center;}
#message{width:800px;height:200px;margin-top:20px;}

    </style>
    <script type="text/javascript">     
		    function check1()
		    {
		        if(document.getElementById("biaoti").value=="")
		        {
		            alert("请输入标题");
		            return false;
		        }
		        if(document.getElementById("mess").val()=="")
		        {
		            alert("请输入公告内容");
		            return false;
		        }
		        
		    }
        </script>
 </head>
  
  <body>
  

  <div class="pic1"><div id="tuichu"><form action="closeuser.jsp" method="post">
    <input type="submit" value="退出账户" name="close" style="border:#ccc 2px solid; background-color:#FFFFFF; font-size:12px;padding-top:3px;cursor:pointer" />
    </form></div><br/>若月抒情家教网<br/>
  <span style="font-size:30px;">RUO YUE SHU QING</span>
  <hr/>
  </div>
 
  <div id="caidan"><ul>
       <li><a href="admin.jsp">教员审核</a></li>
       <li><a href="changecour.jsp" >修改课程</a></li>
       <li><a href="aaprotocol.jsp">家教协议</a></li>
        <li><a href="managemess.jsp"style="background-color:#FFFFFF;color:#000080;">留言管理</a></li>
       <li><a href="note.jsp" >发布公告</a></li>
    </ul><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
  </div>
  <div id="content">
      <%String tid=request.getParameter("tid");
      String mess=null;
           String s="select message from messagecon where idmessagecon='"+tid+"'";
           ResultSet rs=jdbc.executeQuery(s);
           while(rs.next())
          {  mess=rs.getString(1);}
      %>
       <form  action="respond1.jsp"  method="post" onSubmit="return check1()">
           <input type="hidden"  name="tid"  value=<%=tid %> />  
				<table width=800px border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
					
					<tr>
						<td width="20%" height=45px align="right" bgcolor="#F0FFFF" style="font-size: 20px;">
						用户留言内容：
						</td>
						<td width="80%" bgcolor="#FFFFFF">
							&nbsp;
							<textarea  rows="6" cols="50" name="usermess" id="biaoti" ><%=mess %></textarea>
						</td>
					</tr>
					
					<tr>
						<td width="20%" height=75px align="right" bgcolor="#87CEEB" style="font-size: 20px;">
							管理员回复内容：
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
