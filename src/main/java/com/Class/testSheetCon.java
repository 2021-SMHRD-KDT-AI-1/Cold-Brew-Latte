package com.Class;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.QuestionDAO;
import com.DAO.testSheetDAO;
import com.VO.QuVO;
import com.VO.memberVO;
import com.command.Command;

public class testSheetCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;
		HttpSession session = request.getSession();
		ArrayList<QuVO> arrQu = new ArrayList<>();
		
		memberVO mem_vo = (memberVO)session.getAttribute("mem_vo");
		QuVO qu_vo = null;
		
		testSheetDAO sheetdao = new testSheetDAO();
		QuestionDAO qdao = new QuestionDAO();
		
		String year = request.getParameter("year");
		String sheet_type = request.getParameter("sheet_type");
		String sheet_name = "";
		String q_have = "";
		
		if(sheet_type.equals("S")) {
			sheet_name = "season";
			for(int i = 1; i <= 2; i++) {
				q_have += (i + " ");
				qu_vo = qdao.Q_Oneselector(i);
				arrQu.add(qu_vo);
			}
		}else if(sheet_type.equals("F")) {
			sheet_name = "forecast";
			q_have = "2";
		}else {
			System.out.println("error");
		}
		
		int cnt = sheetdao.makeSheet(sheet_type, sheet_name, mem_vo.getMember_num(), q_have);
		
		if((year == null)||(sheet_type == null)) {
			System.out.println("시험지페이지 이동 실패");
			moveURL = "testSheetF.html";
		}
		else {
			if(cnt > 0) {
			session.setAttribute("sheet", arrQu);
			moveURL = "testSheet.jsp";
			}else {
				System.out.println("시험지 만들기 실패");
				moveURL = "testSheetF.html";
			}
		}
		return moveURL;
	}
}