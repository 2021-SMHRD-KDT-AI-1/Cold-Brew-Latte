package com.VO;

public class QuVO {
	int Q_index;
	String Q_year;
	int Q_round;
	int Q_count;
	String Q_content;
	String select1;
	String select2;
	String select3;
	String select4;
	int ans;
	String tag;
	
	public QuVO(int q_index, String q_year, int q_round, int q_count, String q_content, String select1, String select2,
			String select3, String select4, int ans, String tag) {
		super();
		Q_index = q_index;
		Q_year = q_year;
		Q_round = q_round;
		Q_count = q_count;
		Q_content = q_content;
		this.select1 = select1;
		this.select2 = select2;
		this.select3 = select3;
		this.select4 = select4;
		this.ans = ans;
		this.tag = tag;
	}
	
	public QuVO(int q_index, String q_year, int q_round, int q_count, String q_content, String select1, String select2,
			String select3, String select4) {
		super();
		Q_index = q_index;
		Q_year = q_year;
		Q_round = q_round;
		Q_count = q_count;
		Q_content = q_content;
		this.select1 = select1;
		this.select2 = select2;
		this.select3 = select3;
		this.select4 = select4;
	}
	
	public QuVO(int q_index, String q_year, int q_round, int q_count, String q_content, String select1, String select2,
			String select3, String select4, int ans) {
		super();
		Q_index = q_index;
		Q_year = q_year;
		Q_round = q_round;
		Q_count = q_count;
		Q_content = q_content;
		this.select1 = select1;
		this.select2 = select2;
		this.select3 = select3;
		this.select4 = select4;
		this.ans = ans;
	}

	public QuVO(int q_index, String tag) {
		super();
		Q_index = q_index;
		this.tag = tag;
	}

	public QuVO(int q_index, int ans) {
		super();
		Q_index = q_index;
		this.ans = ans;
	}

	public QuVO(String q_year, int q_round) {
		super();
		Q_year = q_year;
		Q_round = q_round;
	}
	
	public QuVO(String tag) {
		super();
		this.tag = tag;
	}
	
	public int getQ_index() {
		return Q_index;
	}
	public void setQ_index(int q_index) {
		Q_index = q_index;
	}
	public String getQ_year() {
		return Q_year;
	}
	public void setQ_year(String q_year) {
		Q_year = q_year;
	}
	public int getQ_round() {
		return Q_round;
	}
	public void setQ_round(int q_round) {
		Q_round = q_round;
	}
	public int getQ_count() {
		return Q_count;
	}
	public void setQ_count(int q_count) {
		Q_count = q_count;
	}
	public String getQ_content() {
		return Q_content;
	}
	public void setQ_content(String q_content) {
		Q_content = q_content;
	}
	public String getSelect1() {
		return select1;
	}
	public void setSelect1(String select1) {
		this.select1 = select1;
	}
	public String getSelect2() {
		return select2;
	}
	public void setSelect2(String select2) {
		this.select2 = select2;
	}
	public String getSelect3() {
		return select3;
	}
	public void setSelect3(String select3) {
		this.select3 = select3;
	}
	public String getSelect4() {
		return select4;
	}
	public void setSelect4(String select4) {
		this.select4 = select4;
	}
	public int getAns() {
		return ans;
	}
	public void setAns(int ans) {
		this.ans = ans;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
}
