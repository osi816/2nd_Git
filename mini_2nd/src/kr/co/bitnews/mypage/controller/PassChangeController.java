package kr.co.bitnews.mypage.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.db.MyAppSqlConfig;
import kr.co.bitnews.domain.User;
import kr.co.bitnews.mapper.UserMapper;

@WebServlet("/mypage/passchange")
public class PassChangeController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("application/json; charset=utf-8");
		UserMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(UserMapper.class);
		User login = (User)req.getSession().getAttribute("user");
		
		String pass = req.getParameter("pwd");
		String npwd = req.getParameter("npwd");
		
		if(login.getUserPw().equals(pass)) {
			
		}
		
		
		
	}

}
