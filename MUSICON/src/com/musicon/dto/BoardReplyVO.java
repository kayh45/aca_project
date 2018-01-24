package com.musicon.dto;

public class BoardReplyVO {
	/*CREATE TABLE board_reply(
			 brpl_no               NUMBER(10)  PRIMARY KEY ,
			 brd_no                NUMBER(10) NOT NULL REFERENCES BOARD(brd_no),
			 mem_no                NUMBER(10)  NOT NULL REFERENCES MEMBER(mem_no),
			 brpl_content          VARCHAR2(300) NOT NULL ,
			 brpl_date             DATE DEFAULT SYSDATE
			);*/
	
	private int brpl_no;
	private int brd_no;
	private int mem_no;
	private String brpl_content;
	private String brpl_date;
	
	public int getBrpl_no() {
		return brpl_no;
	}
	public void setBrpl_no(int brpl_no) {
		this.brpl_no = brpl_no;
	}
	public int getBrd_no() {
		return brd_no;
	}
	public void setBrd_no(int brd_no) {
		this.brd_no = brd_no;
	}
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
	public String getBrpl_content() {
		return brpl_content;
	}
	public void setBrpl_content(String brpl_content) {
		this.brpl_content = brpl_content;
	}
	public String getBrpl_date() {
		return brpl_date;
	}
	public void setBrpl_date(String brpl_date) {
		this.brpl_date = brpl_date;
	}
	
	@Override
	public String toString() {
		return "BoardReplyVO [brpl_no=" + brpl_no + ", brd_no=" + brd_no + ", mem_no=" + mem_no + ", brpl_content="
				+ brpl_content + ", brpl_date=" + brpl_date + "]";
	}
	
}
