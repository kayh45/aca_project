package com.musicon.controller.action.performance;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.controller.action.Action;
import com.musicon.dao.PerformanceDAO;
import com.musicon.dto.PerformanceVO;

	public class PerformanceUpdateAction implements Action {

		@Override
		public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			PerformanceVO pVo = new PerformanceVO();
			
			pVo.setPfm_subject(request.getParameter("pfm_subject"));
			pVo.setPfm_actor(request.getParameter("pfm_actor"));
			pVo.setPfm_start(request.getParameter("pfm_start"));
			pVo.setPfm_end(request.getParameter("pfm_end"));
			pVo.setPfm_loc(request.getParameter("pfm_loc"));
			pVo.setPfm_content(request.getParameter("pfm_content"));
			pVo.setPfm_div(request.getParameter("pfm_div"));
			pVo.setPfm_reg(request.getParameter("pfm_reg"));
			pVo.setPfm_no(Integer.parseInt(request.getParameter("pfm_no")));
			
			PerformanceDAO pDao = PerformanceDAO.getInstance();
			pDao.updatePerformance(pVo);
			
			new PerformanceListAction().execute(request, response);
		}

	}

