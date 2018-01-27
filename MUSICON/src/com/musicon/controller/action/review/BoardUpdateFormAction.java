package com.musicon.controller.action.review;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.controller.action.Action;
import com.musicon.dao.BoardDAO;
import com.musicon.dto.BoardPerformanceVO;

public class BoardUpdateFormAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/board/review/boardUpdate.jsp";
		
		String brd_no = request.getParameter("brd_no");
		
		BoardDAO bDao = BoardDAO.getInstance();
		
		bDao.addView(brd_no);
		
		BoardPerformanceVO bVo = bDao.selectOneBoardReview(brd_no);
		
		request.setAttribute("board", bVo);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
