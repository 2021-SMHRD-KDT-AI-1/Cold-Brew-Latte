package com.Class;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.VO.memberVO;
import com.command.Command;

public class checkTestCon implements Command{
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		String ans = (String)session.getAttribute("ans");
		memberVO mem_vo = (memberVO)session.getAttribute("mem_vo");
		
		
		String moveURL = "main.jsp";
		return moveURL;
	}
}
