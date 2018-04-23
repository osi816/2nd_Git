package kr.co.bitnews.domain;

public class News {
	
	private int newsSeq;
	private int newsId;
	private String userId;
	
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

}
