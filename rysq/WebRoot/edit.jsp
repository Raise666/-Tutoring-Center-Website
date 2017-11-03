<%@ page language="java" import="java.util.*" import="java.sql.*" contentType="text/html; charset=utf-8" %>
<%@page import="com.DBBean.DBBean"%>
<jsp:useBean id="jdbc" class="com.DBBean.DBBean"></jsp:useBean>

  <%   
    String name1=null;
    request.setCharacterEncoding("UTF-8");
    name1 = (String) session.getAttribute("getname");     
    String tname=request.getParameter("username"); 
    String ttel=request.getParameter("usertel");
    String tschool=request.getParameter("userschool");
    String selfi=request.getParameter("self");
    String sql2="update teacher set tname='"+tname+"',ttel='"+ttel+"',tschool='"+tschool+"' ,selfintroduce='"+selfi+"' where tid='"+name1+"'";
    int rs1=jdbc.executeUpdate(sql2);
    if(rs1==1){
       out.println("<script language='javaScript'>alert('修改成功！');</script>");       
       response.setHeader("refresh","0;url=personal.jsp");
    }
    
    jdbc.close();
    %>

