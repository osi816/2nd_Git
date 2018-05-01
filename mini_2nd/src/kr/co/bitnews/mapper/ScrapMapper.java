package kr.co.bitnews.mapper;

import kr.co.bitnews.domain.Scrap;

public interface ScrapMapper {
	public void insertScrap(Scrap scrap);
	public Scrap selectScrapById(String userId);
}
