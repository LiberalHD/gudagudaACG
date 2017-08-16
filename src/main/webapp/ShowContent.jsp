<!DOCTYPE html>

<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="pragma" content="no-cache">  
    	<meta http-equiv="cache-control" content="no-cache">  
    	<meta http-equiv="expires" content="0">      
		
		<link rel="stylesheet" type="text/css" href="styles/ShowContent.css">
		
		<title>新闻内容页</title>
	</head>
	
	<body>
		<div class="div_body" align="left">
			<div class="div_top" align="left">
				
			</div>	
			
			<div class="div_middle" align="left">
				<div class="div_left" align="left">
				
				</div>
				
				<div class="div_content" align="center">
					<h1>gudagudaACG</h1>
	    
				    <table>
			            <tr align="left">
			            	<td colspan="3"><s:property value="contentModel.title" /></td>
			            </tr>
			            
			            <tr align="left">
			            	<td><s:property value="contentModel.author" /></td>
			            	<td><s:property value="contentModel.date" /></td>
			            	<td><s:property value="contentModel.keywords" /></td>
						</tr>
						
			            <tr align="left">
			            	<td colspan="3"><s:property value="contentModel.content" /></td>
						</tr>
						
						<tr align="left">
			            	<td colspan="3"><s:property value="contentModel.quote" /></td>
						</tr>
			        </table>
			        
			        <p>
						<a href="<s:url action='index' />" >返回首页</a>
					</p>
				</div>
				
				<div class="div_right" align="left">
				
				</div>
			</div>
			
			<div class="div_bottom" align="left">
				
			</div>
		</div>
	        
	</body>
  
</html>