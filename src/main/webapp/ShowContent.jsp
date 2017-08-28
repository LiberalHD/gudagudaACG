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
		
		<title>gudagudaACG</title>
	</head>
	
	<body>
		<div class="div_body" align="left">
			<div class="div_top" align="center">
				<img src="styles/images/logo1.png" height="80%"/>
			</div>	
			
			<div class="div_middle" align="left">
				<div class="div_left" align="left">
				
				</div>
				
				<div class="div_content" align="center">
					<div class="div_dialog" align="left">
						<h1>当前位置： <a href="<s:url action='index' />" >首页</a> -> 新闻内容<br/></h1>
					</div>
	    			
				    <table style="table-layout:fixed;" width=100%>
			            <tr align="center">
			            	<td colspan="3"><h2><br/><s:property value="contentModel.title" /></h2><hr/></td>
			            </tr>
			            
			            <tr align="left">
			            	<td>作者：<s:property value="contentModel.author" /></td>
			            	<td>日期：<s:property value="contentModel.date.substring(0, 10)" /></td>
			            	<td>标签：<s:property value="contentModel.keywords" /></td>
						</tr>
						
			            <tr align="left">
							<td colspan="3">
								<hr/><s:property value="contentModel.content" escapeHtml="false"/>
							</td>
						</tr>
						
						<tr align="left">
			            	<td colspan="3"><hr/><p>引用链接：</p>
			            		<s:iterator value="links" status="i">
			            			<p>
			            				&nbsp;&nbsp;&nbsp;&nbsp;
				            			<a href=<s:property/> >
					            			<s:property/>
					            		</a>
				            		</p>
			            		</s:iterator>
			            	</td>
						</tr>
			        </table>
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