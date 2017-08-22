package org.gudagudaACG.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Collections;
import java.util.List;

import org.gudagudaACG.model.ImageModel;
import org.gudagudaACG.service.ImageService;
import org.gudagudaACG.dao.ImageDao;

@Service
public class ImageServiceImpl implements ImageService 
{
	@Autowired
    private ImageDao imageDao;
	
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
	public void saveImage(ImageModel imageModel) 
	{
		String image = "";
    	
    	image = generateImage(imageModel.getContent());
    	imageModel.setImage(image);
		
		imageDao.addImage(imageModel);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ImageModel> showAllImage() 
	{
		String queryString = "from ImageModel imageModel";
		List<ImageModel> imageList = imageDao.selectImage(queryString);
		
		Collections.sort(imageList);
		
		return imageList;
	}
	
	@Override
    public List<String> parseLinks(String links)
    {
    	String[] linkarray = links.split(" ");
    	List<String> ret = java.util.Arrays.asList(linkarray);
    	
    	return ret;
    }

	@Override
	public ImageModel showOneImage(String title)
	{
		String queryString = "from ImageModel imageModel where title='" + title + "'";
		List<ImageModel> imageList = imageDao.selectImage(queryString);
		
		return imageList.get(0);
	}

	@Override
	public List<ImageModel> showLatestKImage(int k) 
	{
		List<ImageModel> imageList = showAllImage();
   		
   		int size = imageList.size();
   		if (size > k)
   		{
   			for(int i = k; i < size; i ++)
   			{
   			    imageList.remove(k);
   			}
   		}
   		
   		return imageList;
	}
	
	@Override
	public void deleteImageByID(int id)
	{
		String queryString = "from ImageModel imageModel where id='" + id + "'";
		imageDao.deleteImage(queryString);
	}
}