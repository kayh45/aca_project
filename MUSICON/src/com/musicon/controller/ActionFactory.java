package com.musicon.controller;

import com.musicon.controller.action.Action;
import com.musicon.controller.action.MemberJoinAction;
import com.musicon.controller.action.MemberJoinFormAction;
import com.musicon.controller.action.MemberLoginAction;
import com.musicon.controller.action.MemberLogoutAction;
import com.musicon.controller.action.brpl.BrplWriteAction;
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
		} else if(command.equals("review_write_form")){
			action = new BoardWriteFormAction();
		} else if(command.equals("review_write")){
			action = new BoardWriteAction();
		} else if(command.equals("review_view")){
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
		}
		
		return action;
	
	}
	
}
