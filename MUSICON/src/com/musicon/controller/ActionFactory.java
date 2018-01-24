package com.musicon.controller;

import com.musicon.controller.action.Action;
import com.musicon.controller.action.BoardDetailAction;
import com.musicon.controller.action.BoardReviewAction;
import com.musicon.controller.action.PerformDetailAction;

public class ActionFactory {

	private static ActionFactory instance = new ActionFactory();
	
	private ActionFactory() {
		super();
	}
	
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory : " + command);
		if(command.equals("b_review")){
			action = new BoardReviewAction();
		}else if(command.equals("b_detail")) {
			action = new BoardDetailAction();
		}else if(command.equals("p_detail")) {
			action = new PerformDetailAction();
		}

		return action;
	}
	
}
