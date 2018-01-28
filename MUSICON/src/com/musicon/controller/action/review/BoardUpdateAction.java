package com.musicon.controller.action.review;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.controller.action.Action;
import com.musicon.dao.BoardDAO;
import com.musicon.dto.BoardPerformanceVO;
import com.musicon.dto.BoardVO;

public class BoardUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardPerformanceVO bVo = new BoardPerformanceVO();
		String boardType = request.getParameter("boardType");
		
		bVo.setBrd_no(Integer.parseInt(request.getParameter("brd_no")));		
		bVo.setBrd_subject(request.getParameter("brd_subject"));
		bVo.setBrd_content(request.getParameter("brd_content"));
		
		if(boardType.equals("photo")){
			bVo.setBrd_pic(request.getParameter("brd_pic"));
		}else if(boardType.equals("video")){
			bVo.setBrd_vid(request.getParameter("brd_vid"));
		}else if(boardType.equals("review")){
			bVo.setPfm_no(Integer.parseInt(request.getParameter("pfm_no")));
		}

		BoardDAO bDao = BoardDAO.getInstance();
		bDao.updateBoard(bVo, boardType);
		
		new BoardListAction().execute(request, response);
		
	}
	
}
