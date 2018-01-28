package com.musicon.controller.action.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.controller.action.Action;
import com.musicon.dao.BoardDAO;
import com.musicon.dto.BoardReplyVO;

public class BrplDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int brpl_no = Integer.parseInt(request.getParameter("brpl_no"));
		String boardType = request.getParameter("boardType");
		
		
		
		BoardReplyVO bVo = new BoardReplyVO();

		bVo.setBrpl_no(brpl_no);

		BoardDAO bDao = BoardDAO.getInstance();
		int brd_no = bDao.NumOfBoardInBrplNo(brpl_no);
		bDao.deleteBrpl(bVo);		
		
		System.out.println(brd_no);
		
		String url = "board.do?command=board_view" + "&brd_no=" + brd_no + "&boardType=" + boardType;
		
		request.setAttribute("brd_no", brd_no);
		request.setAttribute("boardType", boardType);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);		
	}

}
