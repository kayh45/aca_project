package com.musicon.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.dao.PerformanceDAO;
import com.musicon.dto.PerformanceVO;

public class PerformanceListAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/performance/performanceList.jsp";
		
		PerformanceDAO pDao = PerformanceDAO.getInstance();
		
		List<PerformanceVO> PerformanceList = pDao.selectAllPerformance();
		
		request.setAttribute("performanceList", PerformanceList);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
