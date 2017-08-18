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
    	
    	<link rel="stylesheet" type="text/css" href="styles/AllImage.css">
		
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
						当前位置： <a href="<s:url action='index' />" >首页</a> -> 全部图片<br/>
					</div>
				
					<div class="div_images" align="center">
						<p align = "right">
				        	总图片数：<s:property value="imagenum" />
				        </p>
					
						<% int i = 0;%>
						<s:iterator value="imageList" status="i">
							<% if(i % 2 != 0){%>
							<div class="div_image_1" align="left">
							<% }else{%>
							<div class="div_image_2" align="left">
							<% }%>
								<table border= "1" style="table-layout:fixed;" width=100%>
						            <tr align="left">
										<td>
											<a style="text-decoration:none" href="<s:url action='showImage'><s:param name="title" value="title"/></s:url>">
						            			<s:property escapeHtml="false" value="image" />
						            		</a>
						            	</td>
									</tr>
									<tr align="center" height="30px">
										<td style="word-wrap:break-word">
											<a style="text-decoration:none" href="<s:url action='showImage'><s:param name="title" value="title"/></s:url>">
						            			<s:property value="title" /><br/>
						            		</a>
										</td>
									</tr>
									<tr align="center" height="30px">
										<td style="word-wrap:break-word">
						            		作者：<s:property value="author" /><br/>
										</td>
									</tr>
									<tr align="center" height="30px">
										<td style="word-wrap:break-word">
						            		日期：<s:property value="date" /><br/>
										</td>
									</tr>
						        </table>
							</div>
							<%i++; %>
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