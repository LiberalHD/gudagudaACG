package org.gudagudaACG.service;

import java.util.List;

import org.gudagudaACG.model.ContentModel;

public interface ContentService 
{
	List<String> parseLinks(String links);
	
	void saveContent(ContentModel contentModel);
	
	List<ContentModel> showAllContent();
	ContentModel showOneContent(String title);
	
	List<ContentModel> showLatestKContent(int k);
	
	void deleteContentByID(int id);
}