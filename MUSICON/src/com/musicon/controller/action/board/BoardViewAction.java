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

public class BoardViewAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/board/board_view.jsp";
		
		String brd_no = request.getParameter("brd_no");
		String boardType = request.getParameter("boardType");
		BoardPerformanceVO bVo = null;		
		BoardDAO bDao = BoardDAO.getInstance();
		
		bDao.addView(brd_no);
		
		if(boardType.equals("review")){
			bVo = bDao.selectOneBoardReview(brd_no);
		}else {
			bVo = bDao.selectOneBoard(brd_no);
		}

		List<BoardReplyVO> replyList = bDao.selectAllBrpl(brd_no);
		
		
		request.setAttribute("board", bVo);
		request.setAttribute("replyList", replyList);
		request.setAttribute("boardType", boardType);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
