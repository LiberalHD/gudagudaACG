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
    	
    	<link rel="stylesheet" type="text/css" href="styles/AllContent.css">
		
		<title>gudagudaACG</title>
	</head>
	
	<body>
		<div class="div_body" align="center">
			<div class="div_top" align="center">
				<img src="styles/images/logo1.png" height="80%"/>
			</div>
			
			<div class="div_middle" align="left">
				<div class="div_left" align="left">
				
				</div>
				
				<div class="div_content" align="left">
					<div class="div_dialog" align="left">
			        	<h1>当前位置： <a href="<s:url action='index' />" >首页</a> -> 全部新闻<br/></h1>
					</div>
				
					<div class="div_news" align="left">
						<h2 align = "right">
				        	总新闻数：<s:property value="newsnum" />
				        </h2>
					
						<%int i = 0;%>
						<s:iterator value="contentList" status="i">
							<% if(i % 2 != 0){%>
							<div class="div_new_1" align="left">
							<% }else{%>
							<div class="div_new_2" align="left">
							<% }i ++;%>
								<table border= "0" style="table-layout:fixed;" width=100%>
						            <tr align="left">
										<td rowspan=2 width="25%">
											<a style="text-decoration:none" href="<s:url action='showContent'><s:param name="title" value="title"/></s:url>">
						            			<s:property escapeHtml="false" value="image" />
						            		</a>
						            	</td>
										<td style="word-wrap:break-word" width="35%">
											<h2>
												<a style="text-decoration:none" href="<s:url action='showContent'><s:param name="title" value="title"/></s:url>">
							            			<s:property value="title" /><br/>
							            		</a>
						            		</h2>
										</td>
										<td style="word-wrap:break-word" width="25%">
						            		<p>作者：<s:property value="author" /><br/></p>
										</td>
										<td style="word-wrap:break-word">
						            		<p><s:property value="date.substring(0, 10)" /><br/></p>
										</td>
									</tr>
									<tr align="left" height="70%">
										<td style="word-wrap:break-word" colspan=3>
											<p><s:property value="abstractstr" /></p>
										</td>
									</tr>
						        </table>
							</div>
				        </s:iterator>
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