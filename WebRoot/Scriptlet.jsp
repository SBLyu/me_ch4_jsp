<%@ page language="java" import="java.util.*" pageEncoding="BIG5"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My First JSP-�ƭȲ֥[�p��</title>
    
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
    	int i,num=10,sum=0;
    	for(i=1;i<=num;i++){
    	sum+=i;
    	out.println("�ƭ� "+i+" ��e�`�M�� "+sum+"<br>");
    	}
     %>
     <hr>
     �ƭ� 1�֥[�� <%=num %> ���`�M�� <%=sum %>
  </body>
</html>
