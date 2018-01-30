package com.musicon.controller.action.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.controller.action.Action;
import com.musicon.dao.MemberDAO;
import com.musicon.dto.MemberVO;

public class MemberJoinAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "main.do?command=main";
		
		MemberVO mVo = new MemberVO();
		
		mVo.setMem_name(request.getParameter("mem_name"));
		mVo.setMem_id(request.getParameter("mem_id"));
		mVo.setMem_pw(request.getParameter("mem_pw"));
		mVo.setMem_nick(request.getParameter("mem_nick"));
		mVo.setMem_phone(request.getParameter("mem_phone"));
		mVo.setMem_mail(request.getParameter("mem_mail"));
		
		MemberDAO mDao = MemberDAO.getInstance();
		mDao.joinMember(mVo);
		
		request.setAttribute("message", "회원가입에 성공하였습니다.");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
