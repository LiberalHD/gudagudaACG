package org.gudagudaACG.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.opensymphony.xwork2.ActionSupport;
import org.springframework.beans.factory.annotation.Autowired;

import org.gudagudaACG.service.ImageService;
import org.gudagudaACG.model.ImageModel;

@Controller
@Scope("prototype")
public class SaveImageAction extends ActionSupport 
{
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private ImageService imageService;
	
	private ImageModel imageModel;

	public String execute()
	{       
        if (imageModel != null)
        {
        	imageService.saveImage(imageModel);
        }
        
        return SUCCESS;
    }
	
	public void validate()
	{
	    if (imageModel.getTitle().length() == 0) 
	    {
	        addFieldError("imageModel.title", "Can't be NUll¡£");
	    }
	    if (imageModel.getAuthor().length() == 0) 
	    {
	        addFieldError("imageModel.author", "Can't be NUll¡£");
	    }
	    if (imageModel.getDate().length() < 10) 
	    {
	        addFieldError("imageModel.date", "Format error.");
	    }
	    if (imageModel.getKeywords().length() == 0) 
	    {
	        addFieldError("imageModel.keywords", "Can't be NUll¡£");
	    }
	}

	public ImageModel getImageModel() {
		return imageModel;
	}

	public void setImageModel(ImageModel imageModel) {
		this.imageModel = imageModel;
	}
}