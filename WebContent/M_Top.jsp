<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<% 
	String user=(String)session.getAttribute("user");
	if(user==null){
		response.sendRedirect("Login.jsp?flag=login");
	}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <table width="920" height="260" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="160" colspan="4" background="./images/top.jpg"><object id="FlashID" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="920" height="160">
          <param name="movie" value="bg.swf" />
          <param name="quality" value="high" />
          <param name="wmode" value="transparent"/>
          <param name="swfversion" value="6.0.65.0" />
          <!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
          <param name="expressinstall" value="Scripts/expressInstall.swf" />
          <!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
          <!--[if !IE]>-->
     
        </tr>
      <tr bgcolor="#CCCCCC">
	      <td  headers="30">&nbsp;</td>
	      <td colspan="2" align="right">欢迎你：<font color="#1100aa"><%=session.getAttribute("user") %></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                角色：<font color="#1100aa"><%=session.getAttribute("role") %></font></td>
	      <td  align="center"><a href="LoginServlet?flag=invalidate">注销</a></td>
      </tr>      
      <tr bgcolor="#CCCCCC">
        <td width="78" height="30">&nbsp;</td>
        <td width="589"><font color="#1100aa">      
        <marquee id="scrollArea1" scrollamount="5"  onmouseout="this.start()" onMouseOver="this.stop()"
              scrolldelay="130" direction="left" width="100%" >
                         欢迎来到安徽科技学院----在线考试系统
       </marquee>  
    </font></td>
        <td width="46">&nbsp;</td>
        <td width="195" align="center"><font color="#000000">
       <script language="JavaScript" type="text/javascript">    
	        d = new Date();
            document.write((d.getYear()+1900)+"年"+(d.getMonth()+1)+"月"+d.getDate()+ "日");			
       </script>
    </font><font color="#000000">
          <script language="JavaScript" type="text/javascript">
			d = new Date();
			switch (d.getDay()) {
			case 0:
			strweek="日";
			break;
			case 1:
			strweek="一";
			break;
			case 2:
			strweek="二";
			break;
			case 3:
			strweek="三";
			break;
			case 4:
			strweek="四";
			break;
			case 5:
			strweek="五";
			break;
			case 6:
			strweek="六";
			break;
			}
	document.write("星期"+ strweek);
	</script>
    </font></td>
      </tr>
      <tr bgcolor="#CCCCCC">
       <td colspan="5" height="40"><table width="100%" border="0" align="center">
         <tr>
           <td><div align="center"><a href="ManagerServlet?flag=teacher&pageNow=1">教师管理</a></div></td>
           <td><div align="center"><a href="ManagerServlet?flag=student&pageNow=1">学生管理</a></div></td>
           <td><div align="center"><a href="ManagerServlet?flag=course&pageNow=1">课程管理</a></div></td>
           <td><div align="center"><a href="ManagerServlet?flag=class&pageNow=1">班级管理</a></div></td>
           <td><div align="center"><a href="ManagerServlet?flag=assign&pageNow=1">分配课程</a></div></td>
           <td><div align="center"><a href="ManagerServlet?flag=query&pageNow=1">查询成绩</a></div></td>
           <td><div align="center"><a href="Manager_psdAlter.jsp">修改密码</a></div></td>
         </tr>
       </table></td>
      </tr>
    </table>
  </body>
</html>
