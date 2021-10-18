<%@page import="com.DAO.QuestionDAO"%>
<%@page import="com.VO.QuVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.VO.memberVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
	<title>Grunt &mdash; Website Template by Colorlib</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900" rel="stylesheet">
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
	<link rel="stylesheet" href="css/scoreCard.css">

	<style>
	.pie-chart1 {
		display: inline-block;
		width: 200px;
		height: 200px;
		background: conic-gradient(#8b22ff 0% 25%, #ffc33b 25% 56%, #21f3d6 56% 100%);
		border-radius: 50%;
	}
	.fontSize1 {
		font-size: 450%;
		text-indent: 40px;
	}
	* {
		margin: 0;
		box-sizing: border-box;
	}
	body {
		font-family: "Roboto", sans-serif;
	}
	h2 {
		margin: 16px;
	}
	.container1 {
		margin-top: 100px;
		padding: 32px;
	}
	.select-box {
		display: flex;
		width: 400px;
		flex-direction: column;
	}
	.select-box .options-container {
		background: #2f3640;
		color: #f5f6fa;
		max-height: 0;
		width: 100%;
		opacity: 0;
		transition: all 0.4s;
		border-radius: 8px;
		overflow: hidden;
		order: 1;
	}
	.selected {
		background: #2f3640;
		border-radius: 8px;
		margin-bottom: 8px;
		color: #f5f6fa;
		position: relative;
		order: 0;
	}
	.selected::after {
		content: "";
		background: url("img/arrow-down.svg");
		background-size: contain;
		background-repeat: no-repeat;
		position: absolute;
		height: 100%;
		width: 32px;
		right: 10px;
		top: 5px;
		transition: all 0.4s;
	}
	.select-box .options-container.active {
		max-height: 240px;
		opacity: 1;
		overflow-y: scroll;
	}
	.select-box .options-container.active+.selected::after {
		transform: rotateX(180deg);
		top: -6px;
	}
	.select-box .options-container::-webkit-scrollbar {
		width: 8px;
		background: #0d141f;
		border-radius: 0 8px 8px 0;
	}
	.select-box .options-container::-webkit-scrollbar-thumb {
		background: #525861;
		border-radius: 0 8px 8px 0;
	}
	.select-box .option, .selected {
		padding: 12px 24px;
		cursor: pointer;
	}
	.select-box .option:hover {
		background: #414b57;
	}
	.select-box label {
		cursor: pointer;
	}
	.select-box .option .radio {
		display: none;
	}
	</style>
</head>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	
	<%
	memberVO mem_vo=(memberVO)session.getAttribute("mem_vo");
	QuestionDAO dao =new QuestionDAO();
	ArrayList<QuVO>keword=dao.select();
	System.out.println(keword.toString());
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

		<div class="site-section" id="what-we-do-section">
			<div class="container">
				<div class="row mb-5">
					<div class="col-lg-6 section-title">
						<h2 class="title text-primary">문제 채점 결과입니다.</h2>
						<br>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-10-nam">
						<div class="bg-light" style="padding: 4em 0">
							<div class="container">
								<div class="row">
									<div class="col-md-7 section-title text-center mx-auto">
										<span class="sub-title mb-2 d-block">Testimonials</span>
										<h2 class="title text-primary mb-3">키워드 학습</h2>
									</div>
									<br> <br>
									<!-- 키워드 셀렉트박스 -->
									<div class="container1">
										<h2>Key Word-Category</h2>
										<div class="select-box">
											<div class="options-container">
												<%
												for (int i=0;i<keword.size();i++){ %>
												<div class="option">
													<input type="radio" class="radio" id="<%=i %>"
														name="category" /> <label for="<%=i %>"><%= i+1 +". "+ keword.get(i).getTag() %></label>
												</div>
												<%} %>
											</div>
											<div class="selected">Select Video Category</div>
										</div>
									</div>
									<div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
										<div class="service h-100-danam">
											<div class="quiz-wrap">
												<div class="info">
													<ul>
														<li>KEY WORD<br><span></span></li>
													</ul>
												</div>
												<div class="arrow">
													<a href="#" class="prev">&lt; 이전 문제</a> 
													<a href="#" class="next">다음 문제 &gt;</a>
													<div class="count"></div>
												</div>
												<div class="quiz"></div>
												<div class="results"></div>
												<div class="submit">확인하기</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<br>
			</div>
		</div>
		<!-- END .site-section -->

		<footer class="site-footer">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 mb-5 mb-lg-0">
						<div class="row mb-5">
							<div class="col-12">
								<h3 class="footer-heading mb-4">About Us</h3>
								<p>A small river named Duden flows by their place and
									supplies it with the necessary regelialia. It is a
									paradisematic country, in which roasted parts of sentences fly
									into your mouth.</p>
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
									<li><a href="#what-we-do-section" class="smoothscroll">What We Do</a></li>
									<li><a href="#about-section" class="smoothscroll">About Us</a></li>
									<li><a href="#team-section" class="smoothscroll">Team</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-4 mb-5 mb-lg-0">
						<div class="mb-5">
							<h3 class="footer-heading mb-2">Subscribe Newsletter</h3>
							<p>A small river named Duden flows by their place and
								supplies it with the necessary regelialia.</p>
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
						<p> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
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

	<script>
	const selected = document.querySelector(".selected");
	const optionsContainer = document.querySelector(".options-container");
	
	const optionsList = document.querySelectorAll(".option");
	
	selected.addEventListener("click", () => {
	  optionsContainer.classList.toggle("active");
	});
	
	optionsList.forEach(o => {
	  o.addEventListener("click", () => {
	    selected.innerHTML = o.querySelector("label").innerHTML;
	    optionsContainer.classList.remove("active");
	  });
	});
    </script>

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
	<script src="js/circlegrape.js"></script>

	<script src="js/scoreCard.js"></script>

</body>
</html>