package kr.co.bitnews.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/jsp/mypage/userupdate")
public class UserUpdateController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		/*
		 * 데이터베이스 접근 유저 정보 변경 내용 추가
		 * 
		 */
		resp.sendRedirect("mypagemove");
	}
}
