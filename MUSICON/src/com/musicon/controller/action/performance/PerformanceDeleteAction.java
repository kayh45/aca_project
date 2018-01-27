package com.musicon.controller.action.performance;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.controller.action.Action;
import com.musicon.dao.PerformanceDAO;

public class PerformanceDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pfm_no = request.getParameter("pfm_no");
		
		PerformanceDAO pDao = PerformanceDAO.getInstance();
		pDao.deletePerformance(pfm_no);
		
		new PerformanceListAction().execute(request, response);
	}

}
