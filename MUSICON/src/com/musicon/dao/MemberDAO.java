package com.musicon.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.musicon.dto.MemberVO;
import com.musicon.util.DBManager;

public class MemberDAO {

	private static MemberDAO instance = new MemberDAO();
	
	public static MemberDAO getInstance() {
		return instance;
	}
	
	// 회원 가입기능
	public void joinMember(MemberVO mVo) {
		
		String sql = "insert into member(mem_no, mem_name, mem_id, mem_pw, mem_nick, mem_phone, "
				+ "mem_mail) values(mem_seq.nextval, ?, ?, ?, ?, ?, ?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mVo.getMem_name());
			pstmt.setString(2, mVo.getMem_id());
			pstmt.setString(3, mVo.getMem_pw());
			pstmt.setString(4, mVo.getMem_nick());
			pstmt.setString(5, mVo.getMem_phone());
			pstmt.setString(6, mVo.getMem_mail());
						
			pstmt.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
			
		}finally {
			DBManager.close(conn, pstmt);
			
		}
		
	}
	
	// 로그인 (계정체크 기능)
	public int userCheck(MemberVO mVo) {
		
		String sql = "select mem_pw from member where mem_id=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mVo.getMem_id());			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(rs.getString("mem_pw") != null && rs.getString("mem_pw").equals(mVo.getMem_pw())){
					return 1; // 로그인 성공
				}else {
					return 0; // 로그인 실패
				}
				
			}else {
				return -1;
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
			
		}finally {
			DBManager.close(conn, pstmt, rs);
			
		}
		return -1;
	}
	
	// 암호를 제외한 모든 회원정보를 가져옴(세션에 저장하기 위함)
	public MemberVO getMemberInfo(String mem_id) {
		
		MemberVO mVo = null;
		
		String sql = "select * from member where mem_id = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mem_id);
			
			System.out.println(mem_id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				mVo = new MemberVO();
				
				mVo.setMem_no(rs.getInt("mem_no"));
				mVo.setMem_id(rs.getString("mem_id"));
				mVo.setMem_name(rs.getString("mem_name"));
				mVo.setMem_nick(rs.getString("mem_nick"));
				mVo.setMem_mail(rs.getString("mem_mail"));
				mVo.setMem_phone(rs.getString("mem_phone"));
				mVo.setMem_auth(rs.getInt("mem_auth"));
				
			}
			
			
		}catch(SQLException e) {
			e.printStackTrace();
			
		}finally {
			DBManager.close(conn, pstmt, rs);
			
		}
				
		return mVo;
		
	}
	
	// 회원정보수정
	public void updateMember(MemberVO mVo) {
		
		String sql = "update member set mem_name = ?, mem_pw = ?, mem_nick = ?, "
				+ "mem_phone = ?, mem_mail = ? where mem_no = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mVo.getMem_name());
			pstmt.setString(2, mVo.getMem_pw());
			pstmt.setString(3, mVo.getMem_nick());
			pstmt.setString(4, mVo.getMem_phone());
			pstmt.setString(5, mVo.getMem_mail());
			pstmt.setInt(6, mVo.getMem_no());
			
			pstmt.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
			
		}finally {
			DBManager.close(conn, pstmt);
			
		}
	}
	
	// 회원탈퇴
	public void deleteMember(int mem_no) {
		String sql = "delete from member where mem_no = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, mem_no);
			
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
			
		}finally {
			DBManager.close(conn, pstmt);
			
		}
	}
}
