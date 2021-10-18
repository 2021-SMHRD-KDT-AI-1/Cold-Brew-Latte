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
		//���� ���� ���� ���� - �⺻ 6�� 30�Ϸ� ����
		var countDownDate = new Date("8 27, 2021 24:00:00").getTime();
	
		//1�ʸ��� ���ŵǵ��� �Լ� ����,���� 
		var x = setInterval(function() {
			// ���� ��¥ ��� 
			var now = new Date().getTime(); // ���� ��¥�� �и��� ���
			// �������ڿ��� �������ڸ� �� �ð�
			var distance = countDownDate - now;
			// �� ������ ��, ��, ��, �ʸ� ���
			var d = Math.floor(distance / (1000 * 60 * 60 * 24));
			var h = Math.floor((distance % (1000 * 60 * 60 * 24))
					/ (1000 * 60 * 60));
			var m = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
			var s = Math.floor((distance % (1000 * 60)) / 1000);
	
			if (d === 0) {
				d = "DAY";
			}
	
			// ȭ�鿡 ����
			document.getElementById("d-day").innerHTML = d + " �� " + h + " �ð� " + m
					+ " �� " + s + " �� ���ҽ��ϴ�.";
	
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
												<li><a href="datechoice.jsp" class="nav-link">���⹮��Ǯ��</a></li>
												<li><a href="yesangstart.jsp" class="nav-link">������⹮��</a></li>
												<li><a href="newKeyWord.jsp" class="nav-link">Ű���� �н�</a></li>
												<li><a href="mypage.jsp" class="nav-link">My Page</a></li>
											</ul>
										<%}else {%>
											<ul class="site-menu main-menu js-clone-nav d-none d-lg-none">
												<li><a href="javascript:alert('�α����� �ʿ��մϴ�');" class="nav-link">Home</a></li>
												<li><a href="javascript:alert('�α����� �ʿ��մϴ�');" class="nav-link">���⹮��Ǯ��</a></li>
												<li><a href="javascript:alert('�α����� �ʿ��մϴ�');" class="nav-link">������⹮��</a></li>
												<li><a href="javascript:alert('�α����� �ʿ��մϴ�');" class="nav-link">Ű���� �н�</a></li>
												<li><a href="javascript:alert('�α����� �ʿ��մϴ�');" class="nav-link">My Page</a></li>
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
									<h2>����ó����� 3ȸ�� ���� �����ð�!</h2>
									<h3><div id="d-day"></div></h3>
									<br><br>
									<h1>Cold Brew Latte</h1>
								</div>
								<div class="text">
									<p class="sub-text mb-5">������ ������, Ǯ�̴� �ε巴��</p>
									<!--�̸��� �α���â �߰�-->
									<%if(mem_vo == null) { %>
										<form action="JoinConn.do" method="post">
											<input type="text" name="nick" class="form-control" placeholder="����� ���̵� �Է����ּ���">
											<br>
											<p><input type="submit" class="btn btn-outline-primary btn-md" value="Login"></p>
										</form>
									<%}else { %>
										<form><h3><%=mem_vo.getNick()%>�� ������ ȯ���մϴ�.</h3></form>
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
							<h2 class="title text-primary mb-3">���⹮���� �ѹ���, ���乮���� �Ѵ���, ������⹮���� ��Ȯ�ϰ�!</h2>
						</div>
					</div>
					<div class="row mb-5">
						<div class="col-lg-6 mb-4 mb-lg-0">
							<img src="images/newtime.jpg" alt="Image" class="img-fluid">
						</div>
						<div class="col-lg-5 h-100 jm-sticky-top ml-auto">
							<h3>���⹮�� Ǯ��</h3>
							<p class="mb-4">2001�⵵���� 2021�� �ֽ� ���⹮������ 20���� ����ó����� ���⹮���� �ѹ���! �ֽŰ��� ���⹮���� �ٷιٷ� Ǯ�����!</p>
							<p class="mb-4"><a href="#" class="readmore">Visit website</a></p>
							<div class="testimonial bg-white h-100">
								<blockquote class="mb-3">
									<p>&ldquo;����ó����縦 �غ��ϰ� �ִ� ���ػ��Դϴ�. �ڰ��� �н� ����Ʈ�� ������ ������,
										�ݵ���� ó�� �ѹ��� ã�⽬�� ����Ʈ�� ó���̿���!, �ݵ���󶼿��� �����ϰ� ����ó����� ���� �հ��غ���!
										&rdquo;</p>
								</blockquote>
								<div class="d-flex align-items-center vcard">
									<figure class="mb-0 mr-3">
										<%if(mem_vo == null) { %>
											<form>
												<p><a href="javascript:alert('�α����� �ʿ��մϴ�');" class="btn btn-outline-primary btn-md" id="idpage">start</a></p>
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
					<h3>���κ� ���乮�� ����</h3>
					<p class="mb-4">�ݵ���󶼿��� ���⹮��, ������⹮���� Ǯ���� ������ �ڵ����� ������ �����Ʈ��
						����! �������� �ٽ� Ȯ���ϰ� �����غ� �� �־��! Ʋ���� ������ �������ַ� Ű���� �м��� ���� �ٸ������� ��������
						�Ѵ��� Ȯ���� �� �� �־��!</p>
					<p class="mb-4">
						<a href="#" class="readmore">Visit website</a>
					</p>
					<div class="testimonial bg-white h-100">
						<blockquote class="mb-3">
							<p>&ldquo;���⹮���� Ǯ���� ������� ������ �Ѵ��� �˾ƺ��Ⱑ ���絥 �ݵ���󶼿��� �����ϴϱ� <strong>����
								Ʋ�ȴ� ������ Ű���带 �˷��ְ�, �� Ű���忡 �´� �ٸ������� ��õ</strong>���༭ ������ ���ƿ�! �� ȿ�������� ������
								�� �־��!&rdquo;</p>
						</blockquote>
						<div class="d-flex align-items-center vcard">
							<figure class="mb-0 mr-3">
								<%if(mem_vo == null) { %>
									<form><p><a href="javascript:alert('�α����� �ʿ��մϴ�');" class="btn btn-outline-primary btn-md">start</a></p></form>
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
					<h3>���� ���� ����</h3>
					<p class="mb-4">2001�⵵���� 2021�� �ֽ� ���⹮������ 20���� ����ó����� ���⹮���� �ѹ���! �ֽŰ��� ���⹮���� �ٷιٷ� Ǯ�����!</p>
					<p class="mb-4"><a href="#" class="readmore">Visit website</a></p>
					<div class="testimonial bg-white h-100">
						<blockquote class="mb-3">
							<p>&ldquo;����ó����縦 �غ��ϰ� �ִ� ���б� 4�г��Դϴ�. ���ݱ��� �����ߴ� ����Ʈ �߿�
							���� �����ϱ� ���� ����� ���Ű��ƿ�!, �ݵ���󶼿��� �����ϰ� ����ó����� ���� �հ��غ���!
								&rdquo;</p>
						</blockquote>
						<div class="d-flex align-items-center vcard">
							<figure class="mb-0 mr-3">
								<%if(mem_vo == null) { %>
									<form><p><a href="javascript:alert('�α����� �ʿ��մϴ�');" class="btn btn-outline-primary btn-md">start</a></p></form>
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
							<h2 class="title text-primary mb-3">�����ı�</h2>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-6 mb-4">
							<div class="testimonial bg-white h-100">
								<blockquote class="mb-3">
									<p>&ldquo;���⹮���� Ǯ���� ������� ������ �Ѵ��� �˾ƺ��Ⱑ ���絥 �ݵ���󶼿��� �����ϴϱ� <strong>����
										Ʋ�ȴ� ������ Ű���带 �˷��ְ�, �� Ű���忡 �´� �ٸ������� ��õ</strong>���༭ ������ ���ƿ�! �� ȿ�������� ������
										�� �־��!&rdquo;</p>
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
									<p>&ldquo;�ݵ����!! �� �ǹ�ó�� ������ Ǯ���� ������ �ʹ� ����� �� ������ ������ �ʹ� �ε巯����!
									���� ���� �ݵ���� �����Ϸ� ���߰ھ��&rdquo;</p>
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
									<p>&ldquo;���ΰ� �̷��� ��ſ��� ���� ó���ΰ� ���ƿ�. �ܿ�� ���� �н������ �ƴ� �ʿ��� �κи�
									Ǯ �� �ִ� �κ��� �ʹ� ������ ���ƿ�!! ���� ���߿���. �ٵ� �հݱ�� �Ҳ���!! ȭ����.&rdquo;</p>
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
									<p>&ldquo;����ó����縦 �غ��ϰ� �ִ� ���ػ��Դϴ�. �ڰ��� �н� ����Ʈ�� ������ ������,
										�ݵ���� ó�� �ѹ��� ã�⽬�� ����Ʈ�� ó���̿���!, �ݵ���󶼿��� �����ϰ� ����ó����� ���� �հ��غ���!
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
							$("#p1").html("������� ���̵��Դϴ�.");
						} else {
							$("#p1").css("color", "blue");
							$("#p1").html("���� ����� ���̵��Դϴ�.");
						}
					},
					error : function() {
					}
				});
			}
		</script>
	</body>
</html>