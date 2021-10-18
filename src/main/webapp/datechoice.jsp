<%@page import="com.DAO.memberDAO"%>
<%@page import="com.VO.SheetVO"%>
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

</head>
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">
	<%
	memberDAO dao =  new memberDAO();
	memberVO mem_vo = (memberVO) session.getAttribute("mem_vo");
	//ArrayList<SheetVO> arrSheet = new ArrayList<>();
	%>
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
										<li><a href="datechoice.jsp" class="nav-link">기출문제풀이</a></li>
										<li><a href="yesangstart.jsp" class="nav-link">예상기출문제</a></li>
										<li><a href="newKeyWord.jsp" class="nav-link">키워드 학습</a></li>
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

						<h2 class="title text-primary mb-3">정보처리기사</h2>
						<span class="sub-title mb-2 d-block">문제를 선택하세요</span>
					</div>
				</div>

				<table width="1000" border="0" align="center">
					<tr>
						<td width="200" align="center">
							<p>
								<a href="makeSheetCon.do?year=2020&round=1" class="btn btn-outline-primary btn-md" name="2020_1st">2020년 1회차</a>
							</p>
						</td>
						<td width="200" align="center">
							<p>
								<a href="makeSheetCon.do?year=2020&round=2" class="btn btn-outline-primary btn-md" name="2020_2nd">2020년 2회차</a>
							</p>
						</td>
						<td width="200" align="center">
							<p>
								<a href="makeSheetCon.do?year=2020&round=3" class="btn btn-outline-primary btn-md" name="2020_3rd">2020년 3회차</a>
							</p>
						</td>
						<td width="200" align="center">
							<p>
								<a href="makeSheetCon.do?year=2021&round=1" class="btn btn-outline-primary btn-md" name="2021_1st">2021년 1회차</a>
							</p>
						</td>
						<td width="200" align="center">
							<p>
								<a href="makeSheetCon.do?year=2021&round=2" class="btn btn-outline-primary btn-md" name="2021_2nd">2021년 2회차</a>
							</p>
						</td>
					</tr>
				</table>
				<br>
				<br>
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
</body>
</html>