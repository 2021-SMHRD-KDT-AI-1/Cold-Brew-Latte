package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.VO.WrVO;

public class wrongDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;

	int cnt = 0;
	String sql = "";

	public void getConn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@127.0.0.1:1521";
			String dbid = "hr";
			String dbpw = "hr";
			conn = DriverManager.getConnection(url, dbid, dbpw);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int makeWrong(int member_num, int sheet_num, int Q_index, int W_select) {
		try {
			getConn();
			sql = "insert into w_num values(?, ?, ?, ?)";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, member_num);
			psmt.setInt(2, sheet_num);
			psmt.setInt(3, Q_index);
			psmt.setInt(4, W_select);
			
			cnt = psmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public ArrayList<WrVO> getMemberWrong(int member_num) {
		WrVO vo = null;
		ArrayList<WrVO> arr = new ArrayList<>();
		try {
			getConn();
			sql = "select * from W_num where member_num = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, member_num);
			
			rs = psmt.executeQuery();
			while(rs.next()) {
				int mem_num = rs.getInt(1);
				int sheet_num = rs.getInt(2);
				int Q_index = rs.getInt(3);
				int W_select = rs.getInt(4);
				vo = new WrVO(mem_num, sheet_num, Q_index, W_select);
				arr.add(vo);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return arr;
	}
	
	public ArrayList<Integer> getNumWrong(int member_num) {
		ArrayList<Integer> arr = new ArrayList<>();
		try {
			getConn();
			sql = "select Q_index from W_num where member_num = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, member_num);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int Q_index = rs.getInt(1);
				arr.add(Q_index);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return arr;
	}
}
