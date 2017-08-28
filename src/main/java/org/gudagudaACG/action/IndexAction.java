package org.gudagudaACG.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.opensymphony.xwork2.ActionSupport;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;

import org.gudagudaACG.service.ContentService;
import org.gudagudaACG.service.ImageService;
import org.gudagudaACG.service.UtilService;
import org.gudagudaACG.model.ContentModel;
import org.gudagudaACG.model.ImageModel;
import org.gudagudaACG.model.ParasModel;
import org.gudagudaACG.model.BannerModel;
import org.gudagudaACG.model.AdvertisementModel;

@Controller
@Scope("prototype")
public class IndexAction extends ActionSupport 
{
	private int newsnum = 10;
	private int imagenum = 10;
	private int bannernum = 6;
	private int advernum = 3;
	private int logonum = 3;
	
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private ContentService contentService;
	
	@Autowired
	private ImageService imageService;
	
	@Autowired
	private UtilService utilService;
	
	private List<ContentModel> contentList;
	private List<ImageModel> imageList;
	private List<BannerModel> bannerList;
	
	private List<AdvertisementModel> adverList;
	private AdvertisementModel adverRaw1, adverRaw2;
	
	private List<AdvertisementModel> logoList;
	
	private ParasModel paras;
	
	private void parasSetting()
	{
		newsnum = paras.getIndexNewsNum();
		imagenum = paras.getIndexImageNum();
		bannernum = paras.getBannerNum();
		advernum = paras.getAdvertisementNum();
		
		logonum = 4;
	}
	
	public String execute()
	{
		paras = utilService.getCurrentParas();
		parasSetting();
		
		contentList = contentService.showLatestKContent(newsnum);
		imageList = imageService.showLatestKImage(imagenum);
		bannerList = utilService.showLatestKBanner(bannernum);	
		
		adverList = utilService.showLatestKAdvertisement(advernum, 0);
		adverRaw1 = utilService.showLatestKAdvertisement(advernum, 1).get(0);
		adverRaw2 = utilService.showLatestKAdvertisement(advernum, 2).get(0);
		
		logoList = utilService.showLatestKAdvertisement(logonum, -1);
				
		return SUCCESS;
	}

	public int getImagenum() {
		return imagenum;
	}

	public void setImagenum(int imagenum) {
		this.imagenum = imagenum;
	}

	public int getBannernum() {
		return bannernum;
	}

	public void setBannernum(int bannernum) {
		this.bannernum = bannernum;
	}

	public int getAdvernum() {
		return advernum;
	}

	public void setAdvernum(int advernum) {
		this.advernum = advernum;
	}

	public List<ImageModel> getImageList() {
		return imageList;
	}

	public void setImageList(List<ImageModel> imageList) {
		this.imageList = imageList;
	}

	public List<BannerModel> getBannerList() {
		return bannerList;
	}

	public void setBannerList(List<BannerModel> bannerList) {
		this.bannerList = bannerList;
	}

	public int getLogonum() {
		return logonum;
	}

	public void setLogonum(int logonum) {
		this.logonum = logonum;
	}

	public List<AdvertisementModel> getLogoList() {
		return logoList;
	}

	public void setLogoList(List<AdvertisementModel> logoList) {
		this.logoList = logoList;
	}

	public AdvertisementModel getAdverRaw1() {
		return adverRaw1;
	}

	public void setAdverRaw1(AdvertisementModel adverRaw1) {
		this.adverRaw1 = adverRaw1;
	}

	public AdvertisementModel getAdverRaw2() {
		return adverRaw2;
	}

	public void setAdverRaw2(AdvertisementModel adverRaw2) {
		this.adverRaw2 = adverRaw2;
	}

	public List<AdvertisementModel> getAdverList() {
		return adverList;
	}

	public void setAdverList(List<AdvertisementModel> adverList) {
		this.adverList = adverList;
	}

	public ParasModel getParas() {
		return paras;
	}

	public void setParas(ParasModel paras) {
		this.paras = paras;
	}

	public List<ContentModel> getContentList()
	{
		return contentList;
	}

	public void setContentList(List<ContentModel> contentList) 
	{
		this.contentList = contentList;
	}
	
	public int getNewsnum() 
	{
		return newsnum;
	}

	public void setNewsnum(int newsnum) 
	{
		this.newsnum = newsnum;
	}
}
