package org.gudagudaACG.dao;

import org.springframework.stereotype.Repository;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import java.util.List;

import org.gudagudaACG.model.AdvertisementModel;

@Repository
public class AdvertisementDao 
{
	private HibernateTemplate template;
	
	@Autowired
    public AdvertisementDao(SessionFactory sessionFactory) 
	{
        template = new HibernateTemplate(sessionFactory);
    }
	
	public void addAdvertisement(AdvertisementModel advertisementModel) 
    {
        template.save(advertisementModel);
    }

	@SuppressWarnings("unchecked")
	public List<AdvertisementModel> selectAdvertisement(String queryString) 
    {
		List<AdvertisementModel> ret = (List<AdvertisementModel>) template.find(queryString);
		
		return ret;
    }
	
	public void deleteAdvertisement(String queryString) 
    {
		List<AdvertisementModel> qresult = selectAdvertisement(queryString);
		for(int i = 0 ; i < qresult.size() ; i ++) 
		{
			deleteAdvertisement(qresult.get(i));
		}
    }
	
	public void deleteAdvertisement(AdvertisementModel advertisementmodel) 
    {
		template.delete(advertisementmodel);
    }
}
