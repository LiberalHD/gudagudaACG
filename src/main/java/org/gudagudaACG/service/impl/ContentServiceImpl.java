package org.gudagudaACG.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Collections;
import java.util.List;

import org.gudagudaACG.service.ContentService;
import org.gudagudaACG.dao.ContentDao;
import org.gudagudaACG.model.ContentModel;

@Service
public class ContentServiceImpl implements ContentService 
{
	@Autowired
    private ContentDao contentDao;
	
	private String getFirstImage(String content)
	{
		String image = "";
		int start = content.indexOf("<img");
		int end = content.indexOf("/>", start) + 2;
		
		image = content.substring(start, end);
		
		return image;
	}
	
	private String deleteWidthandHeight(String image)
	{
		String ret = image;
		
		int start = image.indexOf("width");
		if (start != -1)
		{
			int end = image.indexOf("\"", image.indexOf("\"", start) + 1) + 1;
			String width = image.substring(start, end);
			ret = image.replace(width, "");
		}
		
		start = ret.indexOf("height");
		if (start != -1)
		{
			int end = ret.indexOf("\"", image.indexOf("\"", start) + 1) + 1;
			String height = ret.substring(start, end);
			ret = ret.replace(height, "");
		}
		
		return ret;
	}
	
	private String generateImage(String content)
	{
		String image = "";
		
		image = getFirstImage(content);
		image = deleteWidthandHeight(image);
		int pos = image.indexOf("/>");
		
		StringBuilder sb = new StringBuilder(image);
		sb.insert(pos," width=\"100%\"");

		return sb.toString();
	}
	
    @Override
    public void saveContent(ContentModel contentModel) 
    {
    	String image = "";
    	
    	image = generateImage(contentModel.getContent());
    	contentModel.setImage(image);
    	
    	contentDao.addContent(contentModel);
    }
    
    @SuppressWarnings("unchecked")
    @Override
	public List<ContentModel> showAllContent() 
	{
    	String queryString = "from ContentModel contentModel";
		List<ContentModel> contentList = contentDao.selectContent(queryString);
		
		Collections.sort(contentList);
		
		return contentList;
	}
    
    @Override
    public List<String> parseLinks(String links)
    {
    	String[] linkarray = links.split(" ");
    	List<String> ret = java.util.Arrays.asList(linkarray);
    	
    	return ret;
    }
    
    @Override
    public ContentModel showOneContent(String title)
    {
    	String queryString = "from ContentModel contentModel where title='" + title + "'";
		List<ContentModel> contentList = contentDao.selectContent(queryString);
		
		ContentModel ret = contentList.get(0);

		return ret;
    }
    
	@Override
   	public List<ContentModel> showLatestKContent(int k)
   	{
   		List<ContentModel> contentList = showAllContent();
   		
   		int size = contentList.size();
   		if (size > k)
   		{
   			for(int i = k; i < size; i ++)
   			{
   			    contentList.remove(k);
   			}
   		}
   		
   		return contentList;
   	}
	
	@Override
    public void deleteContentByID(int id)
    {
    	String queryString = "from ContentModel contentModel where id='" + id + "'";
		contentDao.deleteContent(queryString);
    }
}