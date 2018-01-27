package com.musicon.controller.action.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.musicon.controller.action.Action;
import com.musicon.dao.MemberDAO;
import com.musicon.dto.MemberVO;

public class MemberLoginAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "index.jsp";		
		
		MemberVO mVo = new MemberVO();
		HttpSession session = request.getSession();
		
		if(session.getAttribute("LoginUser") != null) { // 로그인 세션이 있으면 메인페이지로 이동
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
			
		}else {
		
			mVo.setMem_id(request.getParameter("mem_id"));
			mVo.setMem_pw(request.getParameter("mem_pw"));
					
			MemberDAO mDao = MemberDAO.getInstance();
					
			if(mDao.userCheck(mVo) == 1){
				
				System.out.println("로그인 성공");

				MemberVO tempMVO = mDao.getMemberInfo(request.getParameter("mem_id"));
								
				session.setAttribute("LoginUser", tempMVO);
			}else if(mDao.userCheck(mVo) == 0){
				
				request.setAttribute("message", "비밀번호를 확인하세요");

			}else if(mDao.userCheck(mVo) == -1) {
				request.setAttribute("message", "존재하지 않는 회원입니다");
			}
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
			
		}		
	}	
}
