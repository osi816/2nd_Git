package kr.co.bitnews.main.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.db.MyAppSqlConfig;
import kr.co.bitnews.domain.Article;
import kr.co.bitnews.mapper.ArticleMapper;

@WebServlet("/detailnews")
public class DetailnewsController extends HttpServlet{

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArticleMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(ArticleMapper.class);
		List<Article> list = mapper.selectArticle();

		request.setAttribute("list", list);
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/news/detailnews.jsp");
		rd.forward(request, response);
	}

	
}
