package com.musicon.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.dao.PerformanceDAO;

public class PerformanceDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num = request.getParameter("num");
		
		PerformanceDAO pDao = PerformanceDAO.getInstance();
		pDao.deletePerformance(num);
		
		new PerformanceListAction().execute(request, response);
	}

}
