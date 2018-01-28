package com.musicon.controller.action.review;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.controller.action.Action;
import com.musicon.dao.BoardDAO;
import com.musicon.dto.BoardPerformanceVO;

public class BoardWriteAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardPerformanceVO bVo = new BoardPerformanceVO();
		String boardType = request.getParameter("boardType");
		
		bVo.setBrd_subject(request.getParameter("brd_subject"));
		bVo.setBrd_content(request.getParameter("brd_content"));
		bVo.setMem_no(Integer.parseInt(request.getParameter("mem_no")));
		
		if (boardType.equals("review")) {
			bVo.setPfm_no(Integer.parseInt(request.getParameter("pfm_no")));
		} else if(boardType.equals("photo")) {
			bVo.setBrd_pic(request.getParameter("brd_pic"));			
		}else if(boardType.equals("video")) {
			bVo.setBrd_vid(request.getParameter("brd_vid"));		
		}

		BoardDAO bDao = BoardDAO.getInstance();
		bDao.writeBoard(bVo, boardType);
		
		request.setAttribute("boardType", boardType);
		
		new BoardListAction().execute(request, response);
		
	}

}
