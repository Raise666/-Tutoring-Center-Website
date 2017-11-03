<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%@ include file="head.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'teacher.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->  
<style type="text/css">*{margin:0px;padding:0px;}
a{text-decoration:none;}
#last a:link{color:gray;}
#last a:visited{color:gray;}
#box{width:720px;border:1px solid #aaa;margin:0 auto;overflow:hidden;}
#last{width:720px;margin:0 auto;height:35px;float:right;}
ul{list-style:none;;}
#box ul li{height:auto;width:223px;border:1px solid #aaa;float:left;margin:5px;}
.a-img{width:167px;display:block;overflow:hidden;}
p a,p span{
display:block;line-height:23px;
padding-left:10px;
}
.bottom{height:30px;line-height:20px;text-align:center;background-color:#ccc;}

</style>
<script type="text/javascript" >
window.onload=function(){
var s=document.getElementsByTagName("a");
s[2].style.color="red";
};
function checknum(){
if(document.getElementById("a").value==null)
{return false;};}
</script>
  </head>
  
  <body>
  <div>&nbsp;</div>
  <div id="box">
    <ul>
  <%
   request.setCharacterEncoding("UTF-8");
    int pages=0;            //待显示页面
    int count=0;            //总条数
    int totalpages=0;        //总页数
    int limit2=10;            //每页显示记录条数    
    //计算记录总数的第二种办法：使用mysql的聚集函数count(*)
    ResultSet sqlRst = jdbc.executeQuery("select count(*) from teacher where state='通过' ");
    if(sqlRst.next()){
        count = sqlRst.getInt(1);//结果为count(*)表，只有一列。这里通过列的下标索引（1）来获取值
    }    
    //由记录总数除以每页记录数得出总页数
    totalpages = (int)Math.ceil(count/(limit2*1.0));
    //获取跳页时传进来的当前页面参数
//     String strPage=null;
   // if(request.getParameter("pages")!=null)
   String strPage = request.getParameter("pages");
    //判断当前页面参数的合法性并处理非法页号（为空则显示第一页，小于0则显示第一页，大于总页数则显示最后一页）
    if (strPage == null) { 
        pages = 1;
    } else {
        try{
            pages = java.lang.Integer.parseInt(strPage);
        }catch(Exception e){
            pages = 1;
        }
        if (pages < 1){
            pages = 1;
        }     
        if (pages > totalpages){
            pages = totalpages;
        }                            
    }
    //由(pages-1)*limit算出当前页面第一条记录，由limit查询limit条记录。则得出当前页面的记录
   ResultSet rs1= jdbc.executeQuery("select * from teacher where state='通过'   limit "+(pages-1)*6+",6");
    while (rs1.next()){
    String tname=rs1.getString(1);
    String ttel=rs1.getString(2);
    String tsex=rs1.getString(3);
    String tschool=rs1.getString(4);
    String selfintroduce=rs1.getString(5);
    String tid=rs1.getString(6);
    out.println(" <li><div class='con'><p><span > 姓名:"+tname+"&nbsp;&nbsp;性别:"+tsex+"</span><span>电话:"+ttel+"</span><span>就读大学:"+tschool+"</span><span>自我介绍:</span><span><textarea rows='10' cols='25'>"+selfintroduce+"</textarea></span></p></div><div class='bottom'><img src='picture/zfj.png' width='30px' height='30px'/>&nbsp;<img src='picture/xz1.png' width='30px' height='30px'/>&nbsp;<img src='picture/jy.png' width='40px' height='30px'/>&nbsp;<img src='picture/dh.png' width='25px' height='25px'/></div></li>");}
   %>
  </ul>
  </div>

  <div id="last">
  <form name="f1" method="POST" action="teacher.jsp" onSubmit="return checknum()">
            <table border="0" align="center" >
                <tr>
                    <td>第<%=pages%>页 共<%=totalpages%>页 <a href="teacher.jsp?pages=1">首页</a></td>
                    <td><a href="teacher.jsp?pages=<%=(pages<1)?pages:(pages-1) %>"> 上一页</a></td>
                    <td><a href="teacher.jsp?pages=<%=(pages>=totalpages)?totalpages:(pages+1)%>"> 下一页</a></td>
                    <td><a href="teacher.jsp?pages=<%=totalpages%>">最后一页</a></td>
                    <td>转到第:<input type="text"  id="a" name="pages" size="8"/>页<input type="submit" value="GO" name="cndok"/></td>
                </tr>
            </table> 
 </form></div>
  </body>
</html>
