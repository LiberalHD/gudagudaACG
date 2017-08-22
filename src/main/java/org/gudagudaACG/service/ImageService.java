package org.gudagudaACG.service;

import java.util.List;

import org.gudagudaACG.model.ImageModel;

public interface ImageService 
{
	List<String> parseLinks(String links);
	
	void saveImage(ImageModel imageModel);
	
	List<ImageModel> showAllImage();
	ImageModel showOneImage(String title);
	
	List<ImageModel> showLatestKImage(int k);
	
	void deleteImageByID(int id);
}