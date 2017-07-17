package org.gudagudaACG.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.opensymphony.xwork2.ActionSupport;
import org.springframework.beans.factory.annotation.Autowired;

import org.gudagudaACG.service.ContentService;
import org.gudagudaACG.model.ContentModel;

@Controller
@Scope("prototype")
public class ContentAction extends ActionSupport 
{
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private ContentService contentService;
	
	private ContentModel contentModel;

	public ContentModel getContentModel() {
		return contentModel;
	}

	public void setContentModel(ContentModel contentModel) {
		this.contentModel = contentModel;
	}

	public String saveContent()
	{       
        if (contentModel != null)
        {
        	contentService.saveContent(contentModel);
        }
        
        return SUCCESS;
    }
}