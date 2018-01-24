package com.musicon.controller.action.review;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.controller.action.Action;
import com.musicon.dao.BoardDAO;
import com.musicon.dto.BoardVO;

public class BoardUpdateFormAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/board/boardUpdate.jsp";
		
		String brd_no = request.getParameter("brd_no");
		
		BoardDAO bDao = BoardDAO.getInstance();
		
		bDao.updateBrdView(brd_no);
		
		BoardVO bVo = bDao.selectOneReviewByBrd_no(brd_no);
		
		request.setAttribute("board", bVo);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
