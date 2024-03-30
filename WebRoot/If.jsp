<%@ page language="java" import="java.util.*" pageEncoding="BIG5"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'If.jsp' starting page</title>
    
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
    <%
    	String param=request.getParameter("param");
    	if("1".equals(param)){
     %>
     	登鸛雀樓  王之渙<br>
     	白日依山盡，黃河入海流。<br>
		欲窮千里目，更上一層樓。<br>
	<%
		}
		else if("2".equals(param)){
	 %>
	 	相思  王維<br>
	 	紅豆生南國，春來發幾枝？<br>
	 	願君多採摘，此物最相思。<br>
	<%
		}
		else if("3".equals(param)){
	 %>
	 	八陣圖  杜甫<br>
	 	功蓋三分國，名成八陣圖。<br>
	 	江流石不轉，遺恨失吞吳。<br>
	 <%
	 	}else{
	  %>
	  	<fieldset style="width:75%">
	  		<legend><b>請選擇所要的唐詩: </b></legend>
	  	
	  		<a href="If.jsp?param=1">登鸛雀樓  王之渙</a><br>
	  		<a href="If.jsp?param=2">相思  王維</a><br>
	  		<a href="If.jsp?param=3">八陣圖  杜甫</a><br>
	  	</fieldset>
     <%} %>
  </body>
</html>
