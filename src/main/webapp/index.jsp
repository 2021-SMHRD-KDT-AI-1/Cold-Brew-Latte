<%@page import="com.VO.memberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
	</head>
	<style>
		#d-day {
			text-align: center;
			margin: 30px;
		}
	</style>
	<script>
		//디데이 종료 일자 설정 - 기본 6월 30일로 설정
		var countDownDate = new Date("8 27, 2021 24:00:00").getTime();
	
		//1초마다 갱신되도록 함수 생성,실행 
		var x = setInterval(function() {
			// 오늘 날짜 등록 
			var now = new Date().getTime(); // 현재 날짜의 밀리초 계산
			// 종료일자에서 현재일자를 뺀 시간
			var distance = countDownDate - now;
			// 각 변수에 일, 시, 분, 초를 등록
			var d = Math.floor(distance / (1000 * 60 * 60 * 24));
			var h = Math.floor((distance % (1000 * 60 * 60 * 24))
					/ (1000 * 60 * 60));
			var m = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
			var s = Math.floor((distance % (1000 * 60)) / 1000);
	
			if (d === 0) {
				d = "DAY";
			}
	
			// 화면에 삽입
			document.getElementById("d-day").innerHTML = d + " 일 " + h + " 시간 " + m
					+ " 분 " + s + " 초 남았습니다.";
	
		}, 1000);
	</script>
	
	<body>
		<%
		memberVO mem_vo = (memberVO) session.getAttribute("mem_vo");
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
									<a href="index.jsp">Cold Brew Latte<span class="text-primary">.</span></a>
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
										<%if(mem_vo != null) {	%>
											<ul class="site-menu main-menu js-clone-nav d-none d-lg-none">
												<li><a href="index.jsp" class="nav-link">Home</a></li>
												<li><a href="datechoice.jsp" class="nav-link">기출문제풀이</a></li>
												<li><a href="yesangstart.jsp" class="nav-link">예상기출문제</a></li>
												<li><a href="newKeyWord.jsp" class="nav-link">키워드 학습</a></li>
												<li><a href="mypage.jsp" class="nav-link">My Page</a></li>
											</ul>
										<%}else {%>
											<ul class="site-menu main-menu js-clone-nav d-none d-lg-none">
												<li><a href="javascript:alert('로그인이 필요합니다');" class="nav-link">Home</a></li>
												<li><a href="javascript:alert('로그인이 필요합니다');" class="nav-link">기출문제풀이</a></li>
												<li><a href="javascript:alert('로그인이 필요합니다');" class="nav-link">예상기출문제</a></li>
												<li><a href="javascript:alert('로그인이 필요합니다');" class="nav-link">키워드 학습</a></li>
												<li><a href="javascript:alert('로그인이 필요합니다');" class="nav-link">My Page</a></li>
											</ul>
										<%}%>
									</div>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- END .site-navbar-wrap -->
			<div class="site-blocks-cover" id="home-section">
				<div class="img-wrap">
					<div class="owl-carousel slide-one-item hero-slider">
						<div class="slide">
							<img src="images/glint_hero_1.jpg" alt="Image">
						</div>
						<div class="slide">
							<img src="images/glint_hero_2.jpg" alt="Image">
						</div>
						<div class="slide">
							<img src="images/glint_hero_3.jpg" alt="Image">
						</div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-md-6 ml-auto align-self-center">
							<div class="intro">
								<div class="heading">
									<h2>정보처리기사 3회차 까지 남은시간!</h2>
									<h3><div id="d-day"></div></h3>
									<br><br>
									<h1>Cold Brew Latte</h1>
								</div>
								<div class="text">
									<p class="sub-text mb-5">개념은 차갑게, 풀이는 부드럽게</p>
									<!--이메일 로그인창 추가-->
									<%if(mem_vo == null) { %>
										<form action="JoinConn.do" method="post">
											<input type="text" name="nick" class="form-control" placeholder="사용할 아이디를 입력해주세요">
											<br>
											<p><input type="submit" class="btn btn-outline-primary btn-md" value="Login"></p>
										</form>
									<%}else { %>
										<form><h3><%=mem_vo.getNick()%>님 접속을 환영합니다.</h3></form>
									<%} %>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- END .site-blocks-cover -->
			<div class="site-section" id="portfolio-section">
				<div class="container">
					<div class="row mb-5 ">
						<div class="col-md-7 section-title text-center mx-auto">
							<span class="sub-title mb-2 d-block">Our Service</span>
							<h2 class="title text-primary mb-3">기출문제를 한번에, 오답문제는 한눈에, 예상기출문제는 정확하게!</h2>
						</div>
					</div>
					<div class="row mb-5">
						<div class="col-lg-6 mb-4 mb-lg-0">
							<img src="images/newtime.jpg" alt="Image" class="img-fluid">
						</div>
						<div class="col-lg-5 h-100 jm-sticky-top ml-auto">
							<h3>기출문제 풀이</h3>
							<p class="mb-4">2001년도부터 2021년 최신 기출문제까지 20개년 정보처리기사 기출문제를 한번에! 최신개정 기출문제를 바로바로 풀어보세요!</p>
							<p class="mb-4"><a href="#" class="readmore">Visit website</a></p>
							<div class="testimonial bg-white h-100">
								<blockquote class="mb-3">
									<p>&ldquo;정보처리기사를 준비하고 있는 취준생입니다. 자격증 학습 사이트가 여러개 있지만,
										콜드브루라떼 처럼 한번에 찾기쉬운 사이트는 처음이에요!, 콜드브루라떼에서 공부하고 정보처리기사 같이 합격해봐요!
										&rdquo;</p>
								</blockquote>
								<div class="d-flex align-items-center vcard">
									<figure class="mb-0 mr-3">
										<%if(mem_vo == null) { %>
											<form>
												<p><a href="javascript:alert('로그인이 필요합니다');" class="btn btn-outline-primary btn-md" id="idpage">start</a></p>
											</form>
										<%}else{ %>
											<form>
												<p><a href="datechoice.jsp" class="btn btn-outline-primary btn-md">Start</a></p>
											</form>
										<%} %>
										<img src="images/person_3.jpg" alt="Image" class="img-fluid ounded-circle">
									</figure>
									<div class="vcard-text">
										<span class="d-block">Jacob Spencer</span> <span class="position">Web Designer</span>
									</div>
								</div>
							</div>
						</div>
					</div>

			<div class="row mb-5">
				<div class="col-lg-6 order-1 order-lg-2 mb-4 mb-lg-0">
					<img src="images/newhand.jpg" alt="Image" class="img-fluid">
				</div>
				<div class="col-lg-5 h-100 jm-sticky-top mr-auto order-2 order-lg-1">
					<h3>개인별 오답문제 모음</h3>
					<p class="mb-4">콜드브루라떼에서 기출문제, 예상기출문제를 풀고나면 오답이 자동으로 나만의 오답노트에
						저장! 언제든지 다시 확인하고 복습해볼 수 있어요! 틀리는 문제의 유형위주로 키워드 분석을 통한 다른유형의 문제까지
						한눈에 확인해 볼 수 있어요!</p>
					<p class="mb-4">
						<a href="#" class="readmore">Visit website</a>
					</p>
					<div class="testimonial bg-white h-100">
						<blockquote class="mb-3">
							<p>&ldquo;기출문제를 풀고나면 어떤개념이 약한지 한눈에 알아보기가 힘든데 콜드브루라떼에서 공부하니까 <strong>내가
								틀렸던 문제의 키워드를 알려주고, 그 키워드에 맞는 다른문제를 추천</strong>해줘서 좋은거 같아요! 더 효율적으로 공부할
								수 있어요!&rdquo;</p>
						</blockquote>
						<div class="d-flex align-items-center vcard">
							<figure class="mb-0 mr-3">
								<%if(mem_vo == null) { %>
									<form><p><a href="javascript:alert('로그인이 필요합니다');" class="btn btn-outline-primary btn-md">start</a></p></form>
								<%}else{ %>
								<form><p><a href="mypage.jsp" class="btn btn-outline-primary btn-md">Start</a></p></form>
								<%} %>
								<img src="images/person_4.jpg" alt="Image" class="img-fluid ounded-circle">
							</figure>
							<div class="vcard-text">
								<span class="d-block">Jean Smith</span> <span class="position">Web Designer</span>
							</div>
						</div>
					</div>
				</div>
			</div>
	
			<div class="row mb-5">
				<div class="col-lg-6 mb-4 mb-lg-0">
					<img src="images/newtime.jpg" alt="Image" class="img-fluid">
				</div>
				<div class="col-lg-5 h-100 jm-sticky-top ml-auto">
					<h3>예상 기출 문제</h3>
					<p class="mb-4">2001년도부터 2021년 최신 기출문제까지 20개년 정보처리기사 기출문제를 한번에! 최신개정 기출문제를 바로바로 풀어보세요!</p>
					<p class="mb-4"><a href="#" class="readmore">Visit website</a></p>
					<div class="testimonial bg-white h-100">
						<blockquote class="mb-3">
							<p>&ldquo;정보처리기사를 준비하고 있는 대학교 4학년입니다. 지금까지 공부했던 사이트 중에
							가장 공부하기 쉽게 만들어 진거같아요!, 콜드브루라떼에서 공부하고 정보처리기사 같이 합격해봐요!
								&rdquo;</p>
						</blockquote>
						<div class="d-flex align-items-center vcard">
							<figure class="mb-0 mr-3">
								<%if(mem_vo == null) { %>
									<form><p><a href="javascript:alert('로그인이 필요합니다');" class="btn btn-outline-primary btn-md">start</a></p></form>
								<%}else{ %>
									<form><p><a href="yesangstart.jsp" class="btn btn-outline-primary btn-md">Start</a></p></form>
								<%} %>
								<img src="images/person_3.jpg" alt="Image" class="img-fluid ounded-circle">
							</figure>
							<div class="vcard-text">
								<span class="d-block">Jacob Spencer</span> <span class="position">Web Designer</span>
							</div>
						</div>
					</div>
				</div>
			</div>
	
			<div class="bg-light" style="padding: 4em 0">
				<div class="container">
					<div class="row">
						<div class="col-md-7 section-title text-center mx-auto">
							<span class="sub-title mb-2 d-block">Testimonials</span>
							<h2 class="title text-primary mb-3">교육후기</h2>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-6 mb-4">
							<div class="testimonial bg-white h-100">
								<blockquote class="mb-3">
									<p>&ldquo;기출문제를 풀고나면 어떤개념이 약한지 한눈에 알아보기가 힘든데 콜드브루라떼에서 공부하니까 <strong>내가
										틀렸던 문제의 키워드를 알려주고, 그 키워드에 맞는 다른문제를 추천</strong>해줘서 좋은거 같아요! 더 효율적으로 공부할
										수 있어요!&rdquo;</p>
								</blockquote>
								<div class="d-flex align-items-center vcard">
									<figure class="mb-0 mr-3">
										<img src="images/person_3.jpg" alt="Image" class="img-fluid ounded-circle">
									</figure>
									<div class="vcard-text">
										<span class="d-block">Jacob Spencer</span> <span class="position">Web Designer</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6 mb-4">
							<div class="testimonial bg-white h-100">
								<blockquote class="mb-3">
									<p>&ldquo;콜드브루라떼!! 그 의미처럼 문제를 풀때는 마음이 너무 차가운데 그 이후의 과정이 너무 부드러워요!
									오늘 당장 콜드브루라떼 한잔하러 가야겠어요&rdquo;</p>
								</blockquote>
								<div class="d-flex align-items-center vcard">
									<figure class="mb-0 mr-3">
										<img src="images/person_4.jpg" alt="Image" class="img-fluid ounded-circle">
									</figure>
									<div class="vcard-text">
										<span class="d-block">Jean Smith</span> <span class="position">Web Designer</span>
									</div>
								</div>
							</div>
						</div>
		
						<div class="col-lg-6 mb-4">
							<div class="testimonial bg-white h-100">
								<blockquote class="mb-3">
									<p>&ldquo;공부가 이렇게 즐거웠던 적은 처음인거 같아요. 외우는 식의 학습방법이 아닌 필요한 부분만
									풀 수 있는 부분이 너무 좋은거 같아요!! 여기 강추에요. 다들 합격기원 할께요!! 화이팅.&rdquo;</p>
								</blockquote>
								<div class="d-flex align-items-center vcard">
									<figure class="mb-0 mr-3">
										<img src="images/person_4.jpg" alt="Image" class="img-fluid ounded-circle">
									</figure>
									<div class="vcard-text">
										<span class="d-block">Jean Smith</span> <span class="position">Web Designer</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6 mb-4">
							<div class="testimonial bg-white h-100">
								<blockquote class="mb-3">
									<p>&ldquo;정보처리기사를 준비하고 있는 취준생입니다. 자격증 학습 사이트가 여러개 있지만,
										콜드브루라떼 처럼 한번에 찾기쉬운 사이트는 처음이에요!, 콜드브루라떼에서 공부하고 정보처리기사 같이 합격해봐요!
										&rdquo;</p>
								</blockquote>
								<div class="d-flex align-items-center vcard">
									<figure class="mb-0 mr-3">
										<img src="images/person_3.jpg" alt="Image" class="img-fluid ounded-circle">
									</figure>
									<div class="vcard-text">
										<span class="d-block">Jacob Spencer</span> <span class="position">Web Designer</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	
			<div class="site-section" id="studio-section">
				<div class="container">
					<div class="row mb-5 ">
						<div class="col-md-7 section-title text-center mx-auto">
							<span class="sub-title mb-2 d-block">Photos</span>
							<h2 class="title text-primary mb-3">Studio Gallery</h2>
						</div>
					</div>
					<div id="posts" class="row no-gutter">
						<div class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
							<a href="images/sq_img_1.jpg" class="item-wrap" data-fancybox="gal"> 
								<span class="icon-search2"></span> 
								<img class="img-fluid" src="images/sq_img_1.jpg">
							</a>
						</div>
						<div class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
							<a href="images/sq_img_2.jpg" class="item-wrap" data-fancybox="gal"> 
								<span class="icon-search2"></span> 
								<img class="img-fluid" src="images/sq_img_2.jpg">
							</a>
						</div>
						<div class="item brand col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
							<a href="images/sq_img_3.jpg" class="item-wrap" data-fancybox="gal"> 
								<span class="icon-search2"></span> 
								<img class="img-fluid" src="images/sq_img_3.jpg">
							</a>
						</div>
						<div class="item design col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
							<a href="images/sq_img_4.jpg" class="item-wrap" data-fancybox="gal"> 
								<span class="icon-search2"></span> 
								<img class="img-fluid" src="images/sq_img_4.jpg">
							</a>
						</div>
						<div class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
							<a href="images/sq_img_5.jpg" class="item-wrap" data-fancybox="gal"> 
								<span class="icon-search2"></span> 
								<img class="img-fluid" src="images/sq_img_5.jpg">
							</a>
						</div>
						<div class="item brand col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
							<a href="images/sq_img_6.jpg" class="item-wrap" data-fancybox="gal"> 
								<span class="icon-search2"></span> 
								<img class="img-fluid" src="images/sq_img_6.jpg">
							</a>
						</div>
						<div class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
							<a href="images/sq_img_7.jpg" class="item-wrap" data-fancybox="gal"> 
								<span class="icon-search2"></span> 
								<img class="img-fluid" src="images/sq_img_7.jpg">
							</a>
						</div>
						<div class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
							<a href="images/sq_img_9.jpg" class="item-wrap" data-fancybox="gal"> 
								<span class="icon-search2"></span> 
								<img class="img-fluid" src="images/sq_img_9.jpg">
							</a>
						</div>
						<div class="item design col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
							<a href="images/sq_img_10.jpg" class="item-wrap" data-fancybox="gal"> 
								<span class="icon-search2"></span> 
								<img class="img-fluid" src="images/sq_img_10.jpg">
							</a>
						</div>
						<div class="item brand col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
							<a href="images/sq_img_11.jpg" class="item-wrap" data-fancybox="gal"> 
								<span class="icon-search2"></span> 
								<img class="img-fluid" src="images/sq_img_11.jpg">
							</a>
						</div>
						<div class="item design col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
							<a href="images/sq_img_12.jpg" class="item-wrap" data-fancybox="gal"> 
								<span class="icon-search2"></span> 
								<img class="img-fluid" src="images/sq_img_12.jpg">
							</a>
						</div>
					</div>
				</div>
			</div>
			<!-- END .site-section -->
	
			<div class="site-section" id="contact-section">
				<div class="container">
					<form action="" class="contact-form">
						<div class="section-title text-center mb-5">
							<span class="sub-title mb-2 d-block">Get In Touch</span>
							<h2 class="title text-primary">Contact Us</h2>
						</div>
						<div class="row mb-4">
							<div class="col-md-6 mb-4 mb-md-0">
								<input type="text" class="form-control" placeholder="First name">
							</div>
							<div class="col-md-6">
								<input type="text" class="form-control" placeholder="Last name">
							</div>
						</div>
			
						<div class="row mb-4">
							<div class="col-12">
								<input type="text" class="form-control" placeholder="Email">
							</div>
						</div>
			
						<div class="row mb-4">
							<div class="col-12">
								<textarea class="form-control" name="" id="" cols="30" rows="10" placeholder="Message"></textarea>
							</div>
						</div>
			
						<div class="row">
							<div class="col-12">
								<button type="submit" class="btn btn-primary btn-md">Send Message</button>
							</div>
						</div>
					</form>
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
										paradisematic country, in which roasted parts of sentences
										fly into your mouth.</p>
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
							<p>Copyright &copy;
								<script>
									document.write(new Date().getFullYear());
								</script>
								All rights reserved | This template is made with 
								<i class="icon-heart text-danger" aria-hidden="true"></i> 
								by 
								<a href="https://colorlib.com" target="_blank">Colorlib</a>
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
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script>
			function idCheck() {
				var nick_in = $("#nick").val();
				$.ajax({
					type : "get",
					url : "idCheckCon",
					data : {
						nick : nick_in
					},
					dataType : "text",
					success : function(data) {
						if (data != null) {
							$("#p1").css("color", "red");
							$("#p1").html("사용중인 아이디입니다.");
						} else {
							$("#p1").css("color", "blue");
							$("#p1").html("새로 만드는 아이디입니다.");
						}
					},
					error : function() {
					}
				});
			}
		</script>
	</body>
</html>