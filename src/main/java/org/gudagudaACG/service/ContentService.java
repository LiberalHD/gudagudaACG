package org.gudagudaACG.service;

import java.util.List;

import org.gudagudaACG.model.ContentModel;

public interface ContentService 
{
	void saveContent(ContentModel contentModel);
	List<ContentModel> showAllContent();
	ContentModel showOneContent(String title);
}