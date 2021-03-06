package com.musicon.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.musicon.dto.PerformKeywordVO;
import com.musicon.util.DBManager;

public class PerformKeywordDAO {
	private PerformKeywordDAO(){
		
	}
	
	private static PerformKeywordDAO instance = new PerformKeywordDAO();
	
	public static PerformKeywordDAO getInstance() {
		return instance;
	}
	
	public void insertKeyword(PerformKeywordVO pkVo) {
		
		String sql = "insert into perform_Keyword values(pkwd_seq.nextval, ?, ?)";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			
			pstmt.setString(1, pkVo.getPkwd_name());
			pstmt.setInt(2, pkVo.getPfm_no());


			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		
	}
	
	public List<String> getKeywordName(int pfm_no) {
		
		String sql = "select * from perform_keyword where pfm_no = ?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<String> list = new ArrayList<String>();
		
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, pfm_no);

			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				list.add(rs.getString("pkwd_name")	);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}
	
	public List<String> keywordRank() {
		
		String sql = " select k.* from (select pkwd_name, count(*) "
				+ "from PERFORM_KEYWORD group by PKWD_NAME order by 2 desc) "
				+ "k where rownum <= 10";
	
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		List<String> list = new ArrayList<String>();
		
		
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {				
				list.add(rs.getString("pkwd_name"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}
	
public Set<String> searchByKeyword(String keyword){
		
		String sql = "select pfm_no from perform_keyword where pkwd_name = '" + keyword + "'";

		Set<String> list = new HashSet<String>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		
		System.out.println(keyword);
		
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				
				list.add(rs.getString("pfm_no"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}
	
}
