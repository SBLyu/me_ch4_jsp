<%@ page language="java" import="java.util.*" pageEncoding="BIG5"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

	Locale locale=request.getLocale();
	Calendar calendar=Calendar.getInstance(locale);
	int hour=calendar.get(Calendar.HOUR_OF_DAY);

	String msg="";
	if(hour<=6)
		msg="凌晨好";
	else if(hour<=9)
		msg="早上好";
	else if(hour<=12)
		msg="上午好";
	else if(hour<=18)
		msg="下午好";
	else
		msg="晚上好";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Greetings.jsp' starting page</title>
    
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
    <table>
    	<tr>
    		<td>現在時間<%=hour %></td>
   		</tr>
   		<tr>
    		<td><%=msg %></td>
   		</tr>
    </table>
  </body>
</html>
