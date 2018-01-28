package com.musicon.controller.action.member;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.controller.action.Action;
import com.musicon.dao.MemberDAO;
import com.musicon.dto.MemberVO;

public class MemberListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "/member/member_list.jsp";
		
		MemberDAO mDao = MemberDAO.getInstance();
		
		List<MemberVO> memberList = mDao.getMemberList();
		
		request.setAttribute("memberList", memberList);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
		
	}

}
