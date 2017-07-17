<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<s:url action="test" var="helloLink">
	<s:param name="userName">hd params</s:param>
</s:url>

<html>

	<head>
	
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>gudagudaACG</title>
		
	</head>
	
	<body>
	
		<h1>Welcome To Struts 2!</h1>
		
		<p>
			<a href="${helloLink}">Hello World with paras</a>
		</p>
		
		<p>Get your own personal hello by filling out and submitting this form.</p>

		<s:form action="test">
			<s:textfield name="userName" label="Your name" />
			<s:submit value="Submit" />
		</s:form>
		
		<p><a href="register.jsp">Please register</a> for our prize drawing.</p>
		
		<h1>新增商品</h1>
	    
	    <s:form action="product_save" method="post" theme="simple">
	        <table width="600px">
	            <tr>
	                <th>商品名称</th>
	                <td><s:textfield name="pname"/></td>
	                <td><font color="red"><s:fielderror fieldName="pname"/></font></td>
	            </tr>
	            <tr>
	                <th>商品价格</th>
	                <td><s:textfield name="price"/></td>
	                <td><font color="red"><s:fielderror fieldName="price"/></font></td>
	            </tr>
	            <tr>
	                <th colspan="2">
	                    <input type="submit" value="保存"/>
	                </th>
	                <th> </th>
	            </tr>
	        </table>
	    </s:form>
	    
	    <s:actionmessage/>
	    
	</body>
  
</html>