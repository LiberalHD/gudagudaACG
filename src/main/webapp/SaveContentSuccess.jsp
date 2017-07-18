<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    
    <title>发布成功</title>
  </head>
  
  <body>
  
    <h3>发布成功，点击下方链接返回发布页。</h3>

    <p>
    	发布文章的信息为:  <s:property value="contentModel" /> 
    </p>

    <p><a href="<s:url action='editContent' />" >继续发布</a></p>
    <p><a href="<s:url action='index' />" >返回主页</a></p>
    
  </body>
</html>