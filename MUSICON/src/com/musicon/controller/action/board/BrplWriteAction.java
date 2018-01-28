package com.musicon.controller.action.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.controller.action.Action;
import com.musicon.dao.BoardDAO;
import com.musicon.dto.BoardReplyVO;

public class BrplWriteAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String brd_no = request.getParameter("brd_no");
		String boardType = request.getParameter("boardType");
		
		String url = "board.do?command=board_view&brd_no=" + brd_no + "&boardType=" + boardType;
		
		BoardReplyVO bVo = new BoardReplyVO();

		bVo.setBrd_no(Integer.parseInt(brd_no));
		bVo.setBrpl_content(request.getParameter("brpl_content"));
		bVo.setMem_no(Integer.parseInt(request.getParameter("mem_no")));
		
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.writeBrpl(bVo);
		
		request.setAttribute("boardType", boardType);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
	
}
