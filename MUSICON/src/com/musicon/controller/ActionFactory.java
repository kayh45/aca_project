package com.musicon.controller;

import com.musicon.controller.action.Action;
import com.musicon.controller.action.brpl.BrplWriteAction;
import com.musicon.controller.action.member.MemberIdCheckAction;
import com.musicon.controller.action.member.MemberInfoAction;
import com.musicon.controller.action.member.MemberJoinAction;
import com.musicon.controller.action.member.MemberJoinFormAction;
import com.musicon.controller.action.member.MemberLoginAction;
import com.musicon.controller.action.member.MemberLogoutAction;
import com.musicon.controller.action.member.MemberUpdateAction;
import com.musicon.controller.action.member.MemberUpdateFormAction;
import com.musicon.controller.action.performance.PerformanceDeleteAction;
import com.musicon.controller.action.performance.PerformanceListAction;
import com.musicon.controller.action.performance.PerformanceSearchAllAction;
import com.musicon.controller.action.performance.PerformanceViewAction;
import com.musicon.controller.action.performance.PerformanceWriteAction;
import com.musicon.controller.action.performance.PerformanceWriteFormAction;
import com.musicon.controller.action.review.BoardDeleteAction;
import com.musicon.controller.action.review.BoardListAction;
import com.musicon.controller.action.review.BoardUpdateAction;
import com.musicon.controller.action.review.BoardUpdateFormAction;
import com.musicon.controller.action.review.BoardViewAction;
import com.musicon.controller.action.review.BoardWriteAction;
import com.musicon.controller.action.review.BoardWriteFormAction;

public class ActionFactory {

	//주석
	
	private static ActionFactory instance = new ActionFactory();
	
	private ActionFactory(){
		super();
	}
	
	public static ActionFactory getInstance(){
		return instance;
	}
	
	public Action getAction(String command){
		Action action = null;
		
		System.out.println("ActionFactory : " + command);
	
		if(command.equals("board_list")){
			action = new BoardListAction();
		} else if(command.equals("board_write_form")){
			action = new BoardWriteFormAction();
		} else if(command.equals("board_write")){
			action = new BoardWriteAction();
		} else if(command.equals("board_view")){
			action = new BoardViewAction();
		} else if(command.equals("board_update_form")){
			action = new BoardUpdateFormAction();
		} else if(command.equals("board_update")){
			action = new BoardUpdateAction();
		} else if (command.equals("board_delete")){
			action = new BoardDeleteAction();
		} else if (command.equals("brpl_write")){
			action = new BrplWriteAction();
		} else if (command.equals("member_join_form")){
			action = new MemberJoinFormAction();
		} else if (command.equals("member_join")){
			action = new MemberJoinAction();
		} else if (command.equals("member_login")){
			action = new MemberLoginAction();
		} else if (command.equals("member_logout")){
			action = new MemberLogoutAction();
		} else if (command.equals("member_info")){
			action = new MemberInfoAction();
		} else if (command.equals("member_update_form")){
			action = new MemberUpdateFormAction();
		} else if (command.equals("member_update")){
			action = new MemberUpdateAction();
		} else if (command.equals("member_id_check")){
			action = new MemberIdCheckAction();
		} else if (command.equals("performance_write_form")){
			action = new PerformanceWriteFormAction();
		} else if (command.equals("performance_write")){
			action = new PerformanceWriteAction();
		} else if (command.equals("performance_view")){
			action = new PerformanceViewAction();
		} else if (command.equals("performance_list")){
			action = new PerformanceListAction();
		} else if (command.equals("performance_search_all")){
			action = new PerformanceSearchAllAction();
		} else if (command.equals("performance_delete")){
			action = new PerformanceDeleteAction();
		}
		
		return action;
	
	}
	
}
