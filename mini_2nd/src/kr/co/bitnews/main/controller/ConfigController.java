package kr.co.bitnews.main.controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/config")
public class ConfigController extends HttpServlet{

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] newsId = request.getParameterValues("newsId");
		System.out.println("서블릿 옴");
		for(int i=0; i<newsId.length; i++){
			System.out.println(newsId[i]);
		}

	}
	

}
