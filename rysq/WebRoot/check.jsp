<%@ page language="java" import="java.util.*,"   import="com.DBBean.DBBean" pageEncoding="utf-8"%>
<jsp:useBean id="jdbc" class="com.DBBean.DBBean"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<% String faqldStr;%>