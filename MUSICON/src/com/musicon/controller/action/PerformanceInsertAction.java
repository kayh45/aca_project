package com.musicon.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.dao.PerformanceDAO;
import com.musicon.dto.PerformanceVO;

import java.text.SimpleDateFormat;

public class PerformanceInsertAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String pfm_subject=request.getParameter("pfm_subject");
		String pfm_actor=request.getParameter("pfm_actor");
		String pfm_start=(request.getParameter("pfm_start"));
		String pfm_end=(request.getParameter("pfm_end"));
		String pfm_loc=request.getParameter("pfm_loc");
		String pfm_content=request.getParameter("pfm_content");
		String pfm_div=request.getParameter("pfm_div");
		String pfm_reg=request.getParameter("pfm_reg");

		
		
		PerformanceVO pVo=new PerformanceVO();
		pVo.setPfm_subject(request.getParameter("pfm_subject"));
		pVo.setPfm_actor(request.getParameter("pfm_actor"));
		pVo.setPfm_start(request.getParameter("pfm_start"));
		pVo.setPfm_end(request.getParameter("pfm_end"));
		pVo.setPfm_loc(request.getParameter("pfm_loc"));
		pVo.setPfm_content(request.getParameter("pfm_content"));
		pVo.setPfm_div(request.getParameter("pfm_div"));
		pVo.setPfm_reg(request.getParameter("pfm_reg"));
		
		PerformanceDAO pDao=PerformanceDAO.getInstance();
		pDao.insertPerformance(pVo);
		
		
		
		
		}
				
	
		
	}


