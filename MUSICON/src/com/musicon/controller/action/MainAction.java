package com.musicon.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.dao.BoardDAO;
import com.musicon.dto.BoardVO;

public class MainAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "main.jsp";
		
		BoardDAO bDao = BoardDAO.getInstance();
		List<BoardVO> topList = bDao.selectTopBoard();
		
		request.setAttribute("topList", topList);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
