package org.gudagudaACG.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.opensymphony.xwork2.ActionSupport;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;

import org.gudagudaACG.model.ContentModel;
import org.gudagudaACG.service.IndexService;

@Controller
@Scope("prototype")
public class IndexAction extends ActionSupport 
{
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private IndexService indexService;
	
	private List<ContentModel> contentList;
	
	public String showContent()
	{
		contentList = indexService.loadContent();
			
		return SUCCESS;
	}
	
	public List<ContentModel> getContentList() 
	{
		return contentList;
	}

	public void setContentList(List<ContentModel> contentList) 
	{
		this.contentList = contentList;
	}
}
