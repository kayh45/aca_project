package com.musicon.controller.action.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.controller.action.Action;
import com.musicon.dao.MemberDAO;

public class MemberNickCheckAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "member/nickCheck.jsp";
		
		String mem_nick = new String(request.getParameter("mem_nick").getBytes("8859_1"),"utf-8");

		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.confirmNick(mem_nick);
		
		System.out.println(mem_nick);
		
		request.setAttribute("mem_nick", mem_nick);
		request.setAttribute("result", result);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
