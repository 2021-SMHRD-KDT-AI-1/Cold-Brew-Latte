package com.VO;

public class SheetVO {
	int sheet_num;
	String sheet_type;
	String sheet_name;
	int member_num;
	String Q_have;
	
	public SheetVO(int sheet_num, String sheet_type, String sheet_name, int member_num, String q_have) {
		super();
		this.sheet_num = sheet_num;
		this.sheet_type = sheet_type;
		this.sheet_name = sheet_name;
		this.member_num = member_num;
		Q_have = q_have;
	}
	
	public int getSheet_num() {
		return sheet_num;
	}
	public void setSheet_num(int sheet_num) {
		this.sheet_num = sheet_num;
	}
	public String getSheet_type() {
		return sheet_type;
	}
	public void setSheet_type(String sheet_type) {
		this.sheet_type = sheet_type;
	}
	public String getSheet_name() {
		return sheet_name;
	}
	public void setSheet_name(String sheet_name) {
		this.sheet_name = sheet_name;
	}
	public int getMember_num() {
		return member_num;
	}
	public void setMember_num(int member_num) {
		this.member_num = member_num;
	}
	public String getQ_have() {
		return Q_have;
	}
	public void setQ_have(String q_have) {
		Q_have = q_have;
	}
	
}
