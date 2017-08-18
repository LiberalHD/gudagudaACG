package org.gudagudaACG.dao;

import org.springframework.stereotype.Repository;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import java.util.List;

import org.gudagudaACG.model.BannerModel;

@Repository
public class BannerDao 
{
	private HibernateTemplate template;
	
	@Autowired
    public BannerDao(SessionFactory sessionFactory) 
	{
        template = new HibernateTemplate(sessionFactory);
    }
	
	public void addBanner(BannerModel bannerModel) 
    {
        template.save(bannerModel);
    }

	@SuppressWarnings("unchecked")
	public List<BannerModel> selectBanner(String queryString) 
    {
		List<BannerModel> ret = (List<BannerModel>) template.find(queryString);
		
		return ret;
    }
	
	public void deleteBanner(String queryString) 
    {
		List<BannerModel> qresult = selectBanner(queryString);
		for(int i = 0 ; i < qresult.size() ; i ++) 
		{
			deleteBanner(qresult.get(i));
		}
    }
	
	public void deleteBanner(BannerModel bannerModel) 
    {
		template.delete(bannerModel);
    }
}
