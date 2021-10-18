package com.VO;

public class WrVO {
	int member_num;
	int sheet_num;
	int Q_index;
	int W_select;
	
	public WrVO(int member_num, int sheet_num, int q_index, int w_select) {
		super();
		this.member_num = member_num;
		this.sheet_num = sheet_num;
		Q_index = q_index;
		W_select = w_select;
	}
	
	public int getMember_num() {
		return member_num;
	}
	public void setMember_num(int member_num) {
		this.member_num = member_num;
	}
	public int getSheet_num() {
		return sheet_num;
	}
	public void setSheet_num(int sheet_num) {
		this.sheet_num = sheet_num;
	}
	public int getQ_index() {
		return Q_index;
	}
	public void setQ_index(int q_index) {
		Q_index = q_index;
	}
	public int getW_select() {
		return W_select;
	}
	public void setW_select(int w_select) {
		W_select = w_select;
	}
	
}
