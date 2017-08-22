package org.gudagudaACG.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.opensymphony.xwork2.ActionSupport;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;

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
	private List<String> links;
	
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

	public List<String> getLinks() {
		return links;
	}

	public void setLinks(List<String> links) {
		this.links = links;
	}

	public String execute()
	{
		contentModel = contentService.showOneContent(title);
		links = contentService.parseLinks(contentModel.getQuote());
		
		return SUCCESS;
	}
}
