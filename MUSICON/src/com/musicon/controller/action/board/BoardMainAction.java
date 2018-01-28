package com.musicon.controller.action.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.controller.action.Action;
import com.musicon.dao.BoardDAO;
import com.musicon.dto.BoardMemberVO;
import com.musicon.dto.BoardVO;

public class BoardMainAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "/board/board_main.jsp";
		
		BoardDAO bDao = BoardDAO.getInstance();
		
		List<BoardVO> photoList = bDao.selectTopPhoto();
		List<BoardVO> reviewList = bDao.selectTopBoard("review");
		List<BoardVO> shareList = bDao.selectTopBoard("share");
		List<BoardVO> videoList = bDao.selectTopVideo();		
		List<BoardVO> recentList = bDao.selectRecentBoard();
		
		request.setAttribute("photoList", photoList);
		request.setAttribute("reviewList", reviewList);
		request.setAttribute("shareList", shareList);
		request.setAttribute("videoList", videoList);
		request.setAttribute("recentList", recentList);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
