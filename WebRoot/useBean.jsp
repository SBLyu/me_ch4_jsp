<%@ page language="java" import="java.util.*" pageEncoding="BIG5"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'useBean.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body><br>
    <jsp:useBean id="personObj" class="mad.nthu.ch4_jsp.bean.Person" scope="page"></jsp:useBean>
    <jsp:setProperty property="*" name="personObj"/>
    
    <div>
    	<form>
    		<fieldset style="sidth:300">
    			<legend>�z�Ҷ�gPerson����T</legend>
    			<table>
    				<tr>
    					<td align="right" style="font-weight:bold;">�m�W:</td>
    					<td>
    						<%-- ��opersonObj��name�ݩ� --%>
    						<jsp:getProperty property="name" name="personObj"/>
    					</td>
    				</tr>
    				<tr>
    					<td align="right" style="font-weight:bold;">�~��:</td>
    					<td>
    						<%-- ��opersonObj��age�ݩ� --%>
    						<jsp:getProperty property="age" name="personObj"/>
    					</td>
    				</tr>
    				<tr>
    					<td align="right" style="font-weight:bold;">�ʧO:</td>
    					<td>
    						<%-- ��opersonObj��sex�ݩ� --%>
    						<jsp:getProperty property="sex" name="personObj"/>
    					</td>
    				</tr>
    				<tr>
    					<td align="right" style="font-weight:bold;"></td>
    					<td>
    						<input type="button" onclick="history.go(-1);" value=" ��^ " class="button">
    					</td>
    				</tr>
    			</table>
    		</fieldset>
    	</form>
    </div>
  </body>
</html>
