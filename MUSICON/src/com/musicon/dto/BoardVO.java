package com.musicon.dto;

public class BoardVO extends MemberVO{
	/*CREATE TABLE board(
			 brd_no                NUMBER(10)  PRIMARY KEY,
			 brd_div               VARCHAR2(10)  NOT NULL ,
			 brd_subject           VARCHAR2(50)  NOT NULL ,
			 mem_no                NUMBER(10) NOT NULL REFERENCES MEMBER(mem_no),
			 brd_date              DATE DEFAULT SYSDATE,
			 brd_view              NUMBER(10)  DEFAULT 0,
			 brd_like              NUMBER(10)  DEFAULT 0,
			 brd_content           VARCHAR2(1000)  NOT NULL ,
			 pfm_no                NUMBER(10) NULL REFERENCES PERFORMANCE(pfm_no),
			 brd_pic               VARCHAR2(100)  NULL ,
			 brd_vid               VARCHAR2(100)  NULL
			);
	 */
	
	private int brd_no;
	private String brd_div;
	private String brd_subject;
	private int mem_no;
	private String brd_date;
	private int brd_view;
	private int brd_like;
	private String brd_content;
	private int pfm_no;
	private String brd_pic;
	private String brd_vid;
	
	public int getBrd_no() {
		return brd_no;
	}
	public void setBrd_no(int brd_no) {
		this.brd_no = brd_no;
	}
	public String getBrd_div() {
		return brd_div;
	}
	public void setBrd_div(String brd_div) {
		this.brd_div = brd_div;
	}
	public String getBrd_subject() {
		return brd_subject;
	}
	public void setBrd_subject(String brd_subject) {
		this.brd_subject = brd_subject;
	}
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
	public String getBrd_date() {
		return brd_date;
	}
	public void setBrd_date(String brd_date) {
		this.brd_date = brd_date;
	}
	public int getBrd_view() {
		return brd_view;
	}
	public void setBrd_view(int brd_view) {
		this.brd_view = brd_view;
	}
	public int getBrd_like() {
		return brd_like;
	}
	public void setBrd_like(int brd_like) {
		this.brd_like = brd_like;
	}
	public String getBrd_content() {
		return brd_content;
	}
	public void setBrd_content(String brd_content) {
		this.brd_content = brd_content;
	}
	public int getPfm_no() {
		return pfm_no;
	}
	public void setPfm_no(int pfm_no) {
		this.pfm_no = pfm_no;
	}
	public String getBrd_pic() {
		return brd_pic;
	}
	public void setBrd_pic(String brd_pic) {
		this.brd_pic = brd_pic;
	}
	public String getBrd_vid() {
		return brd_vid;
	}
	public void setBrd_vid(String brd_vid) {
		this.brd_vid = brd_vid;
	}
	
	@Override
	public String toString() {
		return "BoardVO [brd_no=" + brd_no + ", brd_div=" + brd_div + ", brd_subject=" + brd_subject + ", mem_no="
				+ mem_no + ", brd_date=" + brd_date + ", brd_view=" + brd_view + ", brd_like=" + brd_like
				+ ", brd_content=" + brd_content + ", pfm_no=" + pfm_no + ", brd_pic=" + brd_pic + ", brd_vid="
				+ brd_vid + "]";
	}
		
}
