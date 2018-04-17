package kr.co.bitnews.freeboard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.db.MyAppSqlConfig;
import kr.co.bitnews.mapper.FreeBoardMapper;

@WebServlet("/freeBoard/commentDelete")
public class CommentDeleteController extends HttpServlet {

	@Override
	public void doGet(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		FreeBoardMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(FreeBoardMapper.class);
		
		int no = Integer.parseInt(request.getParameter("no"));
		int commentNo = Integer.parseInt(request.getParameter("commentNo"));
		
		mapper.deleteComment(commentNo);
		
		response.sendRedirect("detail?no=" + no);
		
	}
}











