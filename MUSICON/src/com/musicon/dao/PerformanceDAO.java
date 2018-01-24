package com.musicon.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.musicon.dto.PerformanceVO;
import com.musicon.util.DBManager;

public class PerformanceDAO {
	private PerformanceDAO() {

	}

	private static PerformanceDAO instance = new PerformanceDAO();

	public static PerformanceDAO getInstance() {
		return instance;
	}

	public void insertPerformance(PerformanceVO pVo) {
		String sql = "insert into performance(pfm_no, pfm_subject, pfm_actor, pfm_start, pfm_end, pfm_loc, pfm_content, pfm_div, pfm_reg) "
				+ "values(pfm_seq.nextval, ?, ?, to_date(?, 'YYYY-MM-DD'), to_date(?, 'YYYY-MM-DD'), ?, ?, ?, ?)";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, pVo.getPfm_subject());
			pstmt.setString(2, pVo.getPfm_actor());
			pstmt.setString(3, pVo.getPfm_start());
			pstmt.setString(4, pVo.getPfm_end());
			pstmt.setString(5, pVo.getPfm_loc());
			pstmt.setString(6, pVo.getPfm_content());
			pstmt.setString(7, pVo.getPfm_div());
			pstmt.setString(8, pVo.getPfm_reg());

			System.out.println(pVo.getPfm_actor());

			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public PerformanceVO getPerformance(int pfm_no) {
		PerformanceVO pVo = null;
		String sql = "select * from performance where pfm_no=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pfm_no);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				pVo = new PerformanceVO();
				pVo.setPfm_subject(rs.getString("pfm_subject"));
				pVo.setPfm_actor(rs.getString("pfm_actor"));
				pVo.setPfm_start(rs.getString("pfm_start"));
				pVo.setPfm_end(rs.getString("pfm_end"));
				pVo.setPfm_loc(rs.getString("pfm_loc"));
				pVo.setPfm_content(rs.getString("pfm_content"));
				pVo.setPfm_div(rs.getString("pfm_div"));
				pVo.setPfm_reg(rs.getString("pfm_reg"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);

		}
		return pVo;
	}

	public List<PerformanceVO> selectAllPerformance() {
		String sql = "select * from performance order by pfm_no desc";

		List<PerformanceVO> list = new ArrayList<PerformanceVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();

			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				PerformanceVO pVo = new PerformanceVO();
				
				pVo.setPfm_no(rs.getInt("pfm_no"));
				pVo.setPfm_subject(rs.getString("pfm_subject"));
				pVo.setPfm_actor(rs.getString("pfm_actor"));
				pVo.setPfm_start(rs.getString("pfm_start"));
				pVo.setPfm_end(rs.getString("pfm_end"));
				pVo.setPfm_loc(rs.getString("pfm_loc"));
				pVo.setPfm_content(rs.getString("pfm_content"));
				pVo.setPfm_div(rs.getString("pfm_div"));
				pVo.setPfm_reg(rs.getString("pfm_reg"));

				System.out.println(rs.getString("pfm_subject"));
				
				list.add(pVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}
	
	
	public PerformanceVO selectOnePerformanceByNum(String num) {
		String sql = "select * from performance where pfm_no=?";

		PerformanceVO pVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				pVo = new PerformanceVO();

				pVo.setPfm_subject(rs.getString("pfm_subject"));
				pVo.setPfm_actor(rs.getString("pfm_actor"));
				pVo.setPfm_start(rs.getString("pfm_start"));
				pVo.setPfm_end(rs.getString("pfm_end"));
				pVo.setPfm_loc(rs.getString("pfm_loc"));
				pVo.setPfm_content(rs.getString("pfm_content"));
				pVo.setPfm_div(rs.getString("pfm_div"));
				pVo.setPfm_reg(rs.getString("pfm_reg"));
				pVo.setPfm_no(rs.getInt("pfm_no"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return pVo;
}
	
	
	public void updatePerformance(PerformanceVO pVo) {
		String sql = "update performance set pfm_subject=?, pfm_actor=?, pfm_start=?, pfm_end=?, "
				+ "pfm_loc=?, pfm_content=?, pfm_div=?, pfm_reg=? where pfm_no=?";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, pVo.getPfm_subject());
			pstmt.setString(2, pVo.getPfm_actor());
			pstmt.setString(3, pVo.getPfm_start());
			pstmt.setString(4, pVo.getPfm_end());
			pstmt.setString(5, pVo.getPfm_loc());
			pstmt.setString(6, pVo.getPfm_content());
			pstmt.setString(7, pVo.getPfm_div());
			pstmt.setString(8, pVo.getPfm_reg());
			pstmt.setInt(9, pVo.getPfm_no());

			System.out.println(sql);
			
			System.out.println(pVo.getPfm_no());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
}

	public void deletePerformance(String num) {
		String sql = "delete performance where pfm_no=?";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, num);

			System.out.println(num);
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}