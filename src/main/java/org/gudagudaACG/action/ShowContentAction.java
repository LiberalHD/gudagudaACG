package org.gudagudaACG.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.opensymphony.xwork2.ActionSupport;
import org.springframework.beans.factory.annotation.Autowired;

import org.gudagudaACG.model.ContentModel;
import org.gudagudaACG.service.ContentService;

@Controller
@Scope("prototype")
public class ShowContentAction extends ActionSupport 
{
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private ContentService contentService;
	
	private ContentModel contentModel;
	private String title;
	
	public ContentModel getContentModel() 
	{
		return contentModel;
	}

	public void setContentModel(ContentModel contentModel) 
	{
		this.contentModel = contentModel;
	}
	
	public String getTitle() 
	{
		return title;
	}

	public void setTitle(String title) 
	{
		this.title = title;
	}

	public String execute()
	{
		contentModel = contentService.showOneContent(title);
		
		return SUCCESS;
	}
}
