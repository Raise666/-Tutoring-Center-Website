<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@page import="com.DBBean.DBBean"%>
<jsp:useBean id="jdbc" class="com.DBBean.DBBean"></jsp:useBean>


<html>
  <head>
    

  </head>
  
  <body>
    <%
        request.setCharacterEncoding("UTF-8");
        int rs1,rs2,rs3,rs4;
        String sqlstr1,sqlstr2,sqlstr3,sqlstr4; 
 		String name=request.getParameter("loginname");
 		String pwd=request.getParameter("loginpw");
 		String tel=request.getParameter("logintel");
 		String idcard=request.getParameter("IDcard");
 		String age=request.getParameter("age");
 		String add=request.getParameter("add");
 		String sex=request.getParameter("type2");
 		String type=request.getParameter("type1");
 		String id=request.getParameter("id");
 		
 		String sql="select * from user where userid='"+id+"'";
 		ResultSet rs=jdbc.executeQuery(sql);
 		if(rs.next()){
 		%>
 		<script type="text/javascript">   
 		 alert("chongming"); 
 		 window.history.back(-1);  		 
 		</script>	
 		<% }
 		if(name!="" && pwd!="" && tel!="" && id!="" && age!="" && add!=""){
 		   sqlstr1="insert into user values('"+id+"','"+pwd+"','"+type+"')"; 
 	       rs1=jdbc.executeUpdate(sqlstr1); 
 	       
 	       sqlstr2="insert into student values('"+id+"','"+name+"','"+tel+"','"+sex+"','"+age+"','"+add+"')"; 
 	       rs2=jdbc.executeUpdate(sqlstr2);   
 	       if(rs1==1&&rs2==1){                    
 	           response.sendRedirect("login.jsp");  
 	           }                          	             
             }       
      else{    
 	          sqlstr4="insert into user values('"+id+"','"+pwd+"','"+type+"')"; 
 	        sqlstr3="insert into teacher(tid,tidcard,tname,ttel,tsex) values('"+id+"','"+idcard+"','"+name+"','"+tel+"','"+sex+"')"; 
 	       rs4=jdbc.executeUpdate(sqlstr4);   
 	       rs3=jdbc.executeUpdate(sqlstr3);   
 	       if(rs4==1&&rs3==1){                    
 	           response.sendRedirect("login.jsp");  
 	       }                          	                  
         }
 	%> 	
  </body>
</html>
