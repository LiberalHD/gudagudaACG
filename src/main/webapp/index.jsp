<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="pragma" content="no-cache">  
    	<meta http-equiv="cache-control" content="no-cache">  
    	<meta http-equiv="expires" content="0">      
		
		<title>gudagudaACG</title>
	</head>
	
	<body>
	
		<h1>欢迎访问gudagudaACG</h1>
		
		<p>
			<a href="<s:url action='editContent' />" >发布新闻</a><br/>
			<a href="<s:url action='test' />" >测试页面功能</a>
		</p>
	    
	    <table border="1">
            <tr align="center">
            	<td colspan="3">  近期新闻  </td>
            </tr>
            <tr align="center">
            	<td>标题</td>
            	<td>作者</td>
            	<td>日期</td>
			</tr>
            <s:iterator value="contentList" status="i">
            <tr align="center">
            	<td><s:property value="title" /></td>
            	<td><s:property value="author" /></td>
            	<td><s:property value="date" /></td>
			</tr>
			</s:iterator>
        </table>
	        
	</body>
  
</html>