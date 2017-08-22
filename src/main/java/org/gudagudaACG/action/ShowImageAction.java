package org.gudagudaACG.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.opensymphony.xwork2.ActionSupport;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;

import org.gudagudaACG.model.ImageModel;
import org.gudagudaACG.service.ImageService;

@Controller
@Scope("prototype")
public class ShowImageAction extends ActionSupport 
{
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private ImageService imageService;
	
	private ImageModel imageModel;
	private String title;
	private List<String> links;
	
	public ImageModel getImageModel() 
	{
		return imageModel;
	}

	public void setImageModel(ImageModel imageModel) 
	{
		this.imageModel = imageModel;
	}
	
	public String getTitle() 
	{
		return title;
	}

	public void setTitle(String title) 
	{
		this.title = title;
	}
	
	public List<String> getLinks() {
		return links;
	}

	public void setLinks(List<String> links) {
		this.links = links;
	}

	public String execute()
	{
		imageModel = imageService.showOneImage(title);
		links = imageService.parseLinks(imageModel.getQuote());
		
		return SUCCESS;
	}
}
