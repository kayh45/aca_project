package com.musicon.controller.action.board;

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

public class BoardListSearchAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String boardType = request.getParameter("boardType");
		String search = request.getParameter("search");
		
				
		String url = "/board/board_list.jsp";
		BoardDAO bDao = BoardDAO.getInstance();
		
		List<BoardPerformanceVO> boardList = new ArrayList<BoardPerformanceVO>();
		
		if(boardType.equals("review")){		
			boardList = bDao.boardSearch(search);
			request.setAttribute("boardList", boardList);
		}else {
			boardList = bDao.boardSearch(boardType, search);
			request.setAttribute("boardList", boardList);
		}		
		
		request.setAttribute("boardType", boardType);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}
	
}
