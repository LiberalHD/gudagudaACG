package org.gudagudaACG.dao;

import org.springframework.stereotype.Repository;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import java.util.List;

import org.gudagudaACG.model.ContentModel;

@Repository
public class ContentDao 
{
	private HibernateTemplate template;
	
	@Autowired
    public ContentDao(SessionFactory sessionFactory) 
	{
        template = new HibernateTemplate(sessionFactory);
    }
	
	public void addContent(ContentModel contentModel) 
    {
        template.save(contentModel);
    }

	@SuppressWarnings("unchecked")
	public List<ContentModel> selectContent(String queryString) 
    {
		List<ContentModel> ret = (List<ContentModel>) template.find(queryString);
		
		return ret;
    }
	
	public void deleteContent(String queryString) 
    {
		List<ContentModel> qresult = selectContent(queryString);
		for(int i = 0 ; i < qresult.size() ; i ++) 
		{
			deleteContent(qresult.get(i));
		}
    }
	
	public void deleteContent(ContentModel contentmodel) 
    {
		template.delete(contentmodel);
    }
}