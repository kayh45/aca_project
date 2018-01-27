package com.musicon.controller.action.performance;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.controller.action.Action;
import com.musicon.dao.PerformKeywordDAO;
import com.musicon.dao.PerformanceDAO;
import com.musicon.dto.PerformKeywordVO;
import com.musicon.dto.PerformanceVO;

public class PerformanceWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "perform.do?command=performance_list";
		
		PerformanceVO pVo = new PerformanceVO();
		PerformKeywordVO pkVo = new PerformKeywordVO();

		pVo.setPfm_subject(request.getParameter("pfm_subject"));
		pVo.setPfm_actor(request.getParameter("pfm_actor"));
		pVo.setPfm_start(request.getParameter("pfm_start"));
		pVo.setPfm_end(request.getParameter("pfm_end"));
		pVo.setPfm_loc(request.getParameter("pfm_loc"));
		pVo.setPfm_content(request.getParameter("pfm_content"));
		pVo.setPfm_div(request.getParameter("pfm_div"));
		pVo.setPfm_reg(request.getParameter("pfm_reg"));
		pVo.setPfm_pic(request.getParameter("pfm_pic"));

		PerformanceDAO pDao = PerformanceDAO.getInstance();
		pDao.insertPerformance(pVo);

		if (request.getParameter("keyword1") != null && request.getParameter("keyword1").length() > 0) {
			pkVo.setPfm_no(pDao.seqCurrval());
			pkVo.setPkwd_name(request.getParameter("keyword1"));
			PerformKeywordDAO pkDao = PerformKeywordDAO.getInstance();
			pkDao.insertKeyword(pkVo);
		}
		if (request.getParameter("keyword2") != null && request.getParameter("keyword2").length() > 0) {
			pkVo.setPfm_no(pDao.seqCurrval());
			pkVo.setPkwd_name(request.getParameter("keyword2"));
			PerformKeywordDAO pkDao = PerformKeywordDAO.getInstance();
			pkDao.insertKeyword(pkVo);
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
