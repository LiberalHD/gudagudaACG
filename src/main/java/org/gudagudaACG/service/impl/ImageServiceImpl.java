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
	
	@Override
	public void saveImage(ImageModel imageModel) 
	{
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