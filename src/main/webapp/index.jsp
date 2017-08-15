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
		
		<script type="text/javascript">
			//获取ID
			var $ = function (id) {return typeof id === "string" ? document.getElementById(id) : id};
			//获取tagName
			var $$ = function (tagName, oParent) {return (oParent || document).getElementsByTagName(tagName)};
			//自动播放对象
			var AutoPlay = function (id) {this.initialize(id)};
			AutoPlay.prototype = {
				initialize: function (id)
				{
					var oThis = this;
					this.oBox = $(id);
					this.oUl = $$("ul", this.oBox)[0];
					this.aImg = $$("img", this.oBox);
					this.timer = null;
					this.autoTimer = null;
					this.iNow = 0;
					this.creatBtn();
					this.aBtn = $$("li", this.oCount);
					this.toggle();
					this.autoTimer = setInterval(function ()
					{
						oThis.next()
					}, 3000);
					this.oBox.onmouseover = function ()
					{
						clearInterval(oThis.autoTimer)
					};
					this.oBox.onmouseout = function ()
					{
						oThis.autoTimer = setInterval(function ()
						{
							oThis.next()
						}, 3000)
					};
					for (var i = 0; i < this.aBtn.length; i++)
					{
						this.aBtn[i].index = i;
						this.aBtn[i].onmouseover = function ()
						{
							oThis.iNow = this.index;
							oThis.toggle()
						}
					}
				},
				creatBtn: function ()
				{
					this.oCount = document.createElement("ul");
					this.oFrag = document.createDocumentFragment();
					this.oCount.className = "count";
					for (var i = 0; i < this.aImg.length; i++)
					{
						var oLi = document.createElement("li");
						oLi.innerHTML = i + 1;
						this.oFrag.appendChild(oLi)
					}
					this.oCount.appendChild(this.oFrag);
					this.oBox.appendChild(this.oCount)
				},
				toggle: function ()
				{
					for (var i = 0; i < this.aBtn.length; i++) this.aBtn[i].className = "";
					this.aBtn[this.iNow].className = "current";
					this.doMove(-(this.iNow * this.aImg[0].offsetHeight))
				},
				next: function ()
				{
					this.iNow++;
					this.iNow == this.aBtn.length && (this.iNow = 0);
					this.toggle()
				},
				doMove: function (iTarget)
				{
					var oThis = this;
					clearInterval(oThis.timer);
					oThis.timer = setInterval(function ()
					{
						var iSpeed = (iTarget - oThis.oUl.offsetTop) / 5;
						iSpeed = iSpeed > 0 ? Math.ceil(iSpeed) : Math.floor(iSpeed);
						oThis.oUl.offsetTop == iTarget ? clearInterval(oThis.timer) : (oThis.oUl.style.top = oThis.oUl.offsetTop + iSpeed + "px")
					}, 30)
				}
			};
			window.onload = function ()
			{
				new AutoPlay("box_wwwzzjsnet");
				RegLayers();
			};
		</script>
	</head>
	
	<body>
		<div class="div_body" align="center">
			<div class="div_top" align="left">
				
			</div>
			
			<div class="div_middle" align="left">
				<div class="div_left" align="left">
				
				</div>
				
				<div class="div_content" align="left">
					<div class="div_banner" align="left">
						<div id="box_wwwzzjsnet">
				  			<div class="list">
						        <ul>
						            <li><img src="styles/images/banner1.jpeg" width="100%" height="500" /></li>
						            <li><img src="styles/images/banner2.jpg" width="100%" height="500" /></li>
						            <li><img src="styles/images/banner3.jpg" width="100%" height="500" /></li>
						            <li><img src="styles/images/banner4.jpg" width="100%" height="500" /></li>
						            <li><img src="styles/images/banner5.jpg" width="100%" height="500" /></li>
						            <li><img src="styles/images/banner6.jpg" width="100%" height="500" /></li>
						        </ul>
						        <div class="div_banner_title" align="left">
						        	<font size = 10pt color=#ffffff>&nbsp;近期新闻。 </font>
						        </div>
						    </div>
			  			</div>
					</div>
					
					<div class="div_logo" align="left">
						<img src="styles/images/girl.png"/>
					</div>
					
					<div class="div_news" align="left">
						<% int i = 0;%>
						<s:iterator value="contentList" status="i">
							<% if(i % 2 == 0){%>
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