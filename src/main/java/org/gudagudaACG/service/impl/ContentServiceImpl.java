package org.gudagudaACG.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.gudagudaACG.service.ContentService;
import org.gudagudaACG.dao.ContentDao;
import org.gudagudaACG.model.ContentModel;

@Service
public class ContentServiceImpl implements ContentService 
{
	@Autowired
    private ContentDao contentDao;
	
    @Override
    public void saveContent(ContentModel contentModel) {
    	contentDao.saveContent(contentModel);
    }
}