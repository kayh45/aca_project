package com.musicon.controller.action.review;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.controller.action.Action;
import com.musicon.dao.BoardDAO;
import com.musicon.dto.BoardPerformanceVO;
import com.musicon.dto.BoardReplyVO;

public class BoardViewAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/board/review/board_review_detail.jsp";
		
		String brd_no = request.getParameter("brd_no");
		
		BoardDAO bDao = BoardDAO.getInstance();
		
		bDao.updateBrdView(brd_no);
		
		BoardPerformanceVO bVo = bDao.selectOneReviewByBrd_no(brd_no);
		List<BoardReplyVO> boardReplyList = bDao.selectAllBrpl(brd_no);
		
		request.setAttribute("board", bVo);
		request.setAttribute("boardReplyList", boardReplyList);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
