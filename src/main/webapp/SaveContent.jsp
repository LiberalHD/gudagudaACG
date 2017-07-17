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
		
		<s:form action="saveContent">
			<s:textfield name="contentModel.title" label="文章标题" />
			<s:textfield name="contentModel.author" label="作者" />
			<s:textfield name="contentModel.date"  label ="日期"/>  
			<s:textfield name="contentModel.content"  label="文章内容"  />
			<s:textfield name="contentModel.keywords"  label="关键字（不同关键字用空格隔开）"  />
			<s:textfield name="contentModel.quote"  label="引用URL（不同URL用空格隔开）"  />
			<s:submit/>
		</s:form>	
	
	</body>
  
</html>