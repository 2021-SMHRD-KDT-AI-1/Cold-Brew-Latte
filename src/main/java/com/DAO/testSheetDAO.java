package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.VO.SheetVO;

public class testSheetDAO {
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
	
	public int makeSheet(String sheet_type, String sheet_name, int member_num, String Q_have) {
		try {
			getConn();
			sql = "insert into test_sheet values(sheet_num_seq.nextval, ?, ?, ?, ?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, sheet_type);
			psmt.setString(2, sheet_name);
			psmt.setInt(3, member_num);
			psmt.setString(4, Q_have);
			
			cnt = psmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	public SheetVO getSheet(int sheet_num) {
		SheetVO vo = null;
		try {
			getConn();
			sql = "select * from test_sheet where Sheet_num = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, sheet_num);
			
			rs = psmt.executeQuery();
			while(rs.next()) {
				int sh_num = rs.getInt(1);
				String sheet_type = rs.getString(2);
				String sheet_name = rs.getString(3);
				int member_num = rs.getInt(4);
				String Q_have = rs.getString(5);
				vo = new SheetVO(sh_num, sheet_type, sheet_name, member_num, Q_have);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return vo;
	}
	public ArrayList<SheetVO> memberSheet(int member_num){
		SheetVO vo = null;
		ArrayList<SheetVO> arr = new ArrayList<>();
		try {
			getConn();
			sql = "select * from test_sheet where member_num = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, member_num);
			
			rs = psmt.executeQuery();
			while(rs.next()) {
				int sh_num = rs.getInt(1);
				String sheet_type = rs.getString(2);
				String sheet_name = rs.getString(3);
				int mem_num = rs.getInt(4);
				String Q_have = rs.getString(5);
				vo = new SheetVO(sh_num, sheet_type, sheet_name, mem_num, Q_have);
				arr.add(vo);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return arr;
	}
}
