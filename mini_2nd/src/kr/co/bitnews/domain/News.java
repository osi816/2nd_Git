package kr.co.bitnews.domain;

import java.util.Date;
import java.util.List;

public class News {
	
	private int newsSeq;
	private int newsId;
	private String userId;
	private Date newsDate;
	private List<NewsImg> img;
	
	public int getNewsSeq() {
		return newsSeq;
	}
	public void setNewsSeq(int newsSeq) {
		this.newsSeq = newsSeq;
	}
	public int getNewsId() {
		return newsId;
	}
	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Date getNewsDate() {
		return newsDate;
	}
	public void setNewsDate(Date newsDate) {
		this.newsDate = newsDate;
	}
	public List<NewsImg> getImg() {
		return img;
	}
	public void setImg(List<NewsImg> img) {
		this.img = img;
	}


}
