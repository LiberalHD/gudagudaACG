package org.gudagudaACG.dao;

import org.springframework.stereotype.Repository;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import java.util.List;

import org.gudagudaACG.model.ParasModel;

@Repository
public class ParasDao 
{
	private HibernateTemplate template;
	
	@Autowired
    public ParasDao(SessionFactory sessionFactory) 
	{
        template = new HibernateTemplate(sessionFactory);
    }
	
	public void addParas(ParasModel parasModel) 
    {
        template.save(parasModel);
    }

	@SuppressWarnings("unchecked")
	public List<ParasModel> selectParas(String queryString) 
    {
		List<ParasModel> ret = (List<ParasModel>) template.find(queryString);
		
		return ret;
    }
	
	public void deleteParas(String queryString) 
    {
		List<ParasModel> qresult = selectParas(queryString);
		for(int i = 0 ; i < qresult.size() ; i ++) 
		{
			deleteParas(qresult.get(i));
		}
    }
	
	public void deleteParas(ParasModel parasmodel) 
    {
		template.delete(parasmodel);
    }
}
