<%@ page language="java" import="java.util.*" pageEncoding="BIG5"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%!
String os,navigator,area;

private String getOS(String userAgent){
		if(userAgent.indexOf("NT 6.1")>0) return "Windows 7";
		if(userAgent.indexOf("NT 6.2")>0) return "Windows 8";
		if(userAgent.indexOf("NT 6.3")>0) return "Windows 8.1";
		if(userAgent.indexOf("NT 10.0")>0) return "Windows 10";
		if(userAgent.indexOf("Linux")>0) return "Linux";
		return "�����@�~�t��";
	}
	
	private String getNavigator(String userAgent){
		if(userAgent.indexOf("Chrome")>0) return "Chrome�s����";
		if(userAgent.indexOf("Firefox")>0) return "Firefox�s����";
		if(userAgent.indexOf("MSIE")>0) return "IE�s����";
		return "�����s����";
	}
	private String getLocale(Locale userLocale){
		if(Locale.SIMPLIFIED_CHINESE.equals(userLocale)) return "²�餤��";
		if(Locale.TRADITIONAL_CHINESE.equals(userLocale)) return "�c�餤��";
		if(Locale.ENGLISH.equals(userLocale)) return "�^��";
		if(Locale.JAPANESE.equals(userLocale)) return "���";
		return "�����y������";
	}

 %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'methodUse.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <style>
  	body,div,td,input(font-size:14px; line-height:26px;)
  </style>
  
  <body>
    <%
    	String userAgent=request.getHeader("user-agent");
    	Locale userLocale=request.getLocale();
    	os=getOS(userAgent);
    	navigator=getNavigator(userAgent);
    	area=getLocale(userLocale);
     %>
     <br>
     <div align="center" class="leftDiv">
     	<fieldset style="width:400"><legend>�Τ�ݽШD��T</legend>
     		<table align="center" width="200">
     			<tr>
     				<td align="left">�@�~�t��: </td>
     				<td><%=os %></td>
     			</tr>
     			<tr>
     				<td align="left">�s����: </td>
     				<td><%=navigator %></td>
     			</tr>
     			<tr>
     				<td align="left">�ϥλy�t: </td>
     				<td><%=area %></td>
     			</tr>
     		</table>
     	</fieldset>
     </div>
  </body>
</html>
