package com.musicon.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.dao.PerformanceDAO;
import com.musicon.dto.PerformanceVO;

public class PerformanceUpdateFormAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/performance/performanceUpdate.jsp";
		
		String num = request.getParameter("num");
		
		PerformanceDAO pDao = PerformanceDAO.getInstance();
		
		
		
		PerformanceVO pVo = pDao.selectOnePerformanceByNum(num);
		
		request.setAttribute("performance", pVo);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}
	
}
