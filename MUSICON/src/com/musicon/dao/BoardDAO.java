package com.musicon.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.musicon.dto.BoardPerformanceVO;
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
	
	// 리뷰게시판을 제외한 모든 게시판리스트
	public List<BoardVO> selectAllBoard(String brd_div){
		String sql = "select * from board b, member m where b.mem_no = m.mem_no"
				+ " and brd_div=? order by brd_no desc";

		List<BoardVO> list = new ArrayList<BoardVO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, brd_div);
			
			rs = pstmt.executeQuery();

			while (rs.next()) {
				BoardVO bVo = new BoardVO();

				bVo.setBrd_no(rs.getInt("brd_no"));
				bVo.setBrd_div(rs.getString("brd_div"));
				bVo.setBrd_subject(rs.getString("brd_subject"));
				bVo.setMem_no(rs.getInt("mem_no"));
				bVo.setBrd_date(rs.getString("brd_date"));
				bVo.setBrd_view(rs.getInt("brd_view"));
				bVo.setBrd_like(rs.getInt("brd_like"));
				bVo.setBrd_content(rs.getString("brd_content"));
				bVo.setBrd_pic(rs.getString("brd_pic"));
				bVo.setBrd_pic(rs.getString("brd_vid"));
				bVo.setMem_nick(rs.getString("mem_nick"));

				list.add(bVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}
	
	// 리뷰게시판
	public List<BoardPerformanceVO> selectAllReview(){ 
		// 조인 추가 했음 -현
		String sql = "select * from board b, performance p, member m "
				+ "where b.pfm_no = p.pfm_no and b.mem_no = m.mem_no "
				+ "and brd_div='review' order by brd_no desc";
		List<BoardPerformanceVO> list = new ArrayList<BoardPerformanceVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try{
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				
				BoardPerformanceVO bVo = new BoardPerformanceVO();
				
				bVo.setBrd_no(rs.getInt("brd_no"));
				bVo.setBrd_div(rs.getString("brd_div"));
				bVo.setBrd_subject(rs.getString("brd_subject"));
				bVo.setMem_no(rs.getInt("mem_no"));
				bVo.setBrd_date(rs.getString("brd_date"));
				bVo.setBrd_view(rs.getInt("brd_view"));
				bVo.setBrd_like(rs.getInt("brd_like"));
				bVo.setBrd_content(rs.getString("brd_content"));				
				bVo.setPfm_div(rs.getString("pfm_div"));
				bVo.setMem_nick(rs.getString("mem_nick"));
				
				
				list.add(bVo);
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}
	
	public void writeBoard(BoardPerformanceVO bVo, String brd_div){
		String sql = "insert into board(brd_no, brd_div, brd_subject, brd_content, "
				+ "mem_no, pfm_no, brd_pic, brd_vid) "
				+ "values (brd_seq.nextval, ?, ?, ?, ?, ?, ?, ?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try{
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			
			pstmt.setString(1, brd_div);
			pstmt.setString(2, bVo.getBrd_subject());
			pstmt.setString(3, bVo.getBrd_content());
			pstmt.setInt(4, bVo.getMem_no());
			
			System.out.println(bVo.getPfm_no());
			
			if(bVo.getPfm_no() != 0) {
				pstmt.setInt(5, bVo.getPfm_no());
			}else {
				pstmt.setString(5, null);
			}
			
			pstmt.setString(6, bVo.getBrd_pic());
			pstmt.setString(7, bVo.getBrd_vid());
			
			pstmt.executeUpdate();
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	public void addView(String brd_no){
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
	public BoardPerformanceVO selectOneBoardReview(String brd_no){
		String sql = "select * from board b, performance p "
				+ "where b.pfm_no = p.pfm_no and brd_no=?";
		
		BoardPerformanceVO bVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			conn = DBManager.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, brd_no);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				bVo = new BoardPerformanceVO();
				
				bVo.setBrd_no(rs.getInt("brd_no"));
				bVo.setBrd_div(rs.getString("brd_div"));
				bVo.setBrd_subject(rs.getString("brd_subject"));
				bVo.setMem_no(rs.getInt("mem_no"));
				bVo.setBrd_date(rs.getString("brd_date"));
				bVo.setBrd_view(rs.getInt("brd_view"));
				bVo.setBrd_like(rs.getInt("brd_like"));
				bVo.setBrd_content(rs.getString("brd_content"));
				bVo.setPfm_no(rs.getInt("pfm_no"));
				bVo.setPfm_div(rs.getString("pfm_div"));
				bVo.setPfm_subject(rs.getString("pfm_subject"));
				bVo.setPfm_loc(rs.getString("pfm_loc"));
				bVo.setPfm_pic(rs.getString("pfm_pic"));
				bVo.setPfm_start(rs.getString("pfm_start"));
				bVo.setPfm_actor(rs.getString("pfm_actor"));
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return bVo;
	}
	
	public BoardPerformanceVO selectOneBoard(String brd_no){
		String sql = "select * from board where brd_no=?";
		
		BoardPerformanceVO bVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			conn = DBManager.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, brd_no);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				bVo = new BoardPerformanceVO();
				
				bVo.setBrd_no(rs.getInt("brd_no"));
				bVo.setBrd_div(rs.getString("brd_div"));
				bVo.setBrd_subject(rs.getString("brd_subject"));
				bVo.setMem_no(rs.getInt("mem_no"));
				bVo.setBrd_date(rs.getString("brd_date"));
				bVo.setBrd_pic(rs.getString("brd_pic"));
				bVo.setBrd_vid(rs.getString("brd_vid"));
				bVo.setBrd_view(rs.getInt("brd_view"));
				bVo.setBrd_like(rs.getInt("brd_like"));
				bVo.setBrd_content(rs.getString("brd_content"));
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return bVo;
	}
	
	
	
	public void updateBoard(BoardVO bVo, String brd_div){
		String sql = "update board set brd_subject=?, brd_content=?, pfm_no = ?, "
				+ "brd_pic = ?, brd_vid = ? where brd_no=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try{
			conn = DBManager.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bVo.getBrd_subject());
			pstmt.setString(2, bVo.getBrd_content());
			
			if(bVo.getPfm_no() != 0) {
				pstmt.setInt(3, bVo.getPfm_no());
			}else {
				pstmt.setString(3, null);
			}
			
			pstmt.setString(4, bVo.getBrd_pic());
			pstmt.setString(5, bVo.getBrd_vid());
			
			pstmt.setInt(6, bVo.getBrd_no());
			
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
		String sql = "select * from board_reply br, member m where br.mem_no = m.mem_no and br.brd_no = ? order by brpl_date";
		
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
				bVo.setMem_nick(rs.getString("mem_nick"));
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
	public void writeBrpl(BoardReplyVO bVo){
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
	
	public void deleteBrpl(BoardReplyVO bVo) {
		String sql = "delete from board_reply where brpl_no=?";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, bVo.getBrpl_no());

			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	public int NumOfBoardInBrplNo(int brpl_no){
		
		String sql = "select * from board_reply where brpl_no = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int brd_no = 0;		
		
		try{
			conn = DBManager.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, brpl_no);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){

				brd_no = rs.getInt("brd_no");
				
				
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return brd_no;
	}
	
	public List<BoardVO> selectTopPhoto() {
		String sql = "select * from board b, member m where b.mem_no = m.mem_no "
				+ "and brd_div = 'photo' and rownum <= 3 order by brd_like desc, brd_view desc";

		List<BoardVO> list = new ArrayList<BoardVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				BoardVO bVo = new BoardVO();

				bVo.setBrd_no(rs.getInt("brd_no"));
				bVo.setBrd_div(rs.getString("brd_div"));
				bVo.setBrd_subject(rs.getString("brd_subject"));
				bVo.setMem_no(rs.getInt("mem_no"));
				bVo.setBrd_date(rs.getString("brd_date"));
				bVo.setBrd_view(rs.getInt("brd_view"));
				bVo.setBrd_like(rs.getInt("brd_like"));
				bVo.setBrd_content(rs.getString("brd_content"));
				bVo.setBrd_pic(rs.getString("brd_pic"));
				bVo.setBrd_vid(rs.getString("brd_vid"));
				bVo.setMem_nick(rs.getString("mem_nick"));

				list.add(bVo);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}

	public List<BoardVO> selectTopVideo() {
		String sql = "select * from board b, member m where b.mem_no = m.mem_no "
				+ "and brd_div = 'video' and rownum <= 2 order by brd_like desc, brd_view desc";

		List<BoardVO> list = new ArrayList<BoardVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				BoardVO bVo = new BoardVO();

				bVo.setBrd_no(rs.getInt("brd_no"));
				bVo.setBrd_div(rs.getString("brd_div"));
				bVo.setBrd_subject(rs.getString("brd_subject"));
				bVo.setMem_no(rs.getInt("mem_no"));
				bVo.setBrd_date(rs.getString("brd_date"));
				bVo.setBrd_view(rs.getInt("brd_view"));
				bVo.setBrd_like(rs.getInt("brd_like"));
				bVo.setBrd_content(rs.getString("brd_content"));
				bVo.setBrd_pic(rs.getString("brd_pic"));
				bVo.setBrd_vid(rs.getString("brd_vid"));
				bVo.setMem_nick(rs.getString("mem_nick"));

				list.add(bVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}
	
	public List<BoardVO> selectTopBoard(String brd_div) {
		String sql = "select * from board b, member m where b.mem_no = m.mem_no "
				+ "and brd_div = ? and rownum <= 4 order by brd_like desc, brd_view desc";

		List<BoardVO> list = new ArrayList<BoardVO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, brd_div);
			
			rs = pstmt.executeQuery();

			while (rs.next()) {
				BoardVO bVo = new BoardVO();

				bVo.setBrd_no(rs.getInt("brd_no"));
				bVo.setBrd_div(rs.getString("brd_div"));
				bVo.setBrd_subject(rs.getString("brd_subject"));
				bVo.setMem_no(rs.getInt("mem_no"));
				bVo.setBrd_date(rs.getString("brd_date"));
				bVo.setBrd_view(rs.getInt("brd_view"));
				bVo.setBrd_like(rs.getInt("brd_like"));
				bVo.setBrd_content(rs.getString("brd_content"));
				bVo.setBrd_pic(rs.getString("brd_pic"));
				bVo.setBrd_vid(rs.getString("brd_vid"));
				bVo.setMem_nick(rs.getString("mem_nick"));

				list.add(bVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}
	
	public List<BoardVO> selectRecentBoard() {
		String sql = "select * from board b, member m where b.mem_no = m.mem_no "
				+ "and rownum <= 5 order by brd_date desc";

		List<BoardVO> list = new ArrayList<BoardVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();

			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				BoardVO bmVo = new BoardVO();

				bmVo.setBrd_no(rs.getInt("brd_no"));
				bmVo.setBrd_div(rs.getString("brd_div"));
				bmVo.setBrd_subject(rs.getString("brd_subject"));
				bmVo.setMem_no(rs.getInt("mem_no"));
				bmVo.setBrd_date(rs.getString("brd_date"));
				bmVo.setBrd_view(rs.getInt("brd_view"));
				bmVo.setBrd_like(rs.getInt("brd_like"));
				bmVo.setBrd_content(rs.getString("brd_content"));
				bmVo.setPfm_no(rs.getInt("pfm_no"));
				bmVo.setBrd_pic(rs.getString("brd_pic"));
				bmVo.setBrd_vid(rs.getString("brd_vid"));
				bmVo.setMem_nick(rs.getString("mem_nick"));

				list.add(bmVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}
	
	// 좋아요 증가
		public void addLike(String brd_no) {
			String sql = "update board set brd_view = brd_view -1, brd_like = brd_like + 1 where brd_no=?";

			Connection conn = null;
			PreparedStatement pstmt = null;

			try {
				conn = DBManager.getConnection();

				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, brd_no);

				pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, pstmt);
			}
		}

		
		public List<BoardVO> selectTopBoard() {
			String sql = "select * from board where rownum <= 5 order by brd_like desc, brd_view desc";

			List<BoardVO> list = new ArrayList<BoardVO>();
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;

			try {
				conn = DBManager.getConnection();
				stmt = conn.createStatement();

				rs = stmt.executeQuery(sql);

				while (rs.next()) {
					BoardVO bmVo = new BoardVO();

					bmVo.setBrd_no(rs.getInt("brd_no"));
					bmVo.setBrd_div(rs.getString("brd_div"));
					bmVo.setBrd_subject(rs.getString("brd_subject"));
					bmVo.setMem_no(rs.getInt("mem_no"));
					bmVo.setBrd_date(rs.getString("brd_date"));
					bmVo.setBrd_view(rs.getInt("brd_view"));
					bmVo.setBrd_like(rs.getInt("brd_like"));
					bmVo.setBrd_content(rs.getString("brd_content"));
					bmVo.setPfm_no(rs.getInt("pfm_no"));
					bmVo.setBrd_pic(rs.getString("brd_pic"));
					bmVo.setBrd_vid(rs.getString("brd_vid"));

					list.add(bmVo);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, stmt, rs);
			}
			return list;
		}
		
		//모든 게시판 검색
		public List<BoardPerformanceVO> boardSearch(String brd_div, String search) {
			String sql = "select * from board b, member m where b.mem_no = m.mem_no "
					+ "and brd_div='" + brd_div + "' and brd_subject like '%" + search + "%' order by brd_no desc";
			
			List<BoardPerformanceVO> list = new ArrayList<BoardPerformanceVO>();
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			
			
			System.out.println(sql);
			System.out.println(search);
			
			try {
				conn = DBManager.getConnection();
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				
				while (rs.next()) {
					BoardPerformanceVO bVo = new BoardPerformanceVO();
					
					bVo.setBrd_no(rs.getInt("brd_no"));
					bVo.setBrd_div(rs.getString("brd_div"));
					bVo.setBrd_subject(rs.getString("brd_subject"));
					bVo.setMem_no(rs.getInt("mem_no"));
					bVo.setBrd_date(rs.getString("brd_date"));
					bVo.setBrd_view(rs.getInt("brd_view"));
					bVo.setBrd_like(rs.getInt("brd_like"));
					bVo.setBrd_content(rs.getString("brd_content"));
					bVo.setPfm_no(rs.getInt("pfm_no"));
					bVo.setBrd_pic(rs.getString("brd_pic"));
					bVo.setBrd_vid(rs.getString("brd_vid"));
					bVo.setMem_nick(rs.getString("mem_nick"));
					
					
					list.add(bVo);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, stmt, rs);
			}
			return list;
		}
		
		// 리뷰게시판에만 해당
		public List<BoardPerformanceVO> boardSearch(String search) {
			String sql = "select * from board b, member m, performance p where b.mem_no = m.mem_no "
					+ "and b.pfm_no = p.pfm_no and brd_div='review' "
					+ "and brd_subject like '%" + search + "%' order by brd_no desc";
			
			List<BoardPerformanceVO> list = new ArrayList<BoardPerformanceVO>();
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			
			try {
				conn = DBManager.getConnection();
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				
				while (rs.next()) {
					BoardPerformanceVO bVo = new BoardPerformanceVO();
					
					bVo.setBrd_no(rs.getInt("brd_no"));
					bVo.setBrd_div(rs.getString("brd_div"));
					bVo.setBrd_subject(rs.getString("brd_subject"));
					bVo.setMem_no(rs.getInt("mem_no"));
					bVo.setBrd_date(rs.getString("brd_date"));
					bVo.setBrd_view(rs.getInt("brd_view"));
					bVo.setBrd_like(rs.getInt("brd_like"));
					bVo.setBrd_content(rs.getString("brd_content"));
					bVo.setPfm_no(rs.getInt("pfm_no"));
					bVo.setBrd_pic(rs.getString("brd_pic"));
					bVo.setBrd_vid(rs.getString("brd_vid"));
					bVo.setMem_nick(rs.getString("mem_nick"));
					bVo.setPfm_no(rs.getInt("pfm_no"));
					bVo.setPfm_div(rs.getString("pfm_div"));
					
					
					list.add(bVo);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, stmt, rs);
			}
			return list;
		}
}
