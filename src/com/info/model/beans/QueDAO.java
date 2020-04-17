package com.info.model.beans;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.print.DocFlavor.STRING;

import com.info.model.DAO;
import com.info.model.info.InfoDTO;

public class QueDAO extends DAO {

	private static QueDAO instance = new QueDAO();

	private QueDAO() {
	}

	public static QueDAO getInstance() {
		if (instance == null) {
			instance = new QueDAO();
		}
		return instance;
	}

	/**
	 * 문제 목록 받아오기
	 * 
	 * @return
	 */
	public List<QueDTO> getQue() {
		List<QueDTO> list = new ArrayList<>();
		try {
			con = openConn();
			String sql = "SELECT * FROM QUE";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				QueDTO dto = new QueDTO();
				dto.setQue_no(rs.getInt("que_no"));
				dto.setQue_genre(rs.getString("que_genre"));
				dto.setQue_title(rs.getString("que_title"));
				dto.setQue_hit(rs.getInt("que_hit"));
				;
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeConn(con, pstmt, rs);
		}
		return list;
	}

	public void queHit(int que_no, int val) {
		try {
			con = openConn();
			sql = "update que set que_hit = que_hit + ? where que_no=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, val);
			pstmt.setInt(2, que_no);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeConn(con, pstmt, rs);
		}
	}
	
	public void resetHit() {
		try {
			con = openConn();
			sql = "update que set que_hit = 0";
			pstmt = con.prepareStatement(sql);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeConn(con, pstmt, rs);
		}
	}

	public Map<String, Integer> setTable() {
		Map<String, Integer> que = new HashMap<>();
		try {
			con = openConn();
			sql = "SELECT que_genre, sum(que_hit) FROM QUE GROUP BY que_genre";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String que_genre = rs.getString("que_genre");
				int que_hit = rs.getInt("sum(que_hit)");
				que.put(que_genre, que_hit);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeConn(con, pstmt, rs);
		}
		return que;
	}

	public int setque(int mnum, Map<String, Integer> que) {
		int result = 0;
		try {
			con = openConn();
			sql = "insert into que_m values(?, ?, ?, ?, ?, ?, sysdate)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, mnum);
			pstmt.setInt(2, que.get("beans_aroma"));
			pstmt.setInt(3, que.get("beans_acidity"));
			pstmt.setInt(4, que.get("beans_sweet"));
			pstmt.setInt(5, que.get("beans_bitter"));
			pstmt.setInt(6, que.get("beans_body"));
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeConn(con, pstmt, rs);
		}
		return result;
	}

	public int getCount(int mno) {
		int count = 0;
		try {
			con = openConn();
			sql = "select count(*) from que_m where m_no = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, mno);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeConn(con, pstmt, rs);
		}
		return count;
	}

	public List<QueMDTO> list(int mno, int startNo, int endNo) {
		List<QueMDTO> list = new ArrayList<>();
		try {
			con = openConn();
			sql = "select * from (select p.*, row_number() over(order by m_date desc) rnum from que_m p where m_no = ?) where rnum between ? and ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, mno);
			pstmt.setInt(2, startNo);
			pstmt.setInt(3, endNo);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				QueMDTO dto = new QueMDTO();
				dto.setM_no(rs.getInt("m_no"));
				dto.setBeans_aroma(rs.getInt("beans_aroma"));
				dto.setBeans_acidity(rs.getInt("beans_acidity"));
				dto.setBeans_sweet(rs.getInt("beans_sweet"));
				dto.setBeans_bitter(rs.getInt("beans_bitter"));
				dto.setBeans_body(rs.getInt("beans_body"));
				dto.setM_date(rs.getString("m_date"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeConn(con, pstmt, rs);
		}
		return list;
	}

}
