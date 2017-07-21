<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>

<html>

	<head>
		<s:head />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
		<title>新闻发布页面</title>
	</head>
	
	<body>
	
		<h2>填写下方表单发布新闻。</h2>
		
		<s:form action="saveContentForm" method="post" theme="simple">
	        <table>
	            <tr>
	                <th>文章标题</th>
	                <td><s:textfield name="contentModel.title"/></td>
	                <td><font color="red"><s:fielderror fieldName="contentModel.title"/></font></td>
	            </tr>
	            <tr>
	                <th>作者</th>
	                <td><s:textfield name="contentModel.author"/></td>
	                <td><font color="red"><s:fielderror fieldName="contentModel.author"/></font></td>
	            </tr>
	            <tr>
	                <th>发布日期（yyyy-mm-dd）</th>
	                <td><s:textfield name="contentModel.date"/></td>
	                <td><font color="red"><s:fielderror fieldName="contentModel.date"/></font></td>
	            </tr>
	            <tr>
	                <th>正文</th>
	                <td><s:textfield name="contentModel.content"/></td>
	                <td><font color="red"><s:fielderror fieldName="contentModel.content"/></font></td>
	            </tr>
	            <tr>
	                <th>关键字（不同关键字用空格隔开）</th>
	                <td><s:textfield name="contentModel.keywords"/></td>
	                <td><font color="red"><s:fielderror fieldName="contentModel.keywords"/></font></td>
	            </tr>
	            <tr>
	                <th>引用URL（不同URL用空格隔开）</th>
	                <td><s:textfield name="contentModel.quote"/></td>
	                <td><font color="red"><s:fielderror fieldName="contentModel.quote"/></font></td>
	            </tr>
	            <tr>
	                <th colspan="2">
	                    <s:submit value="Submit"/>
	                </th>
	                <th> </th>
	            </tr>
	        </table>
	    </s:form>
	
		<s:actionmessage/>
	
		<p>
			<a href="<s:url action='index' />" >返回首页</a>
		</p>
		
	</body>
  
</html>