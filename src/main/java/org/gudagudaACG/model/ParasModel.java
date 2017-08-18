package org.gudagudaACG.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import org.hibernate.annotations.GenericGenerator;

@Entity
public class ParasModel
{
	@Id
    @GeneratedValue(generator = "id")
    @GenericGenerator(name = "id", strategy = "native")
	private int id;
	
	@Column
    private int indexNewsNum = 0;
	
	@Column
    private int indexImageNum = 0;
	
	@Column
    private int bannerNum = 0;
	
	@Column
    private int advertisementNum = 0;
	
	public ParasModel() {}
	
	public ParasModel(int indexNewsNum, int indexImageNum, int bannerNum, int advertisementNum) 
	{
		this.indexNewsNum = indexNewsNum;
		this.indexImageNum = indexImageNum;
		this.bannerNum = bannerNum;
		this.advertisementNum = advertisementNum;
	}
	
	public int getId() 
	{
		return id;
	}

	public void setId(int id) 
	{
		this.id = id;
	}

	public int getIndexNewsNum() 
	{
		return indexNewsNum;
	}

	public void setIndexNewsNum(int indexNewsNum) 
	{
		this.indexNewsNum = indexNewsNum;
	}
	
	public int getIndexImageNum() 
	{
		return indexImageNum;
	}

	public void setIndexImageNum(int indexImageNum) 
	{
		this.indexImageNum = indexImageNum;
	}

	public int getBannerNum() 
	{
		return bannerNum;
	}
	
	public void setBannerNum(int bannerNum) 
	{
		this.bannerNum = bannerNum;
	}

	public int getAdvertisementNum() 
	{
		return advertisementNum;
	}

	public void setAdvertisementNum(int advertisementNum) 
	{
		this.advertisementNum = advertisementNum;
	}
}
