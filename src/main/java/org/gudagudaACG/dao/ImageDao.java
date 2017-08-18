package org.gudagudaACG.dao;

import org.springframework.stereotype.Repository;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import java.util.List;

import org.gudagudaACG.model.ImageModel;

@Repository
public class ImageDao 
{
private HibernateTemplate template;
	
	@Autowired
    public ImageDao(SessionFactory sessionFactory) 
	{
        template = new HibernateTemplate(sessionFactory);
    }
	
	public void addImage(ImageModel imageModel) 
    {
        template.save(imageModel);
    }

	@SuppressWarnings("unchecked")
	public List<ImageModel> selectImage(String queryString) 
    {
		List<ImageModel> ret = (List<ImageModel>) template.find(queryString);
		
		return ret;
    }
	
	public void deleteImage(String queryString) 
    {
		List<ImageModel> qresult = selectImage(queryString);
		for(int i = 0 ; i < qresult.size() ; i ++) 
		{
			deleteImage(qresult.get(i));
		}
    }
	
	public void deleteImage(ImageModel imagemodel) 
    {
		template.delete(imagemodel);
    }
}
