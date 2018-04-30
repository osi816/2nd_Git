package kr.co.bitnews.articleboard.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.db.MyAppSqlConfig;
import kr.co.bitnews.domain.Comment;
import kr.co.bitnews.mapper.ArticleBoardMapper;

@WebServlet("/articleBoard/commentRegist")
public class CommentRegistController extends HttpServlet {

	@Override
	public void doPost(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArticleBoardMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(ArticleBoardMapper.class);
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		// 게시판과 파일 테이블에 저장할 글번호를 조회
		Comment comment = new Comment();
		comment.setNo(no);
		comment.setContent(request.getParameter("content"));
		comment.setUserId(request.getParameter("writer"));
		
		// 게시물 저장 처리 부탁..
		mapper.insertComment(comment);
		
		response.sendRedirect("detail?no=" + no);
	}
}











