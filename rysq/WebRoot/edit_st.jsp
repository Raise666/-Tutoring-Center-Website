<%@ page language="java" import="java.util.*" import="java.sql.*" contentType="text/html; charset=utf-8" %>
<%@page import="com.DBBean.DBBean"%>
<jsp:useBean id="jdbc" class="com.DBBean.DBBean"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 
    String name1=null;
    request.setCharacterEncoding("UTF-8");
    name1 = (String) session.getAttribute("getname");     
    String sname=request.getParameter("username"); 
    String sage=request.getParameter("userage");
    String stel=request.getParameter("usertel");
    String sadd=request.getParameter("useradd");
    
    String sql1="update student set studentname='"+sname+"',studenttel='"+stel+"',studentage='"+sage+"',studentadd='"+sadd+"' where studentid='"+name1+"'";
    int rs1=jdbc.executeUpdate(sql1);
    if(rs1==1){
       out.println("<script language='javaScript'>alert('修改成功！');</script>");       
       response.setHeader("refresh","0;url=personal_st.jsp");
    }
    
    jdbc.close();

%>


