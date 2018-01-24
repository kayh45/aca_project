package com.musicon.controller.action.brpl;

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
		String url = "BoardServlet?command=board_view&brd_no=";
		url += request.getParameter("brd_no");
		
		BoardReplyVO bVo = new BoardReplyVO();

		bVo.setBrd_no(Integer.parseInt(request.getParameter("brd_no")));
		bVo.setBrpl_content(request.getParameter("brpl_content"));
		bVo.setMem_no(Integer.parseInt(request.getParameter("mem_no")));
		
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.insertBrpl(bVo);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
	
}
