package com.musicon.controller.action.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.controller.action.Action;
import com.musicon.dao.BoardDAO;

public class BoardLikeAddAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDAO bDao = BoardDAO.getInstance();
		
		String brd_no = request.getParameter("brd_no");
		String boardType = request.getParameter("boardType");
		
		String url = "board.do?command=board_view&brd_no=" + brd_no + "&boardType=" + boardType;

		bDao.addLike(brd_no);
		
		request.setAttribute("boardType", boardType);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}
		

}
