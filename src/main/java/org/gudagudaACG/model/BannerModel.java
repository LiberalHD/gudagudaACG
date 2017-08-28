package org.gudagudaACG.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import org.hibernate.annotations.GenericGenerator;

@SuppressWarnings("rawtypes")
@Entity
public class BannerModel implements Comparable
{
	@Id
    @GeneratedValue(generator = "id")
    @GenericGenerator(name = "id", strategy = "native")
	private int id;
	
	@Column
    private String date;
	
	@Column
    private String title;
	
	@Column
    private String content;
	
	@Column
    private String link;
	
	@Column
    private int httpflag;

	public BannerModel() {}
	
	public BannerModel(String date, String title, String content, String link, int httpflag) 
	{
		this.date = date;
		this.title = title;
		this.content = content;
		this.link = link;
		this.httpflag = httpflag;
	}

	public int getHttpflag() {
		return httpflag;
	}

	public void setHttpflag(int httpflag) {
		this.httpflag = httpflag;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	@Override
	public int compareTo(Object o)
	{
		BannerModel sdto = (BannerModel)o;
	    String otherdate = sdto.getDate();
	    
	    return (-this.date.compareTo(otherdate));
	}
}
