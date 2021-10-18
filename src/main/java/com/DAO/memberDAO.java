package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.VO.memberVO;

public class memberDAO {
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
			System.out.println("conn error");
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
	
	public memberVO Login(String nick) {
		memberVO vo = null;
		try {
			getConn();
			String sql = "select * from study_member where nick = ?";
			PreparedStatement psmt = conn.prepareStatement(sql);
			psmt.setString(1, nick);
			rs = psmt.executeQuery();
			while (rs.next()) {
				int member_num = rs.getInt(1);
				String getnick = rs.getString(2);
				if (nick.equals(getnick)) {
					vo = new memberVO(member_num, getnick);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return vo;
	}
	public int Join(String nick) {
		try {
			getConn();
			String sql = "insert into study_member values(member_num_seq.nextval, ?)";
			PreparedStatement psmt = conn.prepareStatement(sql);
			psmt.setString(1, nick);
			cnt = psmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}

}
