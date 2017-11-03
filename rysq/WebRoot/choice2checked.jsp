<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
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
    
    <title>My JSP 'choice2checked.jsp' starting page</title>
    
  </head>
  
  <body>
    <%
      String sid=null;
      String tname=null;
 	  sid=(String)(session.getAttribute("getname"));
 	  String tid1=request.getParameter("tid"); 
 	  String cid=request.getParameter("id"); 
 	   String sqlstr="select tname from teacher where tid='"+tid1+"'";  
 	   ResultSet rs1=jdbc.executeQuery(sqlstr);   
 	    String x=null;
 	   while(rs1.next())
 	   {tname=rs1.getString(1);//out.println("<script language='javaScript'>alert('选择成功！');</script>");
 	   
 	   }
 	   String ss="update contract set teconfirm='"+tid1+"', tname='"+tname+"' where  stconfirm='"+sid+"'";
 	   //String ss="insert into contract(teconfirm) values('"+tname+"' ) where  stconfirm=='"+sid+"'";
 	    int i=jdbc.executeUpdate(ss);
 	   if(i==1)
 	   {out.println("<script language='javaScript'>alert('选择成功！');</script>"); 
 	      response.setHeader("refresh","0;url=Ccourse.jsp");
 	     }
 	    // else{out.println("<script language='javaScript'>alert('选择shibai！');</script>"); 
 	    //response.setHeader("refresh","0;url=Home.jsp");}
 	    else{
 	    out.println("<script language='javaScript'>alert('选择失败！您已经选择过该课程');</script>"); 
 	    response.setHeader("refresh","0;url=Ccourse.jsp");}
     %> 	
  </body>
</html>
