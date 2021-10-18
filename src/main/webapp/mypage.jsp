<!--<%@page import="jdk.internal.misc.FileSystemOption"%>-->
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.QuestionDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="org.json.simple.parser.JSONParser" %>
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
		<link rel="stylesheet" href="css/scoreCard1.css">
		<link rel="stylesheet" href="css/scoreCard2.css">
		<link rel="stylesheet" href="css/scoreCard3.css">
		<link rel="stylesheet" href="css/scoreCard4.css">
		<link rel="stylesheet" href="css/scoreCard5.css">
		
		<!-- <link href="https://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet"> -->
		<link href="http://mistic100.github.io/jQCloud/assets/css/docs.min.css" rel="stylesheet">
		<link href="http://mistic100.github.io/jQCloud/assets/css/style.css" rel="stylesheet">
	
		<style>
			.fontSize1 {
			   font-size: 450%;
			   text-indent: 40px;
			}
			#content {
			      background:#00E5BC;
			      background:linear-gradient(135deg, #00E5BC, #00B4E0);
			    }
			.demo {
			   width: 100%;
			   height: 100%;
			}
			
			#demo-autosize {
			   width: 80%;}
		</style>
	
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script src="https://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
		<script src="http://mistic100.github.io/jQCloud/assets/js/docs.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.2/Chart.min.js"></script>
	</head>

	<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
		<% 
		String Q_have = (String)session.getAttribute("Q_have");//session에서 Q_have로 된 문자열을 가져온다.
		String[] Q_list = Q_have.split(" ");
   
		QuestionDAO qdao = new QuestionDAO();
		ArrayList<String> Q_arr1 = new ArrayList<String>();
		ArrayList<String> Q_arr2 = new ArrayList<String>();
   
		JSONArray jsonlist = new JSONArray();
		JSONObject tempJson = new JSONObject();
   
		String tag = null;
		for(int i = 0; i < Q_list.length; i++) {//번호로 태그 가져오기
			tag = qdao.getTag(Integer.parseInt(Q_list[i]));
			Q_arr1.add(tag);
		}      
		for(int i = 0; i < Q_arr1.size(); i++) {// 중복 태그 제거 배열
			if(!Q_arr2.contains(Q_arr1.get(i))) {
 				Q_arr2.add(Q_arr1.get(i));
			}
		}
   
		String[] taggraphlist = new String[Q_arr2.size()];
		int[] TagCountList = new int[Q_arr2.size()];
   
		for(int i = 0; i < Q_arr2.size(); i++) {// 원본배열(arr1)에서 중복제거배열(arr2)로 계수
			int tag_cnt = 0;
			if(Q_arr2.get(i) == null || Q_arr2.get(i).equals("")){
				continue;
			}
			for(int j = 0; j < Q_arr1.size(); j++) {
				if(Q_arr1.get(j) == null || Q_arr1.get(j).equals("")){
					continue;
				}
				if(Q_arr1.get(j).equals(Q_arr2.get(i))) {
					tag_cnt++;
				}
			}
			taggraphlist[i] = Q_arr2.get(i);
			TagCountList[i] = tag_cnt;
      
			tempJson.put("text", Q_arr2.get(i));
			tempJson.put("weight", tag_cnt);
			tempJson.put("link", "https://www.youtube.com/results?search_query=" + Q_arr2.get(i));
			jsonlist.add(tempJson.clone());
			tempJson.clear();
		}
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
				<div class="row">
					<div style="-webkit-box-flex:0;-ms-flex:0 0 100%;flex:0 0 100%;max-width:100%">
						<div class="bg-light" style="padding: 4em 0" id="portfolio-section">
							<div class="container">
								<div class="row">
									<div class="section-title text-center mx-auto">
										<h2 class="title text-primary mb-3">오답 키워드 클라우드로 부족한 개념을 한눈에!<br>링크를 통해 확실한 개념학습!</h2>
										<br>
										<hr>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-6 mb-4 mb-lg-0">
										<div id="demo" class="demo"></div>
									</div>
                           
									<link rel="stylesheet" href="css/jqcloud.min.css">
									<script src="js/jqcloud.min.js"></script>
									<script src="http://mistic100.github.io/jQCloud/dist/demo-words.js"></script>
									<script>
										$('#demo').jQCloud(
											<%=jsonlist %>,
											{
			                                    shape : 'rectangular',
			                                    autoResize : true,
			                                    classPattern : null,
			                                    colors : [ "#ff0000", "#fe1111", "#fd2222", "#fc3333",
				                                          "#fb4444", "#fa5555", "#f96666", "#f87777",
				                                          "#888888" ],
		                                    fontSize : {
		                                       from : 0.1,
		                                       to : 0.02
		                                    }
		                                 });
                        			</script>
                        
                           			<div class="col-lg-5 h-100 ml-auto">
                              			<h3>키워드 학습</h3>
                              			<p class="mb-4">
											기출문제를 한번에, 오답문제는 한눈에, <br>예상 기출문제는 정확하게!
										</p>
                              			<p class="mb-4">
											<a href="#" class="readmore">Visit website</a>
										</p>
										<div class="testimonial bg-white h-100">
											<blockquote class="mb-3">
												<p>
													&ldquo;정보처리기사를 준비하고 있는 취준생입니다. 자격증 학습 사이트가 여러개 있지만, <strong>콜드브루라떼
													처럼 한번에 찾기쉬운 사이트는 처음이에요!, 콜드브루라떼에서 공부하고 정보처리기사 같이 합격해봐요!&rdquo; 
												</p>
											</blockquote>
											<div class="d-flex align-items-center vcard">
                                    			<figure class="mb-0 mr-3">
												<p>
													<a href="datechoice.jsp" target="_blank" class="btn btn-outline-primary btn-md">Start</a>
												</p>
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
					</div>
				</div>
				<br><br>

				<div class="row">
					<div class="section-title text-center mx-auto">
						<h2 class="title text-primary mb-3">Key Word별 문제풀이</h2>
						<br>
						<hr>
						<br>
					</div>
                  
				<div class="row">
					<div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
						<div class="service h-100-danam">
							<div class="quiz-wrap">
								<div class="info">
									<ul>
										<li>키워드: <span>소프트웨어 설계</span></li>
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
                     
					<div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
						<div class="service h-100-danam">
							<div class="quiz-wrap">
								<div class="info">
									<ul>
										<li>키워드: <span>소프트웨어 개발</span></li>
									</ul>
								</div>
								<div class="arrow1">
									<a href="#" class="prev1">&lt; 이전 문제</a>
									<a href="#" class="next1">다음 문제 &gt;</a>
									<div class="count1"></div>
								</div>
								<div class="quiz1"></div>
								<div class="results1"></div>
								<div class="submit1">확인하기</div>
							</div>
						</div>
					</div>
                     
					<div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
						<div class="service h-100-danam">
							<div class="quiz-wrap">
								<div class="info">
									<ul>
										<li>키워드: <span>데이터베이스 구축</span></li>
									</ul>
								</div>
								<div class="arrow2">
									<a href="#" class="prev2">&lt; 이전 문제</a>
									<a href="#" class="next2">다음 문제 &gt;</a>
									<div class="count2"></div>
								</div>
								<div class="quiz2"></div>
								<div class="results2"></div>
								<div class="submit2">확인하기</div>
							</div>
						</div>
					</div>
                     
					<div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
						<div class="service h-100-danam">
							<div class="quiz-wrap">
								<div class="info">
									<ul>
										<li>키워드: <span>프로그래밍 언어 활용</span></li>
									</ul>
								</div>
								<div class="arrow3">
									<a href="#" class="prev3">&lt; 이전 문제</a>
									<a href="#" class="next3">다음 문제 &gt;</a>
									<div class="count"></div>
								</div>
								<div class="quiz3"></div>
								<div class="results3"></div>
								<div class="submit3">확인하기</div>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
						<div class="service h-100-danam">
							<div class="quiz-wrap">
								<div class="info">
									<ul>
										<li>키워드: <span>정보 시스템 구축 관리</span></li>
									</ul>
								</div>
								<div class="arrow4">
									<a href="#" class="prev4">&lt; 이전 문제</a>
									<a href="#" class="next4">다음 문제 &gt;</a>
									<div class="count4"></div>
								</div>
								<div class="quiz4"></div>
								<div class="results4"></div>
								<div class="submit4">확인하기</div>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
						<div class="service h-100-danam">
							<div class="quiz-wrap">
								<div class="info">
									<ul>
										<li>키워드: <span>정보 시스템 구축 관리</span></li>
									</ul>
								</div>
								<div class="arrow5">
									<a href="#" class="prev5">&lt; 이전 문제</a>
									<a href="#" class="next5">다음 문제 &gt;</a>
									<div class="count5"></div>
								</div>
								<div class="quiz5"></div>
								<div class="results5"></div>
								<div class="submit5">확인하기</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
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
                  <p>
                     <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                     Copyright &copy;
                     <script>
                        document.write(new Date().getFullYear());
                     </script>
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

   <!-- <script src="js/jquery-3.3.1.min.js"></script> -->
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

   <script src="js/scoreCard.js"></script>
   <script src="js/scoreCard1.js"></script>
   <script src="js/scoreCard2.js"></script>
   <script src="js/scoreCard3.js"></script>
   <script src="js/scoreCard4.js"></script>
   <script src="js/scoreCard5.js"></script>

</body>
</html>