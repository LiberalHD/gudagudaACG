package org.gudagudaACG.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

import org.gudagudaACG.service.ContentService;
import org.gudagudaACG.dao.ContentDao;
import org.gudagudaACG.model.ContentModel;

@Service
public class ContentServiceImpl implements ContentService 
{
	@Autowired
    private ContentDao contentDao;
	
    @Override
    public void saveContent(ContentModel contentModel) 
    {
    	contentDao.addContent(contentModel);
    }
    
    @Override
	public List<ContentModel> showAllContent() 
	{
    	String queryString = "from ContentModel contentModel";
		List<ContentModel> contentList = contentDao.selectContent(queryString);
		
		return contentList;
	}
    
    @Override
    public ContentModel showOneContent(String title)
    {
    	String queryString = "from ContentModel contentModel where title='" + title + "'";
		List<ContentModel> contentList = contentDao.selectContent(queryString);
		
		return contentList.get(0);
    }
}


