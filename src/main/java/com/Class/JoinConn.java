package com.Class;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;
import com.VO.memberVO;
import com.command.Command;

public class JoinConn implements Command { // Login func, save nick in session on "nick"

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;
		String nick = request.getParameter("nick");
		System.out.println("로그인기능실행");

		memberDAO dao = new memberDAO();
		memberVO vo = dao.Login(nick);
		
		if (vo == null) {
			int cnt = dao.Join(nick);
			vo = dao.Login(nick);
		} 
		HttpSession session = request.getSession();
		session.setAttribute("mem_vo", vo);
		moveURL = "index.jsp";
		return moveURL;
	}

}
