package com.musicon.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.dao.PerformKeywordDAO;
import com.musicon.dao.PerformanceDAO;
import com.musicon.dto.PerformKeywordVO;
import com.musicon.dto.PerformanceVO;

public class PerformanceListAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/performance/performance.jsp";
		
		PerformanceDAO pDao = PerformanceDAO.getInstance();
		PerformKeywordDAO pkDao = PerformKeywordDAO.getInstance();
		
		List<PerformanceVO> PerformanceList = pDao.selectAllPerformance();
		
		request.setAttribute("performanceList", PerformanceList);
		request.setAttribute("keywordList", pkDao.keywordRank());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
