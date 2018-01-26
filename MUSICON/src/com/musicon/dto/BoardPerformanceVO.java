package com.musicon.dto;

public class BoardPerformanceVO extends BoardMemberVO {
	// board 테이블과 performce테이블을 조인하기 위한 VO
	private int pfm_no;
	private String pfm_subject;
	private String pfm_actor;
	private String pfm_start;
	private String pfm_end;
	private String pfm_loc;
	private String pfm_content;
	private String pfm_div;
	private String pfm_reg;
	private String pfm_pic;
	public int getPfm_no() {
		return pfm_no;
	}
	public void setPfm_no(int pfm_no) {
		this.pfm_no = pfm_no;
	}
	public String getPfm_subject() {
		return pfm_subject;
	}
	public void setPfm_subject(String pfm_subject) {
		this.pfm_subject = pfm_subject;
	}
	public String getPfm_actor() {
		return pfm_actor;
	}
	public void setPfm_actor(String pfm_actor) {
		this.pfm_actor = pfm_actor;
	}
	public String getPfm_start() {
		return pfm_start;
	}
	public void setPfm_start(String pfm_start) {
		this.pfm_start = pfm_start;
	}
	public String getPfm_end() {
		return pfm_end;
	}
	public void setPfm_end(String pfm_end) {
		this.pfm_end = pfm_end;
	}
	public String getPfm_loc() {
		return pfm_loc;
	}
	public void setPfm_loc(String pfm_loc) {
		this.pfm_loc = pfm_loc;
	}
	public String getPfm_content() {
		return pfm_content;
	}
	public void setPfm_content(String pfm_content) {
		this.pfm_content = pfm_content;
	}
	public String getPfm_div() {
		return pfm_div;
	}
	public void setPfm_div(String pfm_div) {
		this.pfm_div = pfm_div;
	}
	public String getPfm_reg() {
		return pfm_reg;
	}
	public void setPfm_reg(String pfm_reg) {
		this.pfm_reg = pfm_reg;
	}
	@Override
	public String toString() {
		return "PerformanceVO [pfm_no=" + pfm_no + ", pfm_subject=" + pfm_subject + ", pfm_actor=" + pfm_actor
				+ ", pfm_start=" + pfm_start + ", pfm_end=" + pfm_end + ", pfm_loc=" + pfm_loc + ", pfm_content="
				+ pfm_content + ", pfm_div=" + pfm_div + ", pfm_reg=" + pfm_reg + "]";
	}
	public String getPfm_pic() {
		return pfm_pic;
	}
	public void setPfm_pic(String pfm_pic) {
		this.pfm_pic = pfm_pic;
	}
	
}
