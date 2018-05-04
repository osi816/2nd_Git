package kr.co.bitnews.main.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.db.MyAppSqlConfig;
import kr.co.bitnews.domain.NewsImg;
import kr.co.bitnews.mapper.NewsMapper;

@WebServlet("/main")
public class MainController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		NewsMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(NewsMapper.class);
		
		SimpleDateFormat sd = new SimpleDateFormat("yyyyMMdd");
		NewsImg newsimg = new NewsImg();
//		newsimg.setDay(day);
//		mapper.insertNewsImg(newsimg);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/news/main.jsp");
		rd.forward(request, response);
	}
	
	

}