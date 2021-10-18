package com.VO;

public class memberVO {
	int member_num;
	String nick;
	
	public memberVO(int member_num, String nick) {
		super();
		this.member_num = member_num;
		this.nick = nick;
	}
	
	public int getMember_num() {
		return member_num;
	}
	public void setMember_num(int member_num) {
		this.member_num = member_num;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	
}
