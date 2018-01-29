package com.musicon.controller;

import com.musicon.controller.action.Action;
import com.musicon.controller.action.MainAction;
import com.musicon.controller.action.board.BoardDeleteAction;
import com.musicon.controller.action.board.BoardLikeAddAction;
import com.musicon.controller.action.board.BoardListAction;
import com.musicon.controller.action.board.BoardListSearchAction;
import com.musicon.controller.action.board.BoardMainAction;
import com.musicon.controller.action.board.BoardUpdateAction;
import com.musicon.controller.action.board.BoardUpdateFormAction;
import com.musicon.controller.action.board.BoardViewAction;
import com.musicon.controller.action.board.BoardWriteAction;
import com.musicon.controller.action.board.BoardWriteFormAction;
import com.musicon.controller.action.board.BrplDeleteAction;
import com.musicon.controller.action.board.BrplWriteAction;
import com.musicon.controller.action.member.MemberDeleteAction;
import com.musicon.controller.action.member.MemberIdCheckAction;
import com.musicon.controller.action.member.MemberInfoAction;
import com.musicon.controller.action.member.MemberJoinAction;
import com.musicon.controller.action.member.MemberJoinFormAction;
import com.musicon.controller.action.member.MemberListAction;
import com.musicon.controller.action.member.MemberLoginAction;
import com.musicon.controller.action.member.MemberLogoutAction;
import com.musicon.controller.action.member.MemberNickCheckAction;
import com.musicon.controller.action.member.MemberNickUpdateCheckAction;
import com.musicon.controller.action.member.MemberUpdateAction;
import com.musicon.controller.action.member.MemberUpdateFormAction;
import com.musicon.controller.action.performance.PerformanceDeleteAction;
import com.musicon.controller.action.performance.PerformanceListAction;
import com.musicon.controller.action.performance.PerformanceSearchAllAction;
import com.musicon.controller.action.performance.PerformanceUpdateAction;
import com.musicon.controller.action.performance.PerformanceUpdateFormAction;
import com.musicon.controller.action.performance.PerformanceViewAction;
import com.musicon.controller.action.performance.PerformanceWriteAction;
import com.musicon.controller.action.performance.PerformanceWriteFormAction;

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
		} else if(command.equals("board_list_search")){
			action = new BoardListSearchAction();
		} else if(command.equals("board_main")){
			action = new BoardMainAction();
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
		} else if(command.equals("board_like")){
			action = new BoardLikeAddAction();
		} else if (command.equals("board_delete")){
			action = new BoardDeleteAction();
		} else if (command.equals("brpl_write")){
			action = new BrplWriteAction();
		} else if (command.equals("brpl_delete")){
			action = new BrplDeleteAction();
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
		} else if (command.equals("member_list")){
			action = new MemberListAction();
		} else if (command.equals("member_delete")){
			action = new MemberDeleteAction();
		} else if (command.equals("member_id_check")){
			action = new MemberIdCheckAction();
		} else if (command.equals("member_nick_check")){
			action = new MemberNickCheckAction();
		} else if (command.equals("member_nick_update_check")){
			action = new MemberNickUpdateCheckAction();
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
		} else if (command.equals("performance_update_form")){
			action = new PerformanceUpdateFormAction();
		} else if (command.equals("performance_update")){
			action = new PerformanceUpdateAction();
		} else if (command.equals("main")){
			action = new MainAction();
		}
		
		return action;
	
	}
	
}
