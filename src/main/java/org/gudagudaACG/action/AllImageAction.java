package org.gudagudaACG.action;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.opensymphony.xwork2.ActionSupport;

import org.gudagudaACG.model.ImageModel;
import org.gudagudaACG.service.ImageService;

@Controller
@Scope("prototype")
public class AllImageAction extends ActionSupport 
{
	private int imagenum = 0;
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private ImageService imageService;
	
	private List<ImageModel> imageList;
	
	public String execute()
	{
		imageList = imageService.showAllImage();
		imagenum = imageList.size();
		
		return SUCCESS;
	}

	public int getImagenum() {
		return imagenum;
	}

	public void setImagenum(int imagenum) {
		this.imagenum = imagenum;
	}

	public List<ImageModel> getImageList() 
	{
		return imageList;
	}

	public void setImageList(List<ImageModel> imageList) 
	{
		this.imageList = imageList;
	}
}