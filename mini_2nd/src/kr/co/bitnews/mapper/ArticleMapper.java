package kr.co.bitnews.mapper;

import java.util.List;

import kr.co.bitnews.domain.Article;


public interface ArticleMapper {
	public void insertArticle(Article article);
	public Article selectArticleByNo(int no);
	public List<Article> selectArticle();
	public List<Article> selectRank();
	public List<Article> selectRand();
}
