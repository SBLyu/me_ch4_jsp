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
    			<legend>您所填寫Person的資訊</legend>
    			<table>
    				<tr>
    					<td align="right" style="font-weight:bold;">姓名:</td>
    					<td>
    						<%-- 獲得personObj的name屬性 --%>
    						<jsp:getProperty property="name" name="personObj"/>
    					</td>
    				</tr>
    				<tr>
    					<td align="right" style="font-weight:bold;">年齡:</td>
    					<td>
    						<%-- 獲得personObj的age屬性 --%>
    						<jsp:getProperty property="age" name="personObj"/>
    					</td>
    				</tr>
    				<tr>
    					<td align="right" style="font-weight:bold;">性別:</td>
    					<td>
    						<%-- 獲得personObj的sex屬性 --%>
    						<jsp:getProperty property="sex" name="personObj"/>
    					</td>
    				</tr>
    				<tr>
    					<td align="right" style="font-weight:bold;"></td>
    					<td>
    						<input type="button" onclick="history.go(-1);" value=" 返回 " class="button">
    					</td>
    				</tr>
    			</table>
    		</fieldset>
    	</form>
    </div>
  </body>
</html>
