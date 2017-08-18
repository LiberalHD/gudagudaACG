package org.gudagudaACG.service;

import java.util.List;

import org.gudagudaACG.model.ParasModel;
import org.gudagudaACG.model.BannerModel;
import org.gudagudaACG.model.AdvertisementModel;

public interface UtilService 
{
	void saveParas(ParasModel parasModel);
	ParasModel getCurrentParas();
	void clearParas();
	
	void saveBanner(BannerModel bannerModel);
	List<BannerModel> showAllBanner();
	List<BannerModel> showLatestKBanner(int k);
	void deleteBannerByID(int id);
	
	void saveAdvertisement(AdvertisementModel advertisementModel);
	List<AdvertisementModel> showAllAdvertisementByType(int type);
	List<AdvertisementModel> showLatestKAdvertisement(int k, int type);
	void deleteAdvertisementByID(int id);
}
