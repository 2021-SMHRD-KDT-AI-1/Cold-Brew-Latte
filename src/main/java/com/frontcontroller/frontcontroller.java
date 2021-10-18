package com.frontcontroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Class.JoinConn;
import com.Class.LogoutCon;
import com.Class.forecastCon;
import com.Class.makeSheetCon;
import com.command.Command;

@WebServlet("*.do")
public class frontcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		System.out.println("FrontController");

		String reqURI = request.getRequestURI();
		System.out.println("어느 기능에서 왔는가? " + reqURI);

		String path = request.getContextPath();
		System.out.println("프로젝트 이름은? " + path);

		String result = reqURI.substring(path.length() + 1);
		System.out.println(result);

		Command con = null;

		if (result.equals("JoinConn.do")) {
			con = new JoinConn();
		} else if (result.equals("LogoutCon.do")) {
			con = new LogoutCon();
		} else if (result.equals("chechTestCon.do")) {
			con = new LogoutCon();
		} else if (result.equals("idCHeckCon.do")) {
			con = new LogoutCon();
		} else if (result.equals("LogoutCon.do")) {
			con = new LogoutCon();
		} else if (result.equals("testSheetCon.do")) {
			con = new LogoutCon();
		} else if (result.equals("makeSheetCon.do")) {
			con = new makeSheetCon();
		} else if (result.equals("forecastCon.do")) {
			con = new forecastCon();
		}
		String moveURL = con.execute(request, response);
		response.sendRedirect(moveURL);

	}
}
