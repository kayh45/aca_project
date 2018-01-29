package com.musicon.controller.action.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.controller.action.Action;
import com.musicon.dao.MemberDAO;

public class MemberNickUpdateCheckAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "member/nickUpdateCheck.jsp";
		
		String mem_nick = null;
		String mem_nick2 = null;  
		
		System.out.println(request.getParameter("script"));
		
		if(request.getParameter("script").equals("yes")){
			mem_nick =  new String(request.getParameter("mem_nick").getBytes("8859_1"),"utf-8");
			mem_nick2 =  new String(request.getParameter("mem_nick2").getBytes("8859_1"),"utf-8");
		}else {
			mem_nick = request.getParameter("mem_nick");
			mem_nick2 = request.getParameter("mem_nick2");
		}

		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.confirmNick(mem_nick);
		
		System.out.println(mem_nick);
		
		request.setAttribute("mem_nick", mem_nick);
		request.setAttribute("mem_nick2", mem_nick2);
		request.setAttribute("result", result);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
