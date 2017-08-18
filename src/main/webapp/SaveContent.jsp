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
					<div class="div_dialog" align="left">
						当前位置： <a href="<s:url action='index' />" >首页</a>-> 管理员页<br/>
					</div>
				
					<hr/>
					<div class="div_savecontent" align="left">
						<s:form action="saveContentForm" method="post" theme="simple">
						<p align="left" style="font-size: 40px; font-family: 'HYZhuZiTongNianTiW Regular', 'Microsoft Yahei', 'STHupo', ">新闻发布区</p>
						<div class="div_edit" align="left">
					        <table style="table-layout:fixed;" width=100%>
					            <tr align="center">
					               	<td>文章标题<br/>（注意：此项必填。）<br/><br/></td>
					                <td><s:textfield name="contentModel.title"/></td>
					                <td><font color="red"><s:fielderror fieldName="contentModel.title"/></font></td>
					            </tr>
					            <tr align="center">
					                <td>作者<br/>（注意：此项必填。）<br/><br/></td>
					                <td><s:textfield name="contentModel.author"/></td>
					                <td><font color="red"><s:fielderror fieldName="contentModel.author"/></font></td>
					            </tr>					            
					            <tr align="center">
					                <td>发布日期<br/>（注意：格式为yyyy-mm-dd hh:mm:ss。此项必填。）<br/><br/></td>
					                <td><s:textfield name="contentModel.date"/></td>
					                <td><font color="red"><s:fielderror fieldName="contentModel.date"/></font></td>
					            </tr>
					            <tr align="center">
					                <td>关键字<br/>（注意：不同关键字用空格隔开。）<br/><br/></td>
					                <td><s:textfield name="contentModel.keywords"/></td>
					                <td><font color="red"><s:fielderror fieldName="contentModel.keywords"/></font></td>
					            </tr>
					            <tr align="center">
					                <td>引用URL<br/>（注意：不同URL用空格隔开。）<br/><br/></td>
					                <td><s:textfield name="contentModel.quote"/></td>
					                <td><font color="red"><s:fielderror fieldName="contentModel.quote"/></font></td>
					            </tr>
					            <tr align="center">
					                <td>预览图<br/>（注意：此项必填。）<br/><br/></td>
					                <td><s:textfield name="contentModel.image"/></td>
					                <td><font color="red"><s:fielderror fieldName="contentModel.image"/></font></td>
					            </tr>
					            <tr align="center">
					                <td>文章摘要<br/>（注意：摘要为纯文本。）<br/><br/></td>
					                <td><s:textarea name="contentModel.abstractstr" cssStyle="width:80%; height:200px"/></td>
					                <td><font color="red"><s:fielderror fieldName="contentModel.abstractstr"/></font></td>
					            </tr>
					            <tr align="center">
					                <td colspan="3">
					                    <hr/><s:submit value="发布"/>
					                </td>
					            </tr>
					        </table>
							<s:actionmessage/>
						</div>
						
						<div class="div_text" align="left">
							<s:textarea id="newsEditor" name="contentModel.content" cssStyle="width:100%; height:650px"/>
							<font color="red"><s:fielderror fieldName="contentModel.content"/></font>
								
							<script type="text/javascript">  
								UE.getEditor('newsEditor');  
								// var content = UE.getPlainTxt();//content就是编辑器的带格式的内容  
							</script>    
						</div>
						
						</s:form>
					</div>
					<hr/>
					
					<div class="div_saveimage" align="left">
						<s:form action="saveImageForm" method="post" theme="simple">
						<p align="left" style="font-size: 40px; font-family: 'HYZhuZiTongNianTiW Regular', 'Microsoft Yahei', 'STHupo', ">图片发布区</p>
						<div class="div_edit" align="left">
					        <table style="table-layout:fixed;" width=100%>
					            <tr align="center">
					               	<td>图片标题<br/>（注意：此项必填。）<br/><br/></td>
					                <td><s:textfield name="imageModel.title"/></td>
					                <td><font color="red"><s:fielderror fieldName="imageModel.title"/></font></td>
					            </tr>
					            <tr align="center">
					                <td>作者<br/>（注意：此项必填。）<br/><br/></td>
					                <td><s:textfield name="imageModel.author"/></td>
					                <td><font color="red"><s:fielderror fieldName="imageModel.author"/></font></td>
					            </tr>					            
					            <tr align="center">
					                <td>发布日期<br/>（注意：格式为yyyy-mm-dd hh:mm:ss。此项必填。）<br/><br/></td>
					                <td><s:textfield name="imageModel.date"/></td>
					                <td><font color="red"><s:fielderror fieldName="imageModel.date"/></font></td>
					            </tr>
					            <tr align="center">
					                <td>关键字<br/>（注意：不同关键字用空格隔开。）<br/><br/></td>
					                <td><s:textfield name="imageModel.keywords"/></td>
					                <td><font color="red"><s:fielderror fieldName="imageModel.keywords"/></font></td>
					            </tr>
					            <tr align="center">
					                <td>引用URL<br/>（注意：不同URL用空格隔开。）<br/><br/></td>
					                <td><s:textfield name="imageModel.quote"/></td>
					                <td><font color="red"><s:fielderror fieldName="imageModel.quote"/></font></td>
					            </tr>
					            <tr align="center">
					                <td>预览图<br/>（注意：此项必填。）<br/><br/></td>
					                <td><s:textfield name="imageModel.image"/></td>
					                <td><font color="red"><s:fielderror fieldName="imageModel.image"/></font></td>
					            </tr>
					            <tr align="center">
					                <td colspan="3">
					                    <hr/><s:submit value="发布"/>
					                </td>
					            </tr>
					        </table>
							<s:actionmessage/>
						</div>
						
						<div class="div_text" align="left">
							<s:textarea id="imageEditor" name="imageModel.content" cssStyle="width:100%; height:420px"/>
							<font color="red"><s:fielderror fieldName="imageModel.content"/></font>
								
							<script type="text/javascript">  
								UE.getEditor('imageEditor');  
								// var content = UE.getPlainTxt();//content就是编辑器的带格式的内容  
							</script>    
						</div>
						
						</s:form>
					</div>
					<hr/>
					
					<div class="div_savebanner" align="left">
						<s:form action="saveBannerForm" method="post" theme="simple">
						<p align="left" style="font-size: 40px; font-family: 'HYZhuZiTongNianTiW Regular', 'Microsoft Yahei', 'STHupo', ">轮播图发布区</p>
						<div class="div_edit" align="left">
					        <table style="table-layout:fixed;" width=100%>				            
					            <tr align="center">
					                <td>发布日期<br/>（注意：格式为yyyy-mm-dd hh:mm:ss。此项必填。）<br/><br/></td>
					                <td><s:textfield name="bannerModel.date"/></td>
					                <td><font color="red"><s:fielderror fieldName="bannerModel.date"/></font></td>
					            </tr>
					            <tr align="center">
					                <td>链接<br/><br/></td>
					                <td><s:textfield name="bannerModel.link"/></td>
					                <td><font color="red"><s:fielderror fieldName="bannerModel.link"/></font></td>
					            </tr>
					            <tr align="center">
					                <td>标题<br/>（注意：标题为纯文本。）<br/><br/></td>
					                <td><s:textarea name="bannerModel.title" cssStyle="width:80%; height:200px"/></td>
					                <td><font color="red"><s:fielderror fieldName="bannerModel.title"/></font></td>
					            </tr>
					            <tr align="center">
					                <td colspan="3">
					                    <hr/><s:submit value="发布"/>
					                </td>
					            </tr>
					        </table>
							<s:actionmessage/>
						</div>
						
						<div class="div_text" align="left">
							<s:textarea id="bannerEditor" name="bannerModel.content" cssStyle="width:100%; height:350px"/>
							<font color="red"><s:fielderror fieldName="bannerModel.content"/></font>
						
							<script type="text/javascript">  
								UE.getEditor('bannerEditor');  
								// var content = UE.getPlainTxt();//content就是编辑器的带格式的内容  
							</script>    
						</div>
						
						</s:form>
					</div>
					<hr/>
					
					<div class="div_saveadver" align="left">
						<s:form action="saveAdvertisementForm" method="post" theme="simple">
						<p align="left" style="font-size: 40px; font-family: 'HYZhuZiTongNianTiW Regular', 'Microsoft Yahei', 'STHupo', ">广告图发布区</p>
						<div class="div_edit" align="left">
					        <table style="table-layout:fixed;" width=100%>				            
					            <tr align="center">
					                <td>发布日期<br/>（注意：格式为yyyy-mm-dd hh:mm:ss。此项必填。）<br/><br/></td>
					                <td><s:textfield name="advertisementModel.date"/></td>
					                <td><font color="red"><s:fielderror fieldName="advertisementModel.date"/></font></td>
					            </tr>
					            <tr align="center">
					                <td>标题<br/>（注意：标题为纯文本。）<br/><br/></td>
					                <td><s:textfield name="advertisementModel.title"/></td>
					                <td><font color="red"><s:fielderror fieldName="advertisementModel.title"/></font></td>
					            </tr>
					            <tr align="center">
					                <td>广告类型<br/>（注意：类型为0,1或2。）<br/><br/></td>
					                <td><s:textfield name="advertisementModel.type"/></td>
					                <td><font color="red"><s:fielderror fieldName="advertisementModel.type"/></font></td>
					            </tr>
					            <tr align="center">
					                <td>显示内容<br/><br/></td>
					                <td><s:textarea name="advertisementModel.content" cssStyle="width:80%; height:200px"/>
					                <td><font color="red"><s:fielderror fieldName="advertisementModel.content"/></font></td>
					            </tr>
					            <tr align="center">
					                <td colspan="3">
					                    <hr/><s:submit value="发布"/>
					                </td>
					            </tr>
					        </table>
							<s:actionmessage/>
						</div>
						
						<div class="div_text" align="left">
							<s:textarea id="adverEditor" name="advertisementModel.link" cssStyle="width:100%; height:430px"/>
							<font color="red"><s:fielderror fieldName="advertisementModel.link"/></font>
						
							<script type="text/javascript">  
								UE.getEditor('adverEditor');  
								// var content = UE.getPlainTxt();//content就是编辑器的带格式的内容  
							</script>    
						</div>
						
						</s:form>
					</div>
					<hr/>
					
					<div class="div_saveparas" align="left">
						<s:form action="saveParasForm" method="post" theme="simple">
						<p align="left" style="font-size: 40px; font-family: 'HYZhuZiTongNianTiW Regular', 'Microsoft Yahei', 'STHupo', ">参数设置区</p>
					        <table style="table-layout:fixed;" width=50%>				            
					            <tr align="center">
					                <td>首页显示新闻数量<br/>（注意：此项必填。）<br/><br/></td>
					                <td><s:textfield name="parasModel.indexNewsNum"/></td>
					                <td><font color="red"><s:fielderror fieldName="parasModel.indexNewsNum"/></font></td>
					            </tr>
					            <tr align="center">
					                <td>首页显示图片数量<br/>（注意：此项必填。）<br/><br/></td>
					                <td><s:textfield name="parasModel.indexImageNum"/></td>
					                <td><font color="red"><s:fielderror fieldName="parasModel.indexImageNum"/></font></td>
					            </tr>
					            <tr align="center">
					                <td>首页显示轮播图数量<br/>（注意：此项必填。）<br/><br/></td>
					                <td><s:textfield name="parasModel.bannerNum"/></td>
					                <td><font color="red"><s:fielderror fieldName="parasModel.bannerNum"/></font></td>
					            </tr>
					            <tr align="center">
					                <td>首页显示广告数量<br/>（注意：此项必填。）<br/><br/></td>
					                <td><s:textfield name="parasModel.advertisementNum"/></td>
					                <td><font color="red"><s:fielderror fieldName="parasModel.advertisementNum"/></font></td>
					            </tr>
					            <tr align="center">
					                <td colspan="3">
					                    <hr/><s:submit value="发布"/>
					                </td>
					            </tr>
					        </table>
							<s:actionmessage/>
						</s:form>
					</div>
					<hr/>
					
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