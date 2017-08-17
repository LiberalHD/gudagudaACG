<!DOCTYPE html>

<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<html>

	<head>
		<s:head />
		
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="pragma" content="no-cache">  
    	<meta http-equiv="cache-control" content="no-cache">  
    	<meta http-equiv="expires" content="0">      
    	
    	<link rel="stylesheet" type="text/css" href="styles/SaveContent.css">
    	
		<script type="text/javascript" src="ueditor/ueditor.config.js"></script>  
		<script type="text/javascript" src="ueditor/ueditor.all.js"></script>  
		<link rel="stylesheet" type="text/css" href="udeditor/themes/default/css" />
		
		<title>新闻发布页面</title>
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
					<s:form action="saveContentForm" method="post" theme="simple">
					<div class="div_edit" align="left">
						<p align="center">填写下方表单发布新闻。</p>
				        <table border="1">
				            <tr>
				                <th>文章标题<br/>（注意：此项必填。）</th>
				                <td><s:textfield name="contentModel.title"/></td>
				            </tr>
				            <tr>
				                <td><font color="red"><s:fielderror fieldName="contentModel.title"/></font></td>
				            </tr>
				            
				            <tr>
				                <th>作者<br/>（注意：此项必填。）</th>
				                <td><s:textfield name="contentModel.author"/></td>
				            </tr>
				            <tr>
				                <td><font color="red"><s:fielderror fieldName="contentModel.author"/></font></td>
				            </tr>
				            
				            <tr>
				                <th>发布日期<br/>（注意：格式为yyyy-mm-dd。此项必填。）</th>
				                <td><s:textfield name="contentModel.date"/></td>
				            </tr>
				            <tr>
				                <td><font color="red"><s:fielderror fieldName="contentModel.date"/></font></td>
				            </tr>
				            
				            <tr>
				                <th>关键字<br/>（注意：不同关键字用空格隔开。）</th>
				                <td><s:textfield name="contentModel.keywords"/></td>
				            </tr>
				            <tr>
				                <td><font color="red"><s:fielderror fieldName="contentModel.keywords"/></font></td>
				            </tr>
				            
				            <tr>
				                <th>引用URL<br/>（注意：不同URL用空格隔开。）</th>
				                <td><s:textfield name="contentModel.quote"/></td>
				            </tr>
				            <tr>
				                <td><font color="red"><s:fielderror fieldName="contentModel.quote"/></font></td>
				            </tr>
				            
				            <tr align="center">
				                <th colspan="2">
				                    <s:submit value="提交"/>
				                </th>
				            </tr>
				        </table>
						<s:actionmessage/>
						
						<p>
							<a href="<s:url action='index' />" >返回首页</a>
						</p>
					</div>
					
					<div class="div_text" align="center">
						<p align="left"> 正文</p>
						<s:textarea id="newsEditor" name="contentModel.content" cssStyle="width:90%; height:1000px"/>
						<font color="red"><s:fielderror fieldName="contentModel.content"/></font>
							
						<script type="text/javascript">  
							UE.getEditor('newsEditor');  
							// var content = UE.getPlainTxt();//content就是编辑器的带格式的内容  
						</script>    
					</div>
					
					</s:form>
				</div>
				
				<div class="div_right" align="left">
				
				</div>
			</div>
			
			<div class="div_bottom" align="left">
				
			</div>
		</div>
		
	</body>
  
</html>