<%@page import="com.VO.QuVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.VO.memberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Grunt &mdash; Website Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900"
	rel="stylesheet">
<link rel="stylesheet" href="fonts/icomoon/style.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/bootstrap-datepicker.css">

<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

<link rel="stylesheet" href="css/aos.css">
<link rel="stylesheet" href="css/jquery.fancybox.min.css">

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/gichul.css">

<script src="js/jquery-3.3.1.min.js"></script>
</head>

<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">
	<%
  	memberVO mem_vo = (memberVO) session.getAttribute("mem_vo");
	
	ArrayList<QuVO> sheet = (ArrayList<QuVO>)session.getAttribute("sheet");
	System.out.println(sheet);
	%>

	<!--OMR ī�� ĥ������ ���-->
	<div class="site-wrap">
		<div class="site-mobile-menu site-navbar-target">
			<div class="site-mobile-menu-header">
				<div class="site-mobile-menu-close mt-3">
					<span class="icon-close2 js-menu-toggle"></span>
				</div>
			</div>
			<div class="site-mobile-menu-body"></div>
		</div>
		<!-- .site-mobile-menu -->

		<div class="site-navbar-wrap">
			<div class="site-navbar site-navbar-target js-sticky-header">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-6 col-md-4">
							<h1 class="my-0 site-logo">
								<a href="index.jsp">Cold Brew Latte<span
									class="text-primary">.</span>
								</a>
							</h1>
						</div>
						<div class="col-6 col-md-8">
							<nav class="site-navigation text-right" role="navigation">
								<div class="container">
									<div class="d-inline-block d-lg-block ml-md-0 mr-auto py-3">
										<a href="#" class="site-menu-toggle js-menu-toggle text-black">
											<span class="icon-menu h3"></span> <span class="menu-text">Menu</span>
										</a>
									</div>
									<ul class="site-menu main-menu js-clone-nav d-none d-lg-none">
										<li><a href="index.jsp" class="nav-link">Home</a></li>
										<li><a href="datechoice.jsp" class="nav-link">���⹮��Ǯ��</a></li>
										<li><a href="yesangstart.jsp" class="nav-link">������⹮��</a></li>
										<li><a href="newKeyWord.jsp" class="nav-link">Ű���� �н�</a></li>
										<li><a href="mypage.jsp" class="nav-link">My Page</a></li>
									</ul>
								</div>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- END .site-navbar-wrap -->

		<div class="site-section" id="portfolio-section">
			<div class="container">
				<div class="row mb-5 ">
					<div class="col-md-7 section-title text-center mx-auto">
						<h2 class="title text-primary mb-3">����ó����� �ʱ⹮��</h2>
						<br>
					</div>
				</div>

				<div class="row" style="margin-bottom: 1rem !important">
					<div
						style="background-image: url(images/papertexture.jpg); -webkit-box-flex: 0; -ms-flex: 0 0 70%; flex: 0 0 70%; max-width: 70%; max-height: 50%; column-count: 2;"
						class="mb-4 mb-lg-0">
						<!--�����Է� -->
						<%
		                  int k = 0;// ���� �ε��� ���� ��ȣ
		                  int i = 0;
		                  %>

						<table style="margin-left: auto; margin-right: auto;" border="0"
							whidh="1000">
							<tr>
								<br>
							<tr>
								<h4>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp1����: ����Ʈ���� ����</h4>
							</tr>
							<%try {
		                        for (i = 0; i < 20; i++) {
				            %>
							<tr>
								<div class="quiz">
									<p class="question"><%=(i+1)%>.<%=sheet.get(i).getQ_content()%></p>
									<div class="answers">
										<label><input type="radio" name="userpick<%=i %>"
											onclick="radio(<%=i%>)" class="select" value=1><span><%=sheet.get(i).getSelect1()%></span></label>
										<label><input type="radio" name="userpick<%=i %>"
											onclick="radio(<%=i%>)" class="select" value=2><span><%=sheet.get(i).getSelect2()%></span></label>
										<label><input type="radio" name="userpick<%=i %>"
											onclick="radio(<%=i%>)" class="select" value=3><span><%=sheet.get(i).getSelect3()%></span></label>
										<label><input type="radio" name="userpick<%=i %>"
											onclick="radio(<%=i%>)" class="select" value=4><span><%=sheet.get(i).getSelect4()%></span></label>
									</div>
								</div>
							</tr>
							<% }
		                     } catch (Exception e) {
		                     e.printStackTrace();
		                     } %>
							</tr>
							<br>
						</table>
					</div>

					<div class="col-lg-5-nam h-100 jm-sticky-top ml-auto">
						<h3>OMR ī��</h3>
						<p class="mb-4">2001�⵵���� 2021�� �ֽ� ���⹮������ ��ü ��������</p>
						<p class="mb-4">
							<a href="#" class="readmore">����Ȯ�� �ʼ�!</a>
						</p>
						<!--OMR ��� ��ȣ 5���� ���& hr ���� �׷��ִ°�-->
						<div class="testimonial bg-white h-100">
							<h5 align="center">1����: ����Ʈ���� ����</h5>
							<hr>
							<%for(int j=0;j<20;j++){ %>
							<table border="0" align="center">
								<tr class="omr_num">
									<td>&nbsp;&nbsp;<%=(j+1) + "."  %>&nbsp;&nbsp;</td>
									<td>&nbsp;&nbsp;<img class="size<%=j%> size" id="img1" src="images/1.png">&nbsp;&nbsp;</td>
									<td>&nbsp;&nbsp;<img class="size<%=j%> size" id="img2" src="images/2.png">&nbsp;&nbsp;</td>
									<td>&nbsp;&nbsp;<img class="size<%=j%> size" id="img3" src="images/3.png">&nbsp;&nbsp;</td>
									<td>&nbsp;&nbsp;<img class="size<%=j%> size" id="img4" src="images/4.png">&nbsp;&nbsp;</td>
								</tr>
							</table>
							<%} %>
							<hr>
							<div class="d-flex align-items-center vcard"></div>
							<div class="vcard-text">
								<span class="d-block">������ ���������� �����غ�����!</span> 
								<span class="position">Before Summit please check again!</span>
							</div>
						</div>
					</div>
				</div>

				<div class="row" style="margin-bottom: 1rem !important">
					<div style="background-image: url(images/papertexture.jpg); -webkit-box-flex: 0; -ms-flex: 0 0 70%; flex: 0 0 70%; max-width: 70%; max-height: 50%; column-count: 2;"
						class="mb-4 mb-lg-0">
						<table style="margin-left: auto; margin-right: auto;" border="0" whidh="100%">
							<tr>
								<br>
								<tr>
									<h4>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp2����: ����Ʈ���� ����</h4>
								</tr>
								<%try {
			                        for (i = 20; i < 40; i++) { %>
										<tr>
											<div class="quiz">
												<p class="question"><%=(i+1)%>.<%=sheet.get(i).getQ_content()%></p>
												<div class="answers">
													<label><input type="radio" name="userpick<%=i %>"
														onclick="radio(<%=i%>)" class="select" value=1><span><%=sheet.get(i).getSelect1()%></span></label>
													<label><input type="radio" name="userpick<%=i %>"
														onclick="radio(<%=i%>)" class="select" value=2><span><%=sheet.get(i).getSelect2()%></span></label>
													<label><input type="radio" name="userpick<%=i %>"
														onclick="radio(<%=i%>)" class="select" value=3><span><%=sheet.get(i).getSelect3()%></span></label>
													<label><input type="radio" name="userpick<%=i %>"
														onclick="radio(<%=i%>)" class="select" value=4><span><%=sheet.get(i).getSelect4()%></span></label>
												</div>
											</div>
										</tr>
									<%}
			                     } catch (Exception e) {
			                   		  e.printStackTrace();
			                     } %>
							</tr>
							<br>
						</table>
					</div>

					<div class="col-lg-5-nam h-100 jm-sticky-top ml-auto">
						<h3>OMR ī��</h3>
						<p class="mb-4">2001�⵵���� 2021�� �ֽ� ���⹮������ ��ü ��������</p>
						<p class="mb-4">
							<a href="#" class="readmore">����Ȯ�� �ʼ�!</a>
						</p>

						<!--OMR ��� ��ȣ 5���� ���& hr ���� �׷��ִ°�-->
						<div class="testimonial bg-white h-100">
							<h5 align="center">2����: ����Ʈ���� ����</h5>
							<hr>
							<%for(int j=20;j<40;j++){ %>
							<table border="0" align="center">
								<tr class="omr_num">
									<td>&nbsp;&nbsp;<%=(j+1) + "."  %>&nbsp;&nbsp;</td>
									<td>&nbsp;&nbsp;<img class="size<%=j%> size" id="img1" src="images/1.png">&nbsp;&nbsp;</td>
									<td>&nbsp;&nbsp;<img class="size<%=j%> size" id="img2" src="images/2.png">&nbsp;&nbsp;</td>
									<td>&nbsp;&nbsp;<img class="size<%=j%> size" id="img3" src="images/3.png">&nbsp;&nbsp;</td>
									<td>&nbsp;&nbsp;<img class="size<%=j%> size" id="img4" src="images/4.png">&nbsp;&nbsp;</td>
								</tr>
							</table>
							<%} %>
							<hr>
							<div class="d-flex align-items-center vcard"></div>
							<div class="vcard-text">
								<span class="d-block">������ ���������� �����غ�����!</span> 
								<span class="position">Before Summit please check again!</span>
							</div>
						</div>
					</div>
				</div>

				<div class="row" style="margin-bottom: 1rem !important">
					<div style="background-image: url(images/papertexture.jpg); -webkit-box-flex: 0; -ms-flex: 0 0 70%; flex: 0 0 70%; max-width: 70%; max-height: 50%; column-count: 2;"
						class="mb-4 mb-lg-0">
						<table style="margin-left: auto; margin-right: auto;" border="0" whidh="100%">
							<tr>
								<br>
								<tr>
									<h4>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp3����: �����ͺ��̽� ����</h4>
								</tr>
								<%try {
			                        for (i = 40; i < 60; i++) { %>
								<tr>
									<div class="quiz">
										<p class="question"><%=(i+1)%>.<%=sheet.get(i).getQ_content()%></p>
										<div class="answers">
											<label><input type="radio" name="userpick<%=i %>"
												onclick="radio(<%=i%>)" class="select" value=1><span><%=sheet.get(i).getSelect1()%></span></label>
											<label><input type="radio" name="userpick<%=i %>"
												onclick="radio(<%=i%>)" class="select" value=2><span><%=sheet.get(i).getSelect2()%></span></label>
											<label><input type="radio" name="userpick<%=i %>"
												onclick="radio(<%=i%>)" class="select" value=3><span><%=sheet.get(i).getSelect3()%></span></label>
											<label><input type="radio" name="userpick<%=i %>"
												onclick="radio(<%=i%>)" class="select" value=4><span><%=sheet.get(i).getSelect4()%></span></label>
										</div>
									</div>
								</tr>
								<% }
								} catch (Exception e) {
			                   		e.printStackTrace();
			                    } %>
							</tr>
							<br>
						</table>
					</div>

					<div class="col-lg-5-nam h-100 jm-sticky-top ml-auto">
						<h3>OMR ī��</h3>
						<p class="mb-4">2001�⵵���� 2021�� �ֽ� ���⹮������ ��ü ��������</p>
						<p class="mb-4">
							<a href="#" class="readmore">����Ȯ�� �ʼ�!</a>
						</p>
						<!--OMR ��� ��ȣ 5���� ���& hr ���� �׷��ִ°�-->
						<div class="testimonial bg-white h-100">
							<h5 align="center">3����: �����ͺ��̽� ����</h5>
							<hr>
							<%for(int j=40;j<60;j++){ %>
							<table border="0" align="center">
								<tr class="omr_num">
									<td>&nbsp;&nbsp;<%=(j+1) + "."  %>&nbsp;&nbsp;
									</td>
									<td>&nbsp;&nbsp;<img class="size<%=j%> size" id="img1"
										src="images/1.png">&nbsp;&nbsp;
									</td>
									<td>&nbsp;&nbsp;<img class="size<%=j%> size" id="img2"
										src="images/2.png">&nbsp;&nbsp;
									</td>
									<td>&nbsp;&nbsp;<img class="size<%=j%> size" id="img3"
										src="images/3.png">&nbsp;&nbsp;
									</td>
									<td>&nbsp;&nbsp;<img class="size<%=j%> size" id="img4"
										src="images/4.png">&nbsp;&nbsp;
									</td>
								</tr>
							</table>
							<%} %>
							<hr>
							<div class="d-flex align-items-center vcard"></div>
							<div class="vcard-text">
								<span class="d-block">������ ���������� �����غ�����!</span> <span
									class="position">Before Summit please check again!</span>
							</div>
						</div>
					</div>
				</div>

				<div class="row" style="margin-bottom: 1rem !important">
					<div
						style="background-image: url(images/papertexture.jpg); -webkit-box-flex: 0; -ms-flex: 0 0 70%; flex: 0 0 70%; max-width: 70%; max-height: 50%; column-count: 2;"
						class="mb-4 mb-lg-0">
						<table style="margin-left: auto; margin-right: auto;" border="0"
							whidh="100%">
							<tr>
								<br>
							<tr>
								<h4>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp4����:
									���α׷��� ��� Ȱ��</h4>
							</tr>
							<%try {
			                        for (i = 60; i < 80; i++) {
					                     %>
							<tr>
								<div class="quiz">
									<p class="question"><%=(i+1)%>
										.
										<%=sheet.get(i).getQ_content()%></p>
									<div class="answers">
										<label><input type="radio" name="userpick<%=i %>"
											onclick="radio(<%=i%>)" class="select" value=1><span><%=sheet.get(i).getSelect1()%></span></label>
										<label><input type="radio" name="userpick<%=i %>"
											onclick="radio(<%=i%>)" class="select" value=2><span><%=sheet.get(i).getSelect2()%></span></label>
										<label><input type="radio" name="userpick<%=i %>"
											onclick="radio(<%=i%>)" class="select" value=3><span><%=sheet.get(i).getSelect3()%></span></label>
										<label><input type="radio" name="userpick<%=i %>"
											onclick="radio(<%=i%>)" class="select" value=4><span><%=sheet.get(i).getSelect4()%></span></label>
									</div>
								</div>
							</tr>
							<% }
			                     } catch (Exception e) {
			                     e.printStackTrace();
			                     } %>
							</tr>
							<br>
						</table>
					</div>

					<div class="col-lg-5-nam h-100 jm-sticky-top ml-auto">
						<h3>OMR ī��</h3>
						<p class="mb-4">2001�⵵���� 2021�� �ֽ� ���⹮������ ��ü ��������</p>
						<p class="mb-4">
							<a href="#" class="readmore">����Ȯ�� �ʼ�!</a>
						</p>
						<!--OMR ��� ��ȣ 5���� ���& hr ���� �׷��ִ°�-->
						<div class="testimonial bg-white h-100">
							<h5 align="center">4����: ���α׷��� ��� Ȱ��</h5>
							<hr>
							<%for(int j=60;j<80;j++){ %>
							<table border="0" align="center">
								<tr class="omr_num">
									<td>&nbsp;&nbsp;<%=(j+1) + "."  %>&nbsp;&nbsp;
									</td>
									<td>&nbsp;&nbsp;<img class="size<%=j%> size" id="img1"
										src="images/1.png">&nbsp;&nbsp;
									</td>
									<td>&nbsp;&nbsp;<img class="size<%=j%> size" id="img2"
										src="images/2.png">&nbsp;&nbsp;
									</td>
									<td>&nbsp;&nbsp;<img class="size<%=j%> size" id="img3"
										src="images/3.png">&nbsp;&nbsp;
									</td>
									<td>&nbsp;&nbsp;<img class="size<%=j%> size" id="img4"
										src="images/4.png">&nbsp;&nbsp;
									</td>
								</tr>
							</table>
							<%} %>
							<hr>
							<div class="d-flex align-items-center vcard"></div>
							<div class="vcard-text">
								<span class="d-block">������ ���������� �����غ�����!</span> <span
									class="position">Before Summit please check again!</span>
							</div>
						</div>
					</div>
				</div>

				<div class="row" style="margin-bottom: 1rem !important">
					<div
						style="background-image: url(images/papertexture.jpg); -webkit-box-flex: 0; -ms-flex: 0 0 70%; flex: 0 0 70%; max-width: 70%; max-height: 50%; column-count: 2;"
						class="mb-4 mb-lg-0">
						<table style="margin-left: auto; margin-right: auto;" border="0"
							whidh="100%">
							<tr>
								<br>
							<tr>
								<h4>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp5����:
									�����ý��� �������</h4>
							</tr>
							<%try {
			                        for (i = 80; i < 100; i++) {
					                     %>
							<tr>
								<div class="quiz">
									<p class="question"><%=(i+1)%>
										.
										<%=sheet.get(i).getQ_content()%></p>
									<div class="answers">
										<label><input type="radio" name="userpick<%=i %>"
											onclick="radio(<%=i%>)" class="select" value=1><span><%=sheet.get(i).getSelect1()%></span></label>
										<label><input type="radio" name="userpick<%=i %>"
											onclick="radio(<%=i%>)" class="select" value=2><span><%=sheet.get(i).getSelect2()%></span></label>
										<label><input type="radio" name="userpick<%=i %>"
											onclick="radio(<%=i%>)" class="select" value=3><span><%=sheet.get(i).getSelect3()%></span></label>
										<label><input type="radio" name="userpick<%=i %>"
											onclick="radio(<%=i%>)" class="select" value=4><span><%=sheet.get(i).getSelect4()%></span></label>
									</div>
								</div>
							</tr>
							<% }
			                     } catch (Exception e) {
			                     e.printStackTrace();
			                     } %>
							</tr>
							<br>
						</table>
					</div>

					<div class="col-lg-5-nam h-100 jm-sticky-top ml-auto">
						<h3>OMR ī��</h3>
						<p class="mb-4">2001�⵵���� 2021�� �ֽ� ���⹮������ ��ü ��������</p>
						<p class="mb-4">
							<a href="#" class="readmore">����Ȯ�� �ʼ�!</a>
						</p>
						<!--OMR ��� ��ȣ 5���� ���& hr ���� �׷��ִ°�-->
						<div class="testimonial bg-white h-100">
							<h5 align="center">5����: �����ý��� �������</h5>
							<hr>
							<%for(int j=80;j<100;j++){ %>
							<table border="0" align="center">
								<tr class="omr_num">
									<td>&nbsp;&nbsp;<%=(j+1) + "."  %>&nbsp;&nbsp;
									</td>
									<td>&nbsp;&nbsp;<img class="size<%=j%> size" id="img1"
										src="images/1.png">&nbsp;&nbsp;
									</td>
									<td>&nbsp;&nbsp;<img class="size<%=j%> size" id="img2"
										src="images/2.png">&nbsp;&nbsp;
									</td>
									<td>&nbsp;&nbsp;<img class="size<%=j%> size" id="img3"
										src="images/3.png">&nbsp;&nbsp;
									</td>
									<td>&nbsp;&nbsp;<img class="size<%=j%> size" id="img4"
										src="images/4.png">&nbsp;&nbsp;
									</td>
								</tr>
							</table>
							<%} %>
							<hr>
							<div class="d-flex align-items-center vcard">
								<figure class="mb-0 mr-3">
									<p>
										<a href="chaejum.jsp" class="btn btn-outline-primary btn-md">summit</a>
									</p>
								</figure>
							</div>
							<div class="vcard-text">
								<span class="d-block">������ ���������� �����غ�����!</span> <span
									class="position">Before Summit please check again!</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer class="site-footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 mb-5 mb-lg-0">
					<div class="row mb-5">
						<div class="col-12">
							<h3 class="footer-heading mb-4">About Us</h3>
							<p>A small river named Duden flows by their place and
								supplies it with the necessary regelialia. It is a paradisematic
								country, in which roasted parts of sentences fly into your
								mouth.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 ml-auto">
					<div class="row mb-5">
						<div class="col-md-12">
							<h3 class="footer-heading mb-4">Navigation</h3>
						</div>
						<div class="col-md-6 col-lg-6">
							<ul class="list-unstyled">
								<li><a href="#home-section" class="smoothscroll">Home</a></li>
								<li><a href="#what-we-do-section" class="smoothscroll">What
										We Do</a></li>
								<li><a href="#about-section" class="smoothscroll">About
										Us</a></li>
								<li><a href="#team-section" class="smoothscroll">Team</a></li>
							</ul>
						</div>
					</div>
				</div>

				<div class="col-lg-4 mb-5 mb-lg-0">
					<div class="mb-5">
						<h3 class="footer-heading mb-2">Subscribe Newsletter</h3>
						<p>A small river named Duden flows by their place and supplies
							it with the necessary regelialia.</p>
						<form method="post" class="form-subscribe">
							<div class="form-group mb-3">
								<input type="text"
									class="form-control border-white text-white bg-transparent"
									placeholder="Enter full name" aria-label="Enter Email"
									aria-describedby="button-addon2">
							</div>
							<div class="form-group mb-3">
								<input type="text"
									class="form-control border-white text-white bg-transparent"
									placeholder="Enter email" aria-label="Enter Email"
									aria-describedby="button-addon2">
							</div>
							<div class="form-group">
								<button class="btn btn-primary px-5" type="submit">Subscribe</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="row pt-5 mt-5 text-center">
				<div class="col-md-12">
					<div class="mb-4">
						<a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
						<a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
						<a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
						<a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
					</div>
					<p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>document.write(new Date().getFullYear());</script>
						All rights reserved | This template is made with <i
							class="icon-heart text-danger" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</footer>
	</div>

	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/jquery.sticky.js"></script>
	<script src="js/stickyfill.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/isotope.pkgd.min.js"></script>
	<script src="js/jquery.fancybox.min.js"></script>
	<script src="js/main.js"></script>

	<script>
    //�迭 ������ ����
    function omr(i){
          var target = 'size'+i;
            if(radioVal==1){
              document.querySelector('img.'+target+'#img1').src="images/1-1.png";
              document.querySelector('img.'+target+'#img2').src="images/2.png";
              document.querySelector('img.'+target+'#img3').src="images/3.png";
              document.querySelector('img.'+target+'#img4').src="images/4.png";
             }else if(radioVal==2){
                document.querySelector('img.'+target+'#img2').src="images/2-2.png";
                document.querySelector('img.'+target+'#img1').src="images/1.png";
                document.querySelector('img.'+target+'#img3').src="images/3.png";
                document.querySelector('img.'+target+'#img4').src="images/4.png";
            }else if(radioVal==3){
               document.querySelector('img.'+target+'#img3').src="images/3-3.png";
               document.querySelector('img.'+target+'#img2').src="images/2.png";
               document.querySelector('img.'+target+'#img1').src="images/1.png";
               document.querySelector('img.'+target+'#img4').src="images/4.png";
             }else if(radioVal==4){
                document.querySelector('img.'+target+'#img4').src="images/4-4.png";
                document.querySelector('img.'+target+'#img2').src="images/2.png";
               document.querySelector('img.'+target+'#img3').src="images/3.png";
               document.querySelector('img.'+target+'#img1').src="images/1.png";
            };
       }
    var radioVal = 0;
    var name = "";
    var userPickList = Array.from({length: 100}, () => 0);
    function radio(i){
      name = "userpick"+i;
      radioVal = $('input:radio[name='+name+']:checked').val();
      userPickList[i] = parseInt(radioVal);
      omr(i);
    }
     function answerCheck() {
      if(userPickList.includes(0)){
         alert("üũ���� ���� ������ �����մϴ�");
         consol.log("üũ���� ���� ���� �����մϴ�");
      }else{
         consol.log("��� üũ�Ǿ�����");
      }
    }
    </script>

</body>
</html>