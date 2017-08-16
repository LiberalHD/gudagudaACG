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
    	
    	<link rel="stylesheet" type="text/css" href="styles/Index.css">
		
		<title>gudagudaACG</title>
	</head>
	
	<body>
		<div class="div_body" align="center">
			<div class="div_top" align="left">
				
			</div>
			
			<div class="div_middle" align="left">
				<div class="div_left" align="left">
				
				</div>
				
				<div class="div_content" align="left">
					<div class="div_news" align="left">
						<p align = "right">
				        	总新闻数：<s:property value="newsnum" />
				        </p>
					
						<% int i = 0;%>
						<s:iterator value="contentList" status="i">
							<% if(i % 2 != 0){%>
							<div class="div_new_1" align="left">
							<% }else{%>
							<div class="div_new_2" align="left">
							<% }i ++;%>
								<table>
						            <tr align="center">
						            	<td colspan="3">近期新闻 </td>
						            </tr>
						            <tr align="center">
						            	<td>标题</td>
						            	<td>作者</td>
						            	<td>日期</td>
									</tr>
						            <tr align="center">
						            	<td>
						            		<a href="<s:url action='showContent'><s:param name="title" value="title"/></s:url>">
						            			<s:property value="title" />
						            		</a>
						            	</td>
						            	<td><s:property value="author" /></td>
						            	<td><s:property value="date" /></td>
									</tr>
						        </table>
							</div>
				        </s:iterator>
				        <p align="center">
				        	<a href="<s:url action='index' />" >返回主页</a><br/>
				        </p>
					</div>
				</div>
				
				<div class="div_right" align="left">
					
				</div>
			</div>
			
			<div class="div_bottom" align="left">
				<div class="div_links" align="left">
					<p>
						<a href="https://liberalhd.github.io/" >个人主页</a><br/>
						<a href="<s:url action='test' />" >测试页面</a><br/>
					</p>
				</div>
			</div>
		</div>
	        
	</body>
  
</html>