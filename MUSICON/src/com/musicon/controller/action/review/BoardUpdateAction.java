package com.musicon.controller.action.review;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.controller.action.Action;
import com.musicon.dao.BoardDAO;
import com.musicon.dto.BoardVO;

public class BoardUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardVO bVo = new BoardVO();
		
		bVo.setBrd_no(Integer.parseInt(request.getParameter("brd_no")));
		
		bVo.setBrd_subject(request.getParameter("brd_subject"));
		bVo.setBrd_content(request.getParameter("brd_content"));

		
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.updateReview(bVo);
		
		new BoardListAction().execute(request, response);
		
	}
	
}
