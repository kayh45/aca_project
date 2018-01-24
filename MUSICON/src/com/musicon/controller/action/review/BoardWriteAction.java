package com.musicon.controller.action.review;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.controller.action.Action;
import com.musicon.dao.BoardDAO;
import com.musicon.dto.BoardVO;

public class BoardWriteAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardVO bVo = new BoardVO();

		bVo.setBrd_no(Integer.parseInt(request.getParameter("brd_no")));
		bVo.setBrd_div(request.getParameter("brd_div"));
		bVo.setBrd_subject(request.getParameter("brd_subject"));
		bVo.setMem_no(Integer.parseInt(request.getParameter("mem_no")));
		bVo.setBrd_view(Integer.parseInt(request.getParameter("brd_view")));
		bVo.setBrd_like(Integer.parseInt(request.getParameter("brd_like")));
		bVo.setBrd_content(request.getParameter("brd_content"));
		bVo.setPfm_no(Integer.parseInt(request.getParameter("pfm_no")));
		
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.insertReview(bVo);
		
	}

}
