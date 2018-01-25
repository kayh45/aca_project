package com.musicon.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.musicon.dao.MemberDAO;
import com.musicon.dto.MemberVO;

public class MemberUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		MemberVO mVo = new MemberVO();		
		MemberDAO mDao = MemberDAO.getInstance();
		HttpSession session = request.getSession();
		
		mVo.setMem_name(request.getParameter("mem_name"));
		mVo.setMem_pw(request.getParameter("mem_pw"));
		mVo.setMem_mail(request.getParameter("mem_mail"));
		mVo.setMem_phone(request.getParameter("mem_phone"));
		mVo.setMem_nick(request.getParameter("mem_nick"));
		mVo.setMem_id(request.getParameter("mem_id"));
		
		System.out.println(request.getParameter("mem_name"));
		mDao.updateMember(mVo);
		
		MemberVO tempMVo = mDao.getMemberInfo(request.getParameter("mem_id"));
		
		session.setAttribute("LoginUser", tempMVo);
		
		new MemberInfoAction().execute(request, response);
		
	}

}
