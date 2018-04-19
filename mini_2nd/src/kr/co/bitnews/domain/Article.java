package kr.co.bitnews.domain;

import java.util.Date;

public class Article {
	
	private int articleNo;
	private String articleType;
	private String articltTitle;
	private String articleSummary;
	private String articltContent;
	private String articltReporter;
	private String articltThumb;
	private String articleUrl;
	private Date articltDate;
	public int getArticleNo() {
		return articleNo;
	}
	public void setArticleNo(int articleNo) {
		this.articleNo = articleNo;
	}
	public String getArticleType() {
		return articleType;
	}
	public void setArticleType(String articleType) {
		this.articleType = articleType;
	}
	public String getArticltTitle() {
		return articltTitle;
	}
	public void setArticltTitle(String articltTitle) {
		this.articltTitle = articltTitle;
	}
	public String getArticleSummary() {
		return articleSummary;
	}
	public void setArticleSummary(String articleSummary) {
		this.articleSummary = articleSummary;
	}
	public String getArticltContent() {
		return articltContent;
	}
	public void setArticltContent(String articltContent) {
		this.articltContent = articltContent;
	}
	public String getArticltReporter() {
		return articltReporter;
	}
	public void setArticltReporter(String articltReporter) {
		this.articltReporter = articltReporter;
	}
	public String getArticltThumb() {
		return articltThumb;
	}
	public void setArticltThumb(String articltThumb) {
		this.articltThumb = articltThumb;
	}
	public String getArticleUrl() {
		return articleUrl;
	}
	public void setArticleUrl(String articleUrl) {
		this.articleUrl = articleUrl;
	}
	public Date getArticltDate() {
		return articltDate;
	}
	public void setArticltDate(Date articltDate) {
		this.articltDate = articltDate;
	}
	
	
	
}
