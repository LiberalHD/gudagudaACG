package org.gudagudaACG.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.opensymphony.xwork2.ActionSupport;
import org.springframework.beans.factory.annotation.Autowired;

import org.gudagudaACG.service.UtilService;
import org.gudagudaACG.model.ParasModel;

@Controller
@Scope("prototype")
public class SaveParasAction extends ActionSupport 
{
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private UtilService utilService;
	
	private ParasModel parasModel;

	public String execute()
	{       
        if (parasModel != null)
        {
        	utilService.saveParas(parasModel);
        }
        
        return SUCCESS;
    }
	
	public void validate()
	{
	    if (parasModel.getIndexNewsNum() == 0) 
	    {
	        addFieldError("parasModel.indexNewsNum", "Can't be NUll。");
	    }
	    if (parasModel.getIndexImageNum() == 0) 
	    {
	        addFieldError("parasModel.indexImageNum", "Can't be NUll。");
	    }
	    if (parasModel.getBannerNum() == 0) 
	    {
	        addFieldError("parasModel.bannerNum", "Can't be NUll。");
	    }
	    if (parasModel.getAdvertisementNum() == 0) 
	    {
	        addFieldError("parasModel.advertisementNum", "Can't be NUll。");
	    }
	}

	public ParasModel getParasModel() {
		return parasModel;
	}

	public void setParasModel(ParasModel parasModel) {
		this.parasModel = parasModel;
	}
}