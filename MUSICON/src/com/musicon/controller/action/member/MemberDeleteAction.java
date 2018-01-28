package com.musicon.controller.action.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.controller.action.Action;
import com.musicon.controller.action.board.BoardListAction;
import com.musicon.dao.MemberDAO;

public class MemberDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int mem_no = Integer.parseInt(request.getParameter("mem_no"));		
		
		MemberDAO bDao = MemberDAO.getInstance();
		bDao.deleteMember(mem_no);
		
		new MemberListAction().execute(request, response);
	}

}
