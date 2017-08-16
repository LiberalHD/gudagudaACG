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
public class IndexAction extends ActionSupport 
{
	private int newsnum = 10;
	
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private ContentService contentService;
	
	private List<ContentModel> contentList;
	
	public String execute()
	{
		contentList = contentService.showLatestKContent(newsnum);
		
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
	
	public int getNewsnum() 
	{
		return newsnum;
	}

	public void setNewsnum(int newsnum) 
	{
		this.newsnum = newsnum;
	}
}
