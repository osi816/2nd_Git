package kr.co.bitnews.usedboard.controller;

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
import kr.co.bitnews.mapper.UsedBoardMapper;

@WebServlet("/usedBoard/list")
public class ListBoardController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UsedBoardMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(UsedBoardMapper.class);
		List<Board> list = mapper.selectBoard();
		request.setAttribute("list", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/board/list.jsp");
		rd.forward(request, response);
	}
}
