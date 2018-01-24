package com.musicon.dto;

public class BoardMemberVO extends BoardVO {

	private int mem_no;
	   private String mem_name;
	   private String mem_id;
	   private String mem_pw;
	   private String mem_nick;
	   private String mem_mail;
	   private String mem_phone;
	   private int mem_auth;
	   
	   
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
}
