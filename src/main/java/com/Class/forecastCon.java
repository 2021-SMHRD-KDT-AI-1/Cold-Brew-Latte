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

      String[] taglist1 = { "OSI 7����", "UML", "������ ����", "�𵨸�", "���丮 ���� �ۼ�����", "������ ���յ�", "�䱸����", "�������̽�", "��ü",
            "����ȭ", "��Ű¡", "���� ���� ���� ���", "�Ŵ���", "�׽�Ʈ", "�ڵ� ����", "Ʈ����", "��ɾ�", "Ʈ�����", "������", "�����ͺ��̽�", "������",
            "���Ἲ ����", "�ü�� Ư¡", "���μ��� ����", "PCB �������", "��������", "IPv4 IPv6", "����Ʈ����", "SDN�� �������", "Ŭ����" };
      int[] countlist1 = { 1, 1, 1, 1, 1, 1, 1, 2, 3, 2, 1, 1, 1, 1, 1, 1, 2, 1, 1, 3, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1 };

      String[] taglist2 = { "OSI 7����", "�� ���߹���� 7���� ��Ģ", "������ ����", "�䱸����", "�������̽�", "�� ����", "PL SQL", "�׽�Ʈ Ŀ������ ����",
            "�������", "��Ű¡", "���� ���� ���� ���", "DRM", "�Ŵ���", "���� �ڵ�ȭ �������", "�˰��� ���", "�ڵ� ����", "Ʈ����", "��ɾ�",
            "�������� �����ؼ�", "��ȣȭ", "���Ἲ ����", "�ü�� Ư¡", "���μ��� ����", "PCB �������", "��Ÿ�(LAN WAN)", "IPv4 IPv6",
            "���ü��(Block chain)", "SDN�� �������", "NoSQL�� ����", "����� �м�����" };
      int[] countlist2 = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 2, 1, 2, 1, 1 };

      String[] taglist3 = { "������ ����", "XP 5���� ��ġ", "�� ���߹���� 7���� ��Ģ", "�䱸����", "�������̽�", "���� ó����� ��ȭ ����", "��Ƽ�Ŵ�",
            "PL SQL", "��Ű¡", "���� ���� ���� ���", "DRM", "���� �ڵ�ȭ �������", "�ڵ� ����", "Ʈ����", "Ʈ�����", "�������� �����ؼ�", "�����ͺ��̽�",
            "���丮�� ����", "���ȭ�� ����", "�ü�� Ư¡", "IPv4 IPv6", "TCP", "SDN�� �������", "Ŭ����" };
      int[] countlist3 = { 2, 1, 1, 1, 2, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 1 };

      String[] taglist4 = { "OSI 7����", "�� ���߹���� 7���� ��Ģ", "���丮 ���� �ۼ�����", "������ ����", "�䱸����", "�������̽�", "�� ����",
            "���� ó����� ��ȭ ����", "EAI ESB ���� ��� �� ��������", "���� ���� ���� ���", "�Ŵ���", "�˰��� ���", "�ڵ� ����", "Ʈ����", "��ɾ�",
            "�����ͺ��̽�", "���Ἲ ����", "IPv4 IPv6", "SDN�� �������" };
      int[] countlist4 = { 1, 1, 1, 1, 1, 4, 1, 1, 1, 1, 2, 1, 1, 1, 1, 2, 1, 1, 1 };

      String[] taglist5 = { "������ ����", "�� ���߹���� 7���� ��Ģ", "���丮 ���� �ۼ�����", "�������̽�", "�� ����", "���� ó����� ��ȭ ����", "�̵����",
            "��Ű¡", "���� ���� ���� ���", "DRM", "�Ŵ���", "�������� ���� ����", "Ʈ����", "��ɾ�", "Ʈ�����", "������", "�����ͺ��̽�", "���Ἲ ����",
            "PCB �������", "IPv4 IPv6", "SPICE ���μ��� ���� �ɷ� ����", "Ŭ����", "NoSQL�� ����" };
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