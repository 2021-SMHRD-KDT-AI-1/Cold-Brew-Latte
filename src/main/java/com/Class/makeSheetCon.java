package com.Class;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.QuestionDAO;
import com.DAO.testSheetDAO;
import com.VO.QuVO;
import com.VO.SheetVO;
import com.VO.memberVO;
import com.command.Command;

public class makeSheetCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("¿¬°á???");
		String moveURL = null;
		String sheet_type = "S";
		String sheet_name = "";
		String Q_have = "";
		ArrayList<QuVO> arrQu = new ArrayList<>();
		
		HttpSession session = request.getSession();
		memberVO mem_vo = (memberVO)session.getAttribute("mem_vo");
		QuestionDAO qdao = new QuestionDAO();
		testSheetDAO Ssheetdao = new testSheetDAO();	
		
		int member_num = mem_vo.getMember_num();
		QuVO qu_vo = null;
		
		if(request.getParameter("year").equals("2020")&&request.getParameter("round").equals("1")) {
			sheet_name = "2020_1st";
			int[] Q_nums = new int[100];
			for(int i = 1; i <= 100; i++) {	
				Q_have += (i+ " "); 
				Q_nums[i-1] = i;
			}
			arrQu = qdao.Q_Allselector(Q_nums);

		}else if(request.getParameter("year").equals("2020")&&request.getParameter("round").equals("2")) {
			sheet_name = "2020_2nd";
			int[] Q_nums = new int[100];
			for(int i = 101; i <= 200; i++) {	
				Q_have += (i+ " "); 
				Q_nums[i-101] = i;
			}
			arrQu = qdao.Q_Allselector(Q_nums);
			
		}else if(request.getParameter("year").equals("2020")&&request.getParameter("round").equals("3")) {
			sheet_name = "2020_3th";
			int[] Q_nums = new int[100];
			for(int i = 201; i <= 300; i++) {	
				Q_have += (i+ " "); 
				Q_nums[i-201] = i;
			}
			arrQu = qdao.Q_Allselector(Q_nums);
			
		}else if(request.getParameter("year").equals("2021")&&request.getParameter("round").equals("1")) {
			sheet_name = "2021_1st";
			int[] Q_nums = new int[100];
			for(int i = 301; i <= 400; i++) {	
				Q_have += (i+ " "); 
				Q_nums[i-301] = i;
			}
			arrQu = qdao.Q_Allselector(Q_nums);
			
		}else if(request.getParameter("year").equals("2021")&&request.getParameter("round").equals("2")) {
			sheet_name = "2021_2nd";
			int[] Q_nums = new int[100];
			for(int i = 401; i <= 500; i++) {	
				Q_have += (i+ " "); 
				Q_nums[i-401] = i;
			}
			arrQu = qdao.Q_Allselector(Q_nums);
			
		}
		
		session.setAttribute("Q_have", Q_have);

		System.out.println(sheet_type);
		System.out.println(sheet_name);
		System.out.println(member_num);
		System.out.println(Q_have);
		int cnt = Ssheetdao.makeSheet(sheet_type, sheet_name, member_num, Q_have);
		
		session.setAttribute("sheet", arrQu);
		moveURL = "gi123.jsp";
		return moveURL;
		
	}

}
