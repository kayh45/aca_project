package com.musicon.dao;

public class PerformKeywordDAO {
	private PerformKeywordDAO(){
		
	}
	
	private static PerformKeywordDAO instance = new PerformKeywordDAO();
	
	public static PerformKeywordDAO getInstance() {
		return instance;
	}
	
}
