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
		bannerModel = formatBanner(bannerModel);
		bannerModel.setHttpflag(judgeHTTP(bannerModel)); 
		
		bannerDao.addBanner(bannerModel);
	}
	
	private int judgeHTTP(BannerModel bannerModel)
	{
		String temp = bannerModel.getLink().substring(0, 4);
		if (temp.equalsIgnoreCase("http"))
		{
			return 1;
		}
		else
		{
			return 0;
		}
	}
	
	private BannerModel formatBanner(BannerModel bannerModel)
	{
		String image = "";
		
		bannerModel.setContent(bannerModel.getContent().substring(3, bannerModel.getContent().length()-4));
		
		image = getFirstImage(bannerModel.getContent());
		image = deleteWidthandHeight(image);
		
		int pos = image.indexOf("/>");
		StringBuilder sb = new StringBuilder(image);
		sb.insert(pos," width=\"100%\" height=\"500\"");
		bannerModel.setContent(sb.toString());
		
		return bannerModel;
	}
	
	private String getFirstImage(String content)
	{
		String image = "";
		int start = content.indexOf("<img");
		int end = content.indexOf("/>", start) + 2;
		
		image = content.substring(start, end);
		
		return image;
	}
	
	private String deleteWidthandHeight(String image)
	{
		String ret = image;
		
		int start = image.indexOf("width");
		if (start != -1)
		{
			int end = image.indexOf("\"", image.indexOf("\"", start) + 1) + 1;
			String width = image.substring(start, end);
			ret = image.replace(width, "");
		}
		
		start = ret.indexOf("height");
		if (start != -1)
		{
			int end = ret.indexOf("\"", image.indexOf("\"", start) + 1) + 1;
			String height = ret.substring(start, end);
			ret = ret.replace(height, "");
		}
		
		return ret;
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

	
	private AdvertisementModel formatAdvertisement(AdvertisementModel advertisementModel)
	{
		String image = "";
		
		advertisementModel.setContent(advertisementModel.getContent().substring(3, advertisementModel.getContent().length()-4));
		
		image = getFirstImage(advertisementModel.getContent());
		image = deleteWidthandHeight(image);
		
		int pos = image.indexOf("/>");
		StringBuilder sb = new StringBuilder(image);
		if (advertisementModel.getType() == 0)
		{
			sb.insert(pos," width=\"25%\" height=\"160\"");
		}
		else if (advertisementModel.getType() == -1)
		{
			sb.insert(pos," width=\"20%\" height=\"100%\"");
		}
		else //1 & 2
		{
			sb.insert(pos," width=\"100%\"");
		}
		advertisementModel.setContent(sb.toString());
		
		return advertisementModel;
	}

	@Override
	public void saveAdvertisement(AdvertisementModel advertisementModel) 
	{
		advertisementModel = formatAdvertisement(advertisementModel);
		
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
