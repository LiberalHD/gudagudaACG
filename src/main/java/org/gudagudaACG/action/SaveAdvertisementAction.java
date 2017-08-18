package org.gudagudaACG.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.opensymphony.xwork2.ActionSupport;
import org.springframework.beans.factory.annotation.Autowired;

import org.gudagudaACG.service.UtilService;
import org.gudagudaACG.model.AdvertisementModel;
import org.gudagudaACG.model.BannerModel;

@Controller
@Scope("prototype")
public class SaveAdvertisementAction extends ActionSupport 
{
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private UtilService utilService;
	
	private AdvertisementModel advertisementModel;
	
	private AdvertisementModel formatContent(AdvertisementModel advertisementModel)
	{
		advertisementModel.setContent(advertisementModel.getContent().substring(3, advertisementModel.getContent().length()-4));
		
		return advertisementModel;
	}

	public String execute()
	{       
        if (advertisementModel != null)
        {
        	advertisementModel = formatContent(advertisementModel);
        	utilService.saveAdvertisement(advertisementModel);
        }
        
        return SUCCESS;
    }
	
	public void validate()
	{
	    if (advertisementModel.getTitle().length() == 0) 
	    {
	        addFieldError("advertisementModel.title", "Can't be NUll��");
	    }
	    if (advertisementModel.getDate().length() < 10) 
	    {
	        addFieldError("advertisementModel.date", "Format error.");
	    }
	    if (advertisementModel.getType() != 0 && advertisementModel.getType() != 1 && advertisementModel.getType() != 2) 
	    {
	        addFieldError("advertisementModel.type", "0 is normal, 1 is row, 2 is col��");
	    }
	}

	public AdvertisementModel getAdvertisementModel() {
		return advertisementModel;
	}

	public void setAdvertisementModel(AdvertisementModel advertisementModel) {
		this.advertisementModel = advertisementModel;
	}
}