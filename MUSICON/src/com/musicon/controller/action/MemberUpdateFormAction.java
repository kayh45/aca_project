package com.musicon.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.musicon.dao.MemberDAO;
import com.musicon.dto.MemberVO;

public class MemberUpdateFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "member/member_update.jsp";
		
		MemberDAO mDao = MemberDAO.getInstance();
		MemberVO mVo = mDao.getMemberInfo(request.getParameter("mem_id"));
		
		request.setAttribute("member", mVo);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);	
	}
		

}
