package com.musicon.controller.action.performance;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.controller.action.Action;
import com.musicon.dao.PerformanceDAO;
import com.musicon.dto.PerformanceVO;

public class PerformanceViewAction implements Action {

	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/performance/performance_detail.jsp";
		
		String pfm_no = request.getParameter("pfm_no");
		
		System.out.println(pfm_no);
		
		PerformanceDAO pDao = PerformanceDAO.getInstance();
		
		
		PerformanceVO pVo = pDao.selectOnePerformanceByNum(pfm_no);
		request.setAttribute("performance", pVo);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}
	
}