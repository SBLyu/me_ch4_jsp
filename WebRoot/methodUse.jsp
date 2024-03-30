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
		return "未知作業系統";
	}
	
	private String getNavigator(String userAgent){
		if(userAgent.indexOf("Chrome")>0) return "Chrome瀏覽器";
		if(userAgent.indexOf("Firefox")>0) return "Firefox瀏覽器";
		if(userAgent.indexOf("MSIE")>0) return "IE瀏覽器";
		return "未知瀏覽器";
	}
	private String getLocale(Locale userLocale){
		if(Locale.SIMPLIFIED_CHINESE.equals(userLocale)) return "簡體中文";
		if(Locale.TRADITIONAL_CHINESE.equals(userLocale)) return "繁體中文";
		if(Locale.ENGLISH.equals(userLocale)) return "英文";
		if(Locale.JAPANESE.equals(userLocale)) return "日文";
		return "未知語言環境";
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
     	<fieldset style="width:400"><legend>用戶端請求資訊</legend>
     		<table align="center" width="200">
     			<tr>
     				<td align="left">作業系統: </td>
     				<td><%=os %></td>
     			</tr>
     			<tr>
     				<td align="left">瀏覽器: </td>
     				<td><%=navigator %></td>
     			</tr>
     			<tr>
     				<td align="left">使用語系: </td>
     				<td><%=area %></td>
     			</tr>
     		</table>
     	</fieldset>
     </div>
  </body>
</html>
