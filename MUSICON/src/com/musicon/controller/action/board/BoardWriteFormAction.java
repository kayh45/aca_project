package com.musicon.controller.action.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.controller.action.Action;

public class BoardWriteFormAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/board/board_write.jsp";
		
		
		request.setAttribute("pfm_no", request.getParameter("pfm_no"));
		request.setAttribute("pfm_subject", request.getParameter("pfm_subject"));
		request.setAttribute("pfm_actor", request.getParameter("pfm_actor"));
		request.setAttribute("pfm_pic", request.getParameter("pfm_pic"));
		request.setAttribute("pfm_loc", request.getParameter("pfm_loc"));
		request.setAttribute("boardType", request.getParameter("boardType"));

		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
