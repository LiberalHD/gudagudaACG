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
		<script language='javascript' src='js/Banner.js'></script> 
		
		<title>gudagudaACG</title>
	</head>
		
	<body>
		<div class="div_body" align="center">
			<div class="div_top" align="center">
				<img src="styles/images/logo2.png" height="80%"/>
			</div>
			
			<div class="div_middle" align="left">
				<div class="div_left" align="left">
				
				</div>
				
				<div class="div_content" align="left">
					<div class="div_dialog" align="left">
						当前位置： <a href="<s:url action='index' />" >首页</a><br/>
					</div>
				
					<div class="div_banner" align="left">
						<div id="box_wwwzzjsnet">
				  			<div class="list">
						        <ul>
									<s:iterator value="bannerList" status="i">
									<li>
										<div class="div_banner_img" align="left">
								            <a href="<s:url action='showContent'><s:param name="title" value="link"/></s:url>">
							            		<s:property value="content" escapeHtml="false"/>
							            	</a>
							            	<div class="div_banner_title" align="left">
							            		<a style="text-decoration:none" href="<s:url action='showContent'><s:param name="title" value="link"/></s:url>">
									        		<font size = 6pt color=#ffffff>&nbsp;<s:property value="title"/></font>
									        	</a>
									        </div>
										</div>
									</li>
							        </s:iterator>
						        </ul>
						    </div>
			  			</div>
					</div>
					
					<div class="div_logo" align="left">
						<img src="styles/images/girl.png"/>
					</div>
					
					<div class="div_adver_0" align="left" >
						<img src="styles/images/adverbg.png" width="100%"/>
						
						<div class="div_adver_0_inner" align="left" >
							<s:iterator value="adverList" status="i">
								<s:property value="link" escapeHtml="false"/>
				            		<s:property value="content" escapeHtml="false"/>
				            	</a>
								&nbsp;&nbsp;
					        </s:iterator>
						</div>
					</div>
					
					<div class="div_adver_1" align="left" >
						<a href='<s:property value="adverRaw1.link" escapeHtml="false"/>'>
							<s:property value="adverRaw1.content" escapeHtml="false"/>
						</a>
					</div>
				
					<div class="div_news" align="center">
						<div class="div_new_0" align="left" >
							<img src="styles/images/newsbg.png" width="100%"/>
						</div>
						
						<div class="div_new_0_5" align="left" >
							<p align="right">
								<br/><a href="<s:url action='allContent'/>" >显示全部</a>
							</p>
						</div>
							
						<%int i = 0;%>
						<s:iterator value="contentList" status="i">
							<% if(i % 2 != 0){%>
							<div class="div_new_1" align="left">
							<% }else{%>
							<div class="div_new_2" align="left">
							<% }i ++;%>
								<table border= "1" style="table-layout:fixed;" width=100%>
						            <tr align="left">
										<td rowspan=2 width="25%">
											<a style="text-decoration:none" href="<s:url action='showContent'><s:param name="title" value="title"/></s:url>">
						            			<s:property escapeHtml="false" value="image" />
						            		</a>
						            	</td>
										<td style="word-wrap:break-word">
											<a style="text-decoration:none" href="<s:url action='showContent'><s:param name="title" value="title"/></s:url>">
						            			<s:property value="title" /><br/>
						            		</a>
										</td>
									</tr>
									<tr align="left" height="70%">
										<td style="word-wrap:break-word">
											<s:property value="abstractstr" />
										</td>
									</tr>
						        </table>
							</div>
				        </s:iterator>
					</div>
					
					<div class="div_adver_2" align="left" >
						<s:property value="adverRaw2.link" escapeHtml="false"/>
							<s:property value="adverRaw2.content" escapeHtml="false"/>
						</a>
					</div>
					
					<div class="div_images" align="left">
						<div class="div_image_0" align="left" >
							<img src="styles/images/imagesbg.png" width="100%"/>
						</div>
						
						<div class="div_image_0_5" align="left" >
							<p align="right">
								<br/><a href="<s:url action='allImage'/>" >显示全部</a>
							</p>
						</div>
						
						<div class="div_image_outer" align="left">
						<% i = 0;%>
						<s:iterator value="imageList" status="i">
							<% if(i % 2 == 0){%>
								<div class="div_image_2" align="left">
								<% }else{%>
								<div class="div_image_1" align="left">
								<% }%>
								
									<table border= "1" style="table-layout:fixed;" width=100%>
							            <tr align="center">
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
							        </table>
								</div>
							
							<%i++; %>
				        </s:iterator>
						</div>
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