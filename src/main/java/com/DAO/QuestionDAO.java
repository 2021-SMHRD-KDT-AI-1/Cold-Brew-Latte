package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Random;

import com.VO.QuVO;
import com.VO.memberVO;

public class QuestionDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	QuVO vo = null;
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

	public QuVO Q_Oneselector(int Q_num) {
		// input : Q_index, output : oneQuestion
		QuVO vo = null;
		try {
			getConn();
			sql = "select * from Q_num where Q_index = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, Q_num);
			rs = psmt.executeQuery();

			while (rs.next()) {
				int Q_index = rs.getInt(1);
				String Q_year = rs.getString(2);
				int Q_round = rs.getInt(3);
				int Q_count = rs.getInt(4);
				String Q_content = rs.getString(5);
				String select1 = rs.getString(6);
				String select2 = rs.getString(7);
				String select3 = rs.getString(8);
				String select4 = rs.getString(9);
				int answer = rs.getInt(10);

				vo = new QuVO(Q_index, Q_year, Q_round, Q_count, Q_content, select1, select2, select3, select4, answer);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return vo;
	}
	
	public QuVO Q_OneselectorAns(int Q_num) {
		// input : Q_index, output : oneQuestion
		QuVO vo = null;
		try {
			getConn();
			sql = "select * from Q_num where Q_index = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, Q_num);
			rs = psmt.executeQuery();

			while (rs.next()) {
				int Q_index = rs.getInt(1);
				String Q_year = rs.getString(2);
				int Q_round = rs.getInt(3);
				int Q_count = rs.getInt(4);
				String Q_content = rs.getString(5);
				String select1 = rs.getString(6);
				String select2 = rs.getString(7);
				String select3 = rs.getString(8);	
				String select4 = rs.getString(9);
				int answer = rs.getInt(10);
				String Tag = rs.getString(11);
				
				vo = new QuVO(Q_index, Q_year, Q_round, Q_count, Q_content, select1, select2, select3, select4, answer);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return vo;
	}
	
	public ArrayList<QuVO> Q_Allselector(int[] Q_nums) {
	      ArrayList<QuVO> All_Q = new ArrayList<>();

	      try {
	         QuVO vo = null;
	         getConn();
	         for (int i = 0; i < 100; i++) {
	            sql = "select * from Q_num where Q_index = ?";
	            psmt = conn.prepareStatement(sql);
	            int delkin = Q_nums[i]+1;
	            psmt.setInt(1, delkin);
	            rs = psmt.executeQuery();

	            while (rs.next()) {
	            	int Q_index = rs.getInt(1);
					String Q_year = rs.getString(2);
					int Q_round = rs.getInt(3);
					int Q_count = rs.getInt(4);
					String Q_content = rs.getString(5);
					String select1 = rs.getString(6);
					String select2 = rs.getString(7);
					String select3 = rs.getString(8);	
					String select4 = rs.getString(9);
					int answer = rs.getInt(10);
					String Tag = rs.getString(11);
					
					vo = new QuVO(Q_index, Q_year, Q_round, Q_count, Q_content, select1, select2, select3, select4, answer);
					All_Q.add(vo);
	            }
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         close();
	      }
	      return All_Q;
	   }

	
	public ArrayList<QuVO> select(){
		
		ArrayList<QuVO> arr = new ArrayList<QuVO>();
		try {
			getConn();
			sql = "select distinct tag from Q_num";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				String keyword = rs.getString(1);
				
				vo = new QuVO(keyword);
				arr.add(vo);
			}
			
		} catch (Exception e) {
			
		} finally {
			close();
		}
		return arr;
	}

	public ArrayList<Integer> selectQWithTag(String tag) {
		// input : tag, output : Q_index ArrayList
		ArrayList<Integer> arr = new ArrayList<>();
		try {
			getConn();
			sql = "select * from Q_num where tag = ?";
			PreparedStatement psmt = conn.prepareStatement(sql);
			psmt.setString(1, tag);
			rs = psmt.executeQuery();
			while (rs.next()) {
				int Q_num = rs.getInt(1);
				arr.add(Q_num);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return arr;
	}

	public ArrayList<Integer> selectwithManyTag(String[] tag, int[] tagCount) {
	      ArrayList<Integer> Indexes = new ArrayList<>();
	      ArrayList<Integer> tempIndexes = new ArrayList<>();
	      Random random = new Random();
	      random.setSeed(System.currentTimeMillis());

	      try {
	         getConn();
	         sql = "select q_index from Q_num where tag = ?";
	         for (int i = 0; i < tag.length; i++) {
	            psmt = conn.prepareStatement(sql);
	            psmt.setString(1, tag[i]);
	            rs = psmt.executeQuery();
	            tempIndexes = new ArrayList<>();
	            while (rs.next()) {
	               int tempindex = rs.getInt(1);
	               tempIndexes.add(tempindex);
	            }
	            for (int j = 0; j < tagCount[i]; j++) {
	               int index = tempIndexes.get(random.nextInt(tempIndexes.size()));
	               Indexes.add(index);
	            }
	         }

	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         close();
	      }
	      return Indexes;
	   }

	
	public boolean checkAns(int Q_index, int filled_ans) {
		boolean corr = false;
		try {
			getConn();
			sql = "select ans from Q_num where Q_index = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, Q_index);
			rs = psmt.executeQuery();

			while (rs.next()) {
				int ans = rs.getInt(1);
				if (ans == filled_ans) {
					corr = true;
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return corr;
	}

	public String getTag(int Q_index) {
		String tagOne = null;
		try {
			getConn();
			sql = "select tag from Q_num where Q_index = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, Q_index);
			rs = psmt.executeQuery();

			while (rs.next()) {
				tagOne = rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return tagOne;
	}

}
