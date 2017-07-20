package org.gudagudaACG.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

import org.gudagudaACG.service.IndexService;
import org.gudagudaACG.model.ContentModel;
import org.gudagudaACG.dao.ContentDao;

@Service
public class IndexServiceImpl implements IndexService 
{
	@Autowired
    private ContentDao contentDao;
	
	@Override
	public List<ContentModel> loadContent() 
	{
		@SuppressWarnings("unchecked")
		List<ContentModel> contentList = (List<ContentModel>) contentDao.loadContent();
		
		return contentList;
	}
}
