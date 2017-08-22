package org.gudagudaACG.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.opensymphony.xwork2.ActionSupport;
import org.springframework.beans.factory.annotation.Autowired;

import org.gudagudaACG.service.UtilService;
import org.gudagudaACG.model.BannerModel;
import org.gudagudaACG.model.ContentModel;

@Controller
@Scope("prototype")
public class SaveBannerAction extends ActionSupport 
{
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private UtilService utilService;
	
	private BannerModel bannerModel;
	
	public String execute()
	{       
        if (bannerModel != null)
        {
        	utilService.saveBanner(bannerModel);
        }
        
        return SUCCESS;
    }
	
	public void validate()
	{
	    if (bannerModel.getTitle().length() == 0) 
	    {
	        addFieldError("bannerModel.title", "Can't be NUll¡£");
	    }
	    if (bannerModel.getDate().length() < 10) 
	    {
	        addFieldError("bannerModel.date", "Format error.");
	    }
	}

	public BannerModel getBannerModel() {
		return bannerModel;
	}

	public void setBannerModel(BannerModel bannerModel) {
		this.bannerModel = bannerModel;
	}
}