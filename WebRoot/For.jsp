<%@ page language="java" import="java.util.*" pageEncoding="BIG5"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'For.jsp' starting page</title>
    
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
    <br>
    <%
    	Object mail[][]={
    		{"�z���U����T�w���ҳq�L","aaa@aaa.aaa","bbb@bbb.bbb","2015-12-18"},
    		{"�z�w���\���o���B���ɸ��","aaa@aaa.aaa","bbb@bbb.bbb","2015-12-18"},
    		{"�z�ӽЪ��U�ڤw�֭�","aaa@aaa.aaa","bbb@bbb.bbb","2015-12-18"},
    		{"�кɳt�ӳ��ӤH�ұo�|","aaa@aaa.aaa","bbb@bbb.bbb","2015-12-18"}
    	};
    	
    	String bgcolors[]={"#EEEEEE","#999999"};
    	String textcolors[]={"#337788","#FFFFFF"};
     %>
     
     <table border="1" cellspacing="1" cellpadding="10" width="750" align="centen">
     	<tr>
     		<td align="center" style="line-height:22px;">�D�� &nbsp;</td>
     		<td align="center" style="line-height:22px;">�H��H &nbsp;</td>
     		<td align="center" style="line-height:22px;">����H &nbsp;</td>
     		<td align="center" style="line-height:22px;">������ &nbsp;</td>
     	</tr>
     	
     	<%
     		for(int i=0;i<mail.length;i++){
     			Object row[]=mail[i];
     	 %>
     	
     	<tr style="background: <%=bgcolors[i%2] %>;color:<%=textcolors[i%2] %>;">
     		<td><%=row[0] %></td>
     		<td><%=row[1] %></td>
     		<td><%=row[2] %></td>
     		<td align="center"><%=row[3] %></td>
     	</tr>
     	
     	<%
     		}
     	 %>
     </table>
     
  </body>
</html>
