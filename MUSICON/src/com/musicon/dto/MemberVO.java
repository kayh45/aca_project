package com.musicon.dto;

public class MemberVO {

	private int mem_no;
	private String mem_name;
	private String mem_id;
	private String mem_pw;
	private String mem_nick;
	private String mem_mail;
	private String mem_phone;
	private int mem_auth;
	private int brd_cnt;
	private int brpl_cnt;

	public int getMem_no() {
		return mem_no;
	}

	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getMem_pw() {
		return mem_pw;
	}

	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}

	public String getMem_nick() {
		return mem_nick;
	}

	public void setMem_nick(String mem_nick) {
		this.mem_nick = mem_nick;
	}

	public String getMem_mail() {
		return mem_mail;
	}

	public void setMem_mail(String mem_mail) {
		this.mem_mail = mem_mail;
	}

	public String getMem_phone() {
		return mem_phone;
	}

	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}

	public int getMem_auth() {
		return mem_auth;
	}

	public void setMem_auth(int mem_auth) {
		this.mem_auth = mem_auth;
	}

	public int getBrd_cnt() {
		return brd_cnt;
	}

	public void setBrd_cnt(int brd_cnt) {
		this.brd_cnt = brd_cnt;
	}

	public int getBrpl_cnt() {
		return brpl_cnt;
	}

	public void setBrpl_cnt(int brpl_cnt) {
		this.brpl_cnt = brpl_cnt;
	}

	@Override
	public String toString() {
		return "MemberVO [mem_no=" + mem_no + ", mem_name=" + mem_name + ", mem_id=" + mem_id + ", mem_pw=" + mem_pw
				+ ", mem_nick=" + mem_nick + ", mem_mail=" + mem_mail + ", mem_phone=" + mem_phone + ", mem_auth="
				+ mem_auth + "]";
	}

}