package org.gudagudaACG.dao;

import org.springframework.stereotype.Repository;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;

import org.gudagudaACG.model.ContentModel;

@Repository
public class ContentDao {
	
	private HibernateTemplate template;
	
	@Autowired
    public ContentDao(SessionFactory sessionFactory) 
	{
        template = new HibernateTemplate(sessionFactory);
    }
	
	public void saveContent(ContentModel contentModel) 
    {
        template.save(contentModel);
    }

}
