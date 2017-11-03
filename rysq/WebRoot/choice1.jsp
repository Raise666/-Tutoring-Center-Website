<%@ page language="java" import="java.util.*,java.sql.*" contentType="text/html; charset=utf-8"%>
<%@ include file="head.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'choice1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
function submit(){
window.location.replace("Ccourse.jsp");

};
</script>
<style type="text/css">
*{margin:0px;padding:0px;}
#out1{width:800px;margin:20px auto;font-size:20px;}
a{text-decoration:none;}
a:link{color:salmon;}
a:visited{color:salmon;}
#box{width:800px;border:1px solid #aaa;margin:0 auto;overflow:hidden;}
ul{list-style:none;;}
#box ul li{height:auto;width:220px;border:1px solid #aaa;float:left;margin:5px;}
.a-img{width:167px;display:block;overflow:hidden;}
table{border-collapse:collapse;}

</style>
  </head>
  
  <body>
  <div id="out1">
  <div>请确认您选择的课程信息：</div>
  <div>
  <table  align="center" border="none" width="70%"  > 
 
   <% 
    String id1=request.getParameter("id"); 
      request.setCharacterEncoding("UTF-8");
      String  limit1=null;
        String userid= (String) session.getAttribute("getname");
        String sql="select userlimit from user where userid='"+userid+"'";
        ResultSet rs1=jdbc.executeQuery(sql);
        while(rs1.next()){limit1=rs1.getString(1);}
        if(limit.equals("teacher"))
	  { out.println("<script language='javaScript'>alert('您无权学习此课程');</script>");
		  response.setHeader("refresh","0;url=Ccourse.jsp");}
		  else{
      String sqlstr="select  * from class where classid='"+id1+"'";  
 	   ResultSet rs=jdbc.executeQuery(sqlstr);    
 	      if(rs.next()){
    String id=rs.getString(1);
    String name=rs.getString(2);
    int period=rs.getInt(3);
    String target=rs.getString(4);
    int price=rs.getInt(5);
    out.println("<tr><td>"+target+""+name+"("+id+")</td><td>"+period+"个课时(一个课时两个小时)</td><td>"+price+"元/小时</td></tr>");
    }
     rs.close();}
    //jdbc.close();
 	%> 
 	</table>
 	</div>
 	
 	<% out.println("<div >信息有误请重新选择<input type='button' onclick='submit()' value='返回' /></div><div>信息无误请确认申请,一经提交将无法自己修改&nbsp;<a href='choice1checked.jsp?id="+id1+"'>确定</a></form></div>");%>
</div>
  </body>
</html>
