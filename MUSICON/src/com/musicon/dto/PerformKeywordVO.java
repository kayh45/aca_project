package com.musicon.dto;

public class PerformKeywordVO {

	private String pkwd_no;
	private String pfm_no;
	private String pkwd_name;
	public String getPkwd_no() {
		return pkwd_no;
	}
	public void setPkwd_no(String pkwd_no) {
		this.pkwd_no = pkwd_no;
	}
	public String getPfm_no() {
		return pfm_no;
	}
	public void setPfm_no(String pfm_no) {
		this.pfm_no = pfm_no;
	}
	public String getPkwd_name() {
		return pkwd_name;
	}
	public void setPkwd_name(String pkwd_name) {
		this.pkwd_name = pkwd_name;
	}
	@Override
	public String toString() {
		return "PerfomKeywordVO [pkwd_no=" + pkwd_no + ", pfm_no=" + pfm_no + ", pkwd_name=" + pkwd_name + "]";
	}
	
	
	
}
