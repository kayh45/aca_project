package com.musicon.controller.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicon.dao.PerformKeywordDAO;
import com.musicon.dao.PerformanceDAO;
import com.musicon.dto.PerformanceVO;

public class PerformanceSearchAllAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "performance/performance.jsp";
		
		Set<String> kwdSet = new HashSet<String>();
		Set<String> regSet = new HashSet<String>();
		Set<String> set = new HashSet<String>();
		String search = request.getParameter("srch");
		String[] keywords = request.getParameterValues("kwds");
		String[] regs = request.getParameterValues("regs");
		String pfm_div = request.getParameter("pfm_div");
		
		
		
		List<PerformanceVO> performanceList = new ArrayList<PerformanceVO>();
		
		PerformanceDAO pDao = PerformanceDAO.getInstance();
		PerformKeywordDAO pkDao = PerformKeywordDAO.getInstance();
		
		 // 제목으로 검색한 공연번호를 set에 저장
		
		if(keywords!=null) {
			for(String word:keywords) { // 키워드로 검색한 공연번호를 set에 저장
				kwdSet.addAll(pkDao.searchByKeyword(word));
			}	
		}
		
		if(regs!=null) {
			for(String reg:regs) { // 지역으로 검색한 공연번호를 set에 저장
				regSet.addAll(pDao.searchByReg(reg));
			}
		}
		
		if(keywords!=null && regs!=null){
			kwdSet.retainAll(regSet);		
			set.addAll(kwdSet);
		}else if(keywords!=null && regs==null) {		
			set.addAll(kwdSet);
		}else if(keywords==null && regs!=null) {		
			set.addAll(regSet);
		}
		
		
		
		if(keywords==null && regs==null){
			set.addAll(pDao.searchBySubject(search));
		}
		
		
		for(String pfm_no:set) { // set의 공연번호와 분류를 기준으로 list를 만듦	
			if(pfm_div.equals("전체")){
				if(pDao.searchByAll(pfm_no).getPfm_no() != 0){
					performanceList.add(pDao.searchByAll(pfm_no));
				}
			}else {	
				if(pDao.searchByAll(pfm_no, pfm_div).getPfm_no() != 0){
					performanceList.add(pDao.searchByAll(pfm_no, pfm_div));	
				}
			}
			
		}
		
		request.setAttribute("keywordList", pkDao.keywordRank());
		request.setAttribute("performanceList", performanceList);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);	
		
	}

}
