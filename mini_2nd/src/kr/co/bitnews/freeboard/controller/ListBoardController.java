package kr.co.bitnews.freeboard.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.db.MyAppSqlConfig;
import kr.co.bitnews.domain.Board;
import kr.co.bitnews.mapper.FreeBoardMapper;

@WebServlet("/freeBoard/list")
public class ListBoardController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FreeBoardMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(FreeBoardMapper.class);
		List<Board> list = mapper.selectBoard();
		request.setAttribute("list", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/freeBoard/list.jsp");
		rd.forward(request, response);
	}
}
