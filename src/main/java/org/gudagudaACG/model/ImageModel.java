package org.gudagudaACG.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import org.hibernate.annotations.GenericGenerator;

@SuppressWarnings("rawtypes")
@Entity
public class ImageModel implements Comparable
{
	@Id
    @GeneratedValue(generator = "id")
    @GenericGenerator(name = "id", strategy = "native")
	private int id;
	
	@Column
    private String title;
	
	@Column
    private String image;
	
	@Column
    private String author;
	
	@Column
    private String date;
	
	@Column
    private String content;
	
	@Column
    private String keywords;
	
	@Column
    private String quote;
	
	public ImageModel() 
	{	
	}
	
	public ImageModel(String title, String image, String author, String date, String content, String keywords, String quote) {
		this.title = title;
		this.author = author;
		this.date = date;
		this.content = content;
		this.keywords = keywords;
		this.quote = quote;
		this.image = image;
	}
	
	public String toString() {
		return "id: " + getId() + "\r\ntitle: " + getTitle() + "\r\nauthor: " + getAuthor() + "\r\ndate: " + getDate() + "\r\ncontent: " + getContent() + "\r\nkeywords: " + getKeywords() + "\r\nquote: " + getQuote();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getKeywords() {
		return keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	public String getQuote() {
		return quote;
	}

	public void setQuote(String quote) {
		this.quote = quote;
	}
	
	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public int compareTo(Object o)
	{
		ImageModel sdto = (ImageModel)o;
	    String otherdate = sdto.getDate();
	    
	    return (-this.date.compareTo(otherdate));
	}
}
