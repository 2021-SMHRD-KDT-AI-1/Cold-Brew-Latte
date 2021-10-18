package com.Class;

import java.util.ArrayList;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.QuestionDAO;
import com.DAO.testSheetDAO;
import com.VO.QuVO;
import com.VO.memberVO;
import com.command.Command;

public class forecastCon implements Command {
   @Override
   public String execute(HttpServletRequest request, HttpServletResponse response) {

      Random random = new Random();
      random.setSeed(System.currentTimeMillis());
      
      String moveURL = null;
      String sheet_type = "F";
      String sheet_name = "Forecast";
      String F_have = "";

      HttpSession session = request.getSession();
      memberVO mem_vo = (memberVO) session.getAttribute("mem_vo");
      QuestionDAO qdao = new QuestionDAO();
      testSheetDAO sheetdao = new testSheetDAO();

      int member_num = mem_vo.getMember_num();

      QuVO qu_vo = null;

      String[] taglist1 = { "OSI 7계층", "UML", "애자일 선언문", "모델링", "스토리 보드 작성절차", "응집도 결합도", "요구사항", "인터페이스", "개체",
            "정규화", "패키징", "배포 도구 구성 요소", "매뉴얼", "테스트", "코드 유형", "트리거", "명령어", "트랜잭션", "연산자", "데이터베이스", "데이터",
            "무결성 종류", "운영체제 특징", "프로세스 상태", "PCB 구성요소", "프로토콜", "IPv4 IPv6", "소프트웨어", "SDN의 구성요소", "클라우드" };
      int[] countlist1 = { 1, 1, 1, 1, 1, 1, 1, 2, 3, 2, 1, 1, 1, 1, 1, 1, 2, 1, 1, 3, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1 };

      String[] taglist2 = { "OSI 7계층", "린 개발방법론 7가지 원칙", "디자인 패턴", "요구사항", "인터페이스", "송 수신", "PL SQL", "테스트 커버리지 유형",
            "형상관리", "패키징", "배포 도구 구성 요소", "DRM", "매뉴얼", "빌드 자동화 구성요소", "알고리즘 기법", "코드 유형", "트리거", "명령어",
            "관계대수와 관계해석", "암호화", "무결성 종류", "운영체제 특징", "프로세스 상태", "PCB 구성요소", "통신망(LAN WAN)", "IPv4 IPv6",
            "블록체인(Block chain)", "SDN의 구성요소", "NoSQL의 유형", "취약점 분석절차" };
      int[] countlist2 = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 2, 1, 2, 1, 1 };

      String[] taglist3 = { "애자일 선언문", "XP 5가지 가치", "린 개발방법론 7가지 원칙", "요구사항", "인터페이스", "오류 처리방안 명세화 절차", "파티셔닝",
            "PL SQL", "패키징", "배포 도구 구성 요소", "DRM", "빌드 자동화 구성요소", "코드 유형", "트리거", "트랜잭션", "관계대수와 관계해석", "데이터베이스",
            "스토리지 구성", "모듈화의 유형", "운영체제 특징", "IPv4 IPv6", "TCP", "SDN의 구성요소", "클라우드" };
      int[] countlist3 = { 2, 1, 1, 1, 2, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 1 };

      String[] taglist4 = { "OSI 7계층", "린 개발방법론 7가지 원칙", "스토리 보드 작성절차", "디자인 패턴", "요구사항", "인터페이스", "송 수신",
            "오류 처리방안 명세화 절차", "EAI ESB 세부 기술 및 토폴로지", "배포 도구 구성 요소", "매뉴얼", "알고리즘 기법", "코드 유형", "트리거", "명령어",
            "데이터베이스", "무결성 종류", "IPv4 IPv6", "SDN의 구성요소" };
      int[] countlist4 = { 1, 1, 1, 1, 1, 4, 1, 1, 1, 1, 2, 1, 1, 1, 1, 2, 1, 1, 1 };

      String[] taglist5 = { "애자일 선언문", "린 개발방법론 7가지 원칙", "스토리 보드 작성절차", "인터페이스", "송 수신", "오류 처리방안 명세화 절차", "미들웨어",
            "패키징", "배포 도구 구성 요소", "DRM", "매뉴얼", "버전관리 도구 유형", "트리거", "명령어", "트랜잭션", "연산자", "데이터베이스", "무결성 종류",
            "PCB 구성요소", "IPv4 IPv6", "SPICE 프로세스 수행 능력 수준", "클라우드", "NoSQL의 유형" };
      int[] countlist5 = { 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 2, 4, 1, 1, 2, 1, 2, 1 };

      int[] indexResult = new int[100];
      ArrayList<Integer> Indexes1 = qdao.selectwithManyTag(taglist1, countlist1);
      ArrayList<Integer> Indexes2 = qdao.selectwithManyTag(taglist2, countlist2);
      ArrayList<Integer> Indexes3 = qdao.selectwithManyTag(taglist3, countlist3);
      ArrayList<Integer> Indexes4 = qdao.selectwithManyTag(taglist4, countlist4);
      ArrayList<Integer> Indexes5 = qdao.selectwithManyTag(taglist5, countlist5);
      for(int i = 0; i < 20; i++) {
         indexResult[i] = Indexes1.get(random.nextInt(Indexes1.size()));
         F_have += (indexResult[i] + " ");
      }
      for(int i = 20; i < 40; i++) {
         indexResult[i] = Indexes2.get(random.nextInt(Indexes2.size()));
         F_have += (indexResult[i] + " ");
      }
      for(int i = 40; i < 60; i++) {
         indexResult[i] = Indexes3.get(random.nextInt(Indexes3.size()));
         F_have += (indexResult[i] + " ");
      }
      for(int i = 60; i < 80; i++) {
         indexResult[i] = Indexes4.get(random.nextInt(Indexes4.size()));
         F_have += (indexResult[i] + " ");
      }
      for(int i = 80; i < 100; i++) {
         indexResult[i] = Indexes5.get(random.nextInt(Indexes5.size()));
         F_have += (indexResult[i] + " ");
      }
      ArrayList<QuVO> arrQu = qdao.Q_Allselector(indexResult);
      System.out.println(indexResult.length);
      System.out.println(arrQu.size());
      
      for(int i = 0; i < arrQu.size(); i++) {
    	  System.out.print(arrQu.get(i).getQ_index());
      }
      System.out.println("F_have");
      System.out.println(F_have);
      sheetdao.makeSheet(sheet_type, sheet_name, member_num, F_have);
      session.setAttribute("sheet", arrQu);
      
      moveURL = "gi123.jsp";
      session.setAttribute("Q_have", F_have);

      return moveURL;
   }

   public int sum(int[] countlist) {
      int countsum = 0;
      for (int i = 0; i < countlist.length; i++) {
         countsum += countlist[i];
      }
      return countsum;
   }
}