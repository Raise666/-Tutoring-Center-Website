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
    table{border-collapse:collapse;}
    .autab td{border: black  1px solid;width:100px;text-align:center;}
    .autab a:link{color:blue;}
    .autab a:visited{color:blue;}
    #atabhead td{background-color: #C4D3F0;}
    #caidan a:hover{background-color:#FFFFFF;color:#000080;}
   #caidan  a{text-decoration:none;display:block;height:70px;line-height:70px;width:230px;margin-buttom:1px;text-indent:60px;font-size:22px;color:#FFFFFF;}
    .pic1{border:0;background:#000080;height:130px;font-size:40px;color:white;padding-left:20px;}
    #content{padding-top:40px;padding-leftt:5px;}
    #autab a{color:black;}
    a{text-decoration:none;}
#last a:link{color:gray;}
#last a:visited{color:gray;}
    </style>
    <script type="text/javascript" >
function checknum(){
if(document.getElementById("a").value==null)
{return false;};}
</script>
 </head>
  
  <body>
  

  <div class="pic1"><div id="tuichu">
  <a href='closeuser.jsp'><img  src='picture/bai.png' width=31px height=31px/></a>
  </div><br/>若月抒情海大家教服务中心<br/>
  <span style="font-size:30px;">RUO YUE SHU QING - SMU</span>
  <hr/>
  </div>
 
  <div id="caidan"><ul>
       <li><a href="admin.jsp" >教员审核</a></li>
       <li><a href="changecour.jsp">修改课程</a></li>
       <li><a href="aaprotocol.jsp">家教协议</a></li>
        <li><a href="managemess.jsp">留言管理</a></li>
       <li><a href="note.jsp"style="background-color:#FFFFFF;color:#000080;">发布公告</a></li>
    </ul><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
  </div>
  <div id="content">
    <table id="autab" class="autab" border="0" width="60%">
    <tr align="center" style="boder:0" id="atabhead">
    <td >编号</td>
    <td >标题</td>
    <td>内容</td>
     <td>发布时间</td>
    <td>发布者</td>
     <td></td>
   
    </tr></table>
   <table class="autab" align="center" border="1" width="60%" >
    <%
    request.setCharacterEncoding("UTF-8");
      int pages=0;            //待显示页面
    int count=0;            //总条数
    int totalpages=0;        //总页数
    int limit=6;            //每页显示记录条数    
    //计算记录总数的第二种办法：使用mysql的聚集函数count(*)
    ResultSet sqlRst = jdbc.executeQuery("select count(*) from notice ");
    if(sqlRst.next()){
        count = sqlRst.getInt(1);//结果为count(*)表，只有一列。这里通过列的下标索引（1）来获取值
    }    
    //由记录总数除以每页记录数得出总页数
    totalpages = (int)Math.ceil(count/(limit*1.0));
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
  String id=null; String bt=null;String  message=null;String date=null; String   author=null;
    ResultSet rs;
    String sql="select nid,bt,message,date,author from notice where state='Y'  limit "+(pages-1)*6+",6";
    rs=jdbc.executeQuery(sql);
    while(rs.next()){
     id=rs.getString(1);
     bt=rs.getString(2);
     message=rs.getString(3);
  date=rs.getString(4);
     author=rs.getString(5);
    out.println("<tr><td>"+id+"</td><td>"+bt+"</td><td>"+message+"</td><td>"+date+"</td><td>"+author+"</td><td><a href='deletenotice.jsp?id="+id+"'>删除</a></td></tr>");
    }
    %>
    </table>     
  </div>   
<div id="last">
  <form name="f1" method="POST" action="allnotice.jsp" onSubmit="return checknum()">
            <table border="0" align="center" >
                <tr>
                    <td>第<%=pages%>页 共<%=totalpages%>页 <a href="allnotice.jsp?pages=1">首页</a></td>
                    <td><a href="allnotice.jsp?pages=<%=(pages<1)?pages:(pages-1) %>"> 上一页</a></td>
                    <td><a href="allnotice.jsp?pages=<%=(pages>=totalpages)?totalpages:(pages+1)%>"> 下一页</a></td>
                    <td><a href="allnotice.jsp?pages=<%=totalpages%>">最后一页</a></td>
                    <td>转到第:<input type="text"  id="a" name="pages" size="8"/>页<input type="submit" value="GO" name="cndok"/></td>
                </tr>
            </table> 
 </form></div>


  </body>
</html>
