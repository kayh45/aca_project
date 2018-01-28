package com.musicon.controller.action.board;

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

public class BoardUpdateFormAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "board/board_update.jsp";
		String brd_no = request.getParameter("brd_no");
		String boardType = request.getParameter("boardType");
		
		BoardPerformanceVO bVo = null;		
		BoardDAO bDao = BoardDAO.getInstance();
				
		if(boardType.equals("review")){
			bVo = bDao.selectOneBoardReview(brd_no);
		}else {
			bVo = bDao.selectOneBoard(brd_no);
		}
				
		request.setAttribute("board", bVo);
		request.setAttribute("boardType", boardType);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
