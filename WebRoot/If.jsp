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
     	�n�|����  �����A<br>
     	�դ�̤s�ɡA���e�J���y�C<br>
		���a�d���ءA��W�@�h�ӡC<br>
	<%
		}
		else if("2".equals(param)){
	 %>
	 	�۫�  ����<br>
	 	�����ͫn��A�K�ӵo�X�K�H<br>
	 	�@�g�h�ĺK�A�����̬۫�C<br>
	<%
		}
		else if("3".equals(param)){
	 %>
	 	�K�}��  ���j<br>
	 	�\�\�T����A�W���K�}�ϡC<br>
	 	���y�ۤ���A��륢�]�d�C<br>
	 <%
	 	}else{
	  %>
	  	<fieldset style="width:75%">
	  		<legend><b>�п�ܩҭn�����: </b></legend>
	  	
	  		<a href="If.jsp?param=1">�n�|����  �����A</a><br>
	  		<a href="If.jsp?param=2">�۫�  ����</a><br>
	  		<a href="If.jsp?param=3">�K�}��  ���j</a><br>
	  	</fieldset>
     <%} %>
  </body>
</html>
