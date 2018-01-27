package com.musicon.controller.action.review;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.controller.action.Action;
import com.musicon.dao.BoardDAO;
import com.musicon.dto.BoardPerformanceVO;
import com.musicon.dto.BoardVO;

public class BoardListAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/board/board_list.jsp";
		
		String boardType = request.getParameter("boardType");
		List<BoardVO> boardList = new ArrayList<BoardVO>();
		List<BoardPerformanceVO> boardListRv = new ArrayList<BoardPerformanceVO>();
		
		System.out.println(boardType);
		
		BoardDAO bDao = BoardDAO.getInstance();
		
		if(boardType.equals("review")){		
			boardListRv = bDao.selectAllReview();
			request.setAttribute("boardList", boardListRv);
		}else {
			boardList = bDao.selectAllBoard(boardType);
			request.setAttribute("boardList", boardList);
		}		
		
		request.setAttribute("boardType", boardType);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}
	
}
