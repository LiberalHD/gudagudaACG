package org.gudagudaACG.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Collections;
import java.util.List;

import org.gudagudaACG.model.AdvertisementModel;
import org.gudagudaACG.model.BannerModel;
import org.gudagudaACG.model.ParasModel;
import org.gudagudaACG.dao.ParasDao;
import org.gudagudaACG.dao.BannerDao;
import org.gudagudaACG.dao.AdvertisementDao;
import org.gudagudaACG.service.UtilService;

@Service
public class UtilServiceImpl implements UtilService 
{
	@Autowired
	private ParasDao parasDao;
	
	@Autowired
	private BannerDao bannerDao;
	
	@Autowired
	private AdvertisementDao advertisementDao;
	
	@Override
	public void clearParas()
	{
		String queryString = "from ParasModel parasModel";
		parasDao.deleteParas(queryString);
	}
	
	@Override
	public void saveParas(ParasModel parasModel) 
	{
		clearParas();
		parasDao.addParas(parasModel);
	}
	
	@Override
	public ParasModel getCurrentParas() 
	{
		String queryString = "from ParasModel parasModel";
		List<ParasModel> parasList = parasDao.selectParas(queryString);
		
		return parasList.get(0);
	}

	@Override
	public void saveBanner(BannerModel bannerModel) 
	{
		bannerDao.addBanner(bannerModel);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<BannerModel> showAllBanner()
	{
		String queryString = "from BannerModel bannerModel";
		List<BannerModel> bannerList = bannerDao.selectBanner(queryString);
		
		Collections.sort(bannerList);
		
		return bannerList;
	}
	
	@Override
	public List<BannerModel> showLatestKBanner(int k) 
	{
		List<BannerModel> bannerList = showAllBanner();
   		
   		int size = bannerList.size();
   		if (size > k)
   		{
   			for(int i = k; i < size; i ++)
   			{
   				bannerList.remove(k);
   			}
   		}
   		
   		return bannerList;
	}
	
	@Override
	public void deleteBannerByID(int id)
	{
		String queryString = "from BannerModel bannerModel where id='" + id + "'";
		bannerDao.deleteBanner(queryString);
	}

	@Override
	public void saveAdvertisement(AdvertisementModel advertisementModel) 
	{
		advertisementDao.addAdvertisement(advertisementModel);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AdvertisementModel> showAllAdvertisementByType(int type)
	{
		String queryString = "from AdvertisementModel advertisementModel where type='" + type + "'";
		List<AdvertisementModel> advertisementList = advertisementDao.selectAdvertisement(queryString);
		
		Collections.sort(advertisementList);
		
		return advertisementList;
	}

	@Override
	public List<AdvertisementModel> showLatestKAdvertisement(int k, int type) 
	{
		List<AdvertisementModel> advertisementList = showAllAdvertisementByType(type);
   		
   		int size = advertisementList.size();
   		if (size > k)
   		{
   			for(int i = k; i < size; i ++)
   			{
   				advertisementList.remove(k);
   			}
   		}
   		
   		return advertisementList;
	}

	@Override
	public void deleteAdvertisementByID(int id)
	{
		String queryString = "from AdvertisementModel advertisementModel where id='" + id + "'";
		advertisementDao.deleteAdvertisement(queryString);
	}
}
