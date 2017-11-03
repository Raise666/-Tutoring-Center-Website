<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
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
    
    <title>My JSP 'logincheck.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
  </head>
  
  <body>
     <%
      //  request.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("GBK");   
        ResultSet rs1;
        String sqlstr; 
 		String name=request.getParameter("userName");
 		String pwd=request.getParameter("userPw");
 		String limit=request.getParameter("type");
 	    if((name!=null&&name.length()!=0)&&(pwd!=null&&pwd.length()!=0)){  
 	       sqlstr="select * from user where userid='"+name+"'and userpassword='"+pwd+"' and userlimit='"+limit+"'";  
 	       rs1=jdbc.executeQuery(sqlstr);    
 	       if(rs1.next()){  
 	      // String limit=rs1.getString(3);
 	      session.setAttribute("getname",name);
 	       if(limit.equals("administrator")){   response.sendRedirect("admin.jsp");  }
 	       else{
 	        
 	           if(session.getAttribute("study")==null){
 	                          response.sendRedirect("Home.jsp");  
 	           }
 	           else{ response.sendRedirect("Ccourse.jsp");}
 	               
 	       }    }                  
 	       else {       
 	           out.println("<script language='javaScript'>alert('该用户不存在！');</script>");
 	           response.setHeader("refresh","0;url=login.jsp");}          	             
           }
         else{
           out.println("<script language='javaScript'>alert('请填写完整信息！');</script>");
           response.setHeader("refresh","0;url=login.jsp");}
 	%> 
  </body>
</html>
