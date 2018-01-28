package com.musicon.controller.action.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.controller.action.Action;
import com.musicon.dao.BoardDAO;

public class BoardDeleteAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String brd_no = request.getParameter("brd_no");
		String boardType = request.getParameter("boardType");
		
		
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.deleteBoard(brd_no);
		
		request.setAttribute("boardType", boardType);
		new BoardListAction().execute(request, response);
		
	}

}
