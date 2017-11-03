<%@ page language="java" import="java.util.*" import="java.sql.*" contentType="text/html; charset=utf-8" %>
<%@page import="com.DBBean.DBBean"%>
<jsp:useBean id="jdbc" class="com.DBBean.DBBean"></jsp:useBean>

  <%   
    String name1=null;
    ResultSet rs1=null;
    int rs2;
    String oldpassword=null;
    request.setCharacterEncoding("UTF-8");
    name1 = (String) session.getAttribute("getname");     
    String oldpwd=request.getParameter("oldpwd"); 
    String newpwd=request.getParameter("newpwd");
    String confirmpwd=request.getParameter("confirmpwd");
    String sql1="select userpassword from user where userid='"+name1+"'";
    String sql2="update user set userpassword='"+newpwd+"' where userid='"+name1+"'";
    rs1=jdbc.executeQuery(sql1);
    if(rs1.next()){
       oldpassword=rs1.getString(1);
        if(oldpassword.equals(oldpwd)==true && newpwd.equals(confirmpwd)==true)
        {              
         rs2=jdbc.executeUpdate(sql2);
         if(rs2==1)
         {out.println("<script language='javaScript'>alert('修改成功，请重新登陆！');</script>");
          session.removeAttribute("getname");
          response.setHeader("refresh","0;url=Home.jsp");
          }
         else
         {out.println("<script language='javaScript'>alert('修改失败，请重新输入！');</script>");
          response.setHeader("refresh","0;url=mypassword_st.jsp");}
         }
       else
       {out.println("<script language='javaScript'>alert('输入不正确，请重新输入！');</script>");
        response.setHeader("refresh","0;url=mypassword_st.jsp");
       }
    }
    jdbc.close();

%>


