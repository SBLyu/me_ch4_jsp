<%@ page language="java" import="java.util.*" pageEncoding="BIG5"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

	Locale locale=request.getLocale();
	Calendar calendar=Calendar.getInstance(locale);
	int hour=calendar.get(Calendar.HOUR_OF_DAY);

	String msg="";
	if(hour<=6)
		msg="���n";
	else if(hour<=9)
		msg="���W�n";
	else if(hour<=12)
		msg="�W�Ȧn";
	else if(hour<=18)
		msg="�U�Ȧn";
	else
		msg="�ߤW�n";
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
    		<td>�{�b�ɶ�<%=hour %></td>
   		</tr>
   		<tr>
    		<td><%=msg %></td>
   		</tr>
    </table>
  </body>
</html>
