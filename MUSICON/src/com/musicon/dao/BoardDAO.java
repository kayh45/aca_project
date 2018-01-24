package com.musicon.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.musicon.dto.BoardReplyVO;
import com.musicon.dto.BoardVO;
import com.musicon.util.DBManager;

public class BoardDAO {
	
	private BoardDAO(){
		
	}
	
	private static BoardDAO instance = new BoardDAO();
	
	public static BoardDAO getInstance(){
		return instance;
	}
	
	// 리뷰게시판
	public List<BoardVO> selectAllReview(){ 
		String sql = "select * from board where brd_div='review' order by brd_no desc";
		
		List<BoardVO> list = new ArrayList<BoardVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try{
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				BoardVO bVo = new BoardVO();
				
				bVo.setBrd_no(rs.getInt("brd_no"));
				bVo.setBrd_div(rs.getString("brd_div"));
				bVo.setBrd_subject(rs.getString("brd_subject"));
				bVo.setMem_no(rs.getInt("mem_no"));
				bVo.setBrd_date(rs.getString("brd_date"));
				bVo.setBrd_view(rs.getInt("brd_view"));
				bVo.setBrd_like(rs.getInt("brd_like"));
				bVo.setBrd_content(rs.getString("brd_content"));
				bVo.setPfm_no(rs.getInt("pfm_no"));
				
				list.add(bVo);
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}
	
	public void insertReview(BoardVO bVo){
		String sql = "insert into board(brd_no, brd_div, brd_subject, brd_content, mem_no) values (brd_seq.nextval, 'review', ?, ?, ?);";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try{
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bVo.getBrd_subject());
			pstmt.setString(2, bVo.getBrd_content());
			pstmt.setInt(3, bVo.getMem_no());
			
			pstmt.executeUpdate();
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	public void updateBrdView(String brd_no){
		String sql = "update board set brd_view = brd_view + 1 where brd_no=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try{
			conn = DBManager.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, brd_no);
			
			pstmt.executeUpdate();
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	// 게시판 글 상세 내용 보기 : 글번호로 찾아온다. : 실패 null,
	public BoardVO selectOneReviewByBrd_no(String brd_no){
		String sql = "select * from board where brd_no=?";
		
		BoardVO bVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			conn = DBManager.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, brd_no);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				bVo = new BoardVO();
				
				bVo.setBrd_no(rs.getInt("brd_no"));
				bVo.setBrd_div(rs.getString("brd_div"));
				bVo.setBrd_subject(rs.getString("brd_subject"));
				bVo.setMem_no(rs.getInt("mem_no"));
				bVo.setBrd_date(rs.getString("brd_date"));
				bVo.setBrd_view(rs.getInt("brd_view"));
				bVo.setBrd_like(rs.getInt("brd_like"));
				bVo.setBrd_content(rs.getString("brd_content"));
				bVo.setPfm_no(rs.getInt("pfm_no"));
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return bVo;
	}
	
	public void updateReview(BoardVO bVo){
		String sql = "update board set brd_subject=?, brd_content=? where brd_no=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try{
			conn = DBManager.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bVo.getBrd_subject());
			pstmt.setString(2, bVo.getBrd_content());
			pstmt.setInt(3, bVo.getBrd_no());
			
			pstmt.executeUpdate();
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	public void deleteBoard(String brd_no){
		String sql = "delete board where brd_no=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try{
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, brd_no);
			
			pstmt.executeUpdate();
		} catch(SQLException e){
			e.printStackTrace();
		}
	}
	
	// 게시판 댓글 관리
	public List<BoardReplyVO> selectAllBrpl(String brd_no){
		String sql = "select * from board_reply where brd_no=?";
		
		List<BoardReplyVO> list = new ArrayList<BoardReplyVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try{
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			PreparedStatement pstmt = null;
				
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, brd_no);
			pstmt.executeUpdate();
		
			rs = pstmt.executeQuery(sql);
			
			while(rs.next()){
				BoardReplyVO bVo = new BoardReplyVO();
				
				bVo.setBrpl_no(rs.getInt("brpl_no"));
				bVo.setBrd_no(rs.getInt("brd_no"));
				bVo.setMem_no(rs.getInt("mem_no"));
				bVo.setBrpl_content(rs.getString("brpl_content"));
				bVo.setBrpl_date(rs.getString("brpl_date"));
				list.add(bVo);
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}
	
	//댓글 입력
	public void insertBrpl(BoardReplyVO bVo){
		String sql = "insert into board_reply(brpl_no, brd_no, mem_no, brpl_content, brpl_date) values (brpl_seq.nextval, ?, ?, ?, sysdate)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try{
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, bVo.getBrd_no());
			pstmt.setInt(2, bVo.getMem_no());
			pstmt.setString(3, bVo.getBrpl_content());
			
			pstmt.executeUpdate();
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
}
