package com.musicon.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.dao.MemberDAO;

public class MemberIdCheckAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "member/idCheck.jsp";
		
		String mem_id = request.getParameter("mem_id");
		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.confirmID(mem_id);
		
		System.out.println("idcheck");
		
		request.setAttribute("mem_id", mem_id);
		request.setAttribute("result", result);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
