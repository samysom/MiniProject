<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="img/favicon.png" type="image/png">
<title>Super University</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="vendors/linericon/style.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="vendors/lightbox/simpleLightbox.css">
<link rel="stylesheet" href="vendors/nice-select/css/nice-select.css">
<link rel="stylesheet" href="vendors/animate-css/animate.css">
<!-- main css -->
<link rel="stylesheet" href="css/style.css">
</head>

<body>

	<!--================ Start Header Menu Area =================-->
	<header class="header_area">
	<div class="header-top">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6 col-sm-6 col-4 header-top-left">
					<a href="tel:+9130123654896"> <span class="lnr lnr-phone"></span>
						<span class="text"> <span class="text">+91
								7607551014</span>
					</span>
					</a> <a href="mailto:support@uas.com"> <span
						class="lnr lnr-envelope"></span> <span class="text"> <span
							class="text">support@uas.com</span>
					</span>
					</a>
				</div>
				<div class="col-lg-6 col-sm-6 col-8 header-top-right">
					<a href="./Login.jsp" class="text-uppercase">Login</a>
				</div>
			</div>
		</div>
	</div>

	<div class="main_menu">
		<div class="search_input" id="search_input_box">
			<div class="container">
				<form class="d-flex justify-content-between"
					action="viewApplication" method="GET">
					<input type="text" class="form-control" id="applicationId"
						placeholder="Enter Application Id" name="applicationId">
					<button type="submit" class="btn"></button>
					<span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
				</form>
			</div>
		</div>

		<nav class="navbar navbar-expand-lg navbar-light">
		<div class="container">
			<c:if test="${not empty requestScope.applicationId}">
				<p>Your Application Id: ${requestScope.applicationId}</p>
			</c:if>
			<!-- Brand and toggle get grouped for better mobile display -->
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse offset"
				id="navbarSupportedContent">
				<ul class="nav navbar-nav menu_nav ml-auto">
					<li class="nav-item active"><a class="nav-link"
						href="index.html">Home</a></li>
					<li class="nav-item"><a href="#" class="nav-link search"
						id="search"> View Application Status</i>
					</a></li>
				</ul>
			</div>
		</div>
		</nav>
	</div>
	</header>
	<!--================ End Header Menu Area =================-->

	<!--================ Start Home Banner Area =================-->
	<section class="home_banner_area">
	<div class="banner_inner">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="banner_content">
						<h2>
							We Rank the Best <br> Courses on the Web
						</h2>
						<p>Education is an important aspect of our lives, while some
							of us take it for granted, there are others who crave and
							struggle to get it..</p>
						<div class="search_course_wrap">
							<a href="viewScheduledProgram" type="submit" class="btn">View
								Scheduled Program</a>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!--================ End Home Banner Area =================-->

	<!--================ Start Feature Area =================-->
	<section class="feature_area">
	<div class="container">
		<div class="row justify-content-end">
			<div class="col-lg-4">
				<div class="single_feature d-flex flex-row pb-30">
					<div class="icon">
						<span class="lnr lnr-book"></span>
					</div>
					<div class="desc">
						<h4>New Classes</h4>
						<p>Nature is so powerful, so strong. Capturing its essence is
							not easy - your work becomes a dance with light and the weather.
							It takes you to a place within yourself.</p>
					</div>
				</div>
				<div class="single_feature d-flex flex-row pb-30">
					<div class="icon">
						<span class="fa fa-trophy"></span>
					</div>
					<div class="desc">
						<h4>Top Courses</h4>
						<p>Nature is so powerful, so strong. Capturing its essence is
							not easy - your work becomes a dance with light and the weather.
							It takes you to a place within yourself.</p>
					</div>
				</div>
				<div class="single_feature d-flex flex-row">
					<div class="icon">
						<span class="lnr lnr-screen"></span>
					</div>
					<div class="desc">
						<h4>Full E-Books</h4>
						<p>Nature is so powerful, so strong. Capturing its essence is
							not easy - your work becomes a dance with light and the weather.
							It takes you to a place within yourself.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!--================ End Feature Area =================-->

	<!--================ Start Department Area =================-->
	<div class="department_area section_gap">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6">
					<div class="dpmt_courses">
						<div class="row">
							<!-- single course -->
							<div class="col-lg-4 col-md-4 col-sm-6 col-12 text-center mt-100">
								<div class="single_department">
									<div class="dpmt_icon">
										<img src="img/dpmt/icon1.png" alt="">
									</div>
									<h4>Languages</h4>
								</div>
							</div>
							<!-- single course -->
							<div class="col-lg-4 col-md-4 col-sm-6 col-12 text-center">
								<div class="single_department">
									<div class="dpmt_icon">
										<img src="img/dpmt/icon2.png" alt="">
									</div>
									<h4>Business</h4>
								</div>
							</div>
							<!-- single course -->
							<div class="col-lg-4 col-md-4 col-sm-6 col-12 text-center mt-100">
								<div class="single_department">
									<div class="dpmt_icon">
										<img src="img/dpmt/icon3.png" alt="">
									</div>
									<h4>Literature</h4>
								</div>
							</div>
							<!-- single course -->
							<div class="col-lg-4 col-md-4 col-sm-6 col-12 text-center">
								<div class="single_department">
									<div class="dpmt_icon">
										<img src="img/dpmt/icon4.png" alt="">
									</div>
									<h4>Software</h4>
								</div>
							</div>
							<!-- single course -->
							<div
								class="col-lg-4 col-md-4 col-sm-6 col-12 text-center mt--100">
								<div class="single_department">
									<div class="dpmt_icon">
										<img src="img/dpmt/icon5.png" alt="">
									</div>
									<h4>Design</h4>
								</div>
							</div>
							<!-- single course -->
							<div class="col-lg-4 col-md-4 col-sm-6 col-12 text-center">
								<div class="single_department">
									<div class="dpmt_icon">
										<img src="img/dpmt/icon6.png" alt="">
									</div>
									<h4>Coaching</h4>
								</div>
							</div>
							<!-- single course -->
							<div
								class="offset-lg-4 col-lg-4 col-md-4 col-sm-6 col-12 text-center mt--100">
								<div class="single_department">
									<div class="dpmt_icon">
										<img src="img/dpmt/icon7.png" alt="">
									</div>
									<h4>Development</h4>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="offset-lg-1 col-lg-5">
					<div class="dpmt_right">
						<h1>Over 2500 Courses from 5 Platform</h1>
						<p>There is a moment in the life of any aspiring astronomer
							that it is time to buy that first telescope. It’s exciting to
							think about setting up your own viewing station. In the life of
							any aspiring astronomer that it is time to buy that first
							telescope. It’s exciting to think about setting up your own
							viewing station.</p>
						<p>It’s exciting to think about setting up your own viewing
							station. In the life of any aspiring astronomer that it is time
							to buy that first telescope exciting is time to buy that first.</p>
						<a href="#" class="primary-btn text-uppercase">Explore Courses</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================ End Department Area =================-->

	<!--================ Start Popular Courses Area =================-->
	<div class="popular_courses lite_bg">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6">
					<div class="main_title">
						<h2>Popular Courses</h2>
						<p>There is a moment in the life of any aspiring astronomer
							that it is time to buy that first telescope. It’s exciting to
							think about setting up your own viewing station.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<!-- single course -->
				<div class="col-lg-3 col-md-6">
					<div class="single_course">
						<div class="course_head overlay">
							<img class="img-fluid w-100" src="img/courses/trainer1.jpg"
								alt="">
							<div class="authr_meta">
								<img src="img/author1.png" alt=""> <span>Mart
									Taylor</span>
							</div>
						</div>
						<div class="course_content">
							<h4>
								<a href="course-details.html">Learn React js beginners</a>
							</h4>
							<p>When television was young, there was a huge popular show
								based on the still popular fictional character of Superman.</p>
							<div class="course_meta d-flex justify-content-between">
								<div>
									<span class="meta_info"> <a href="#"><i
											class="lnr lnr-user"></i>355</a>
									</span> <span class="meta_info"> <a href="#"> <i
											class="lnr lnr-bubble"></i>35
									</a>
									</span>
								</div>
								<div>
									<span class="price">$150</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- single course -->
				<div class="col-lg-3 col-md-6">
					<div class="single_course">
						<div class="course_head overlay">
							<img class="img-fluid w-100" src="img/courses/trainer1.jpg"
								alt="">
							<div class="authr_meta">
								<img src="img/author1.png" alt=""> <span>Mart
									Taylor</span>
							</div>
						</div>
						<div class="course_content">
							<h4>
								<a href="course-details.html">Learn React js beginners</a>
							</h4>
							<p>When television was young, there was a huge popular show
								based on the still popular fictional character of Superman.</p>
							<div class="course_meta d-flex justify-content-between">
								<div>
									<span class="meta_info"> <a href="#"> <i
											class="lnr lnr-user"></i>355
									</a>
									</span> <span class="meta_info"><a href="#"> <i
											class="lnr lnr-bubble"></i>35
									</a></span>
								</div>
								<div>
									<span class="price df_color1">$150</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- single course -->
				<div class="col-lg-3 col-md-6">
					<div class="single_course">
						<div class="course_head overlay">
							<img class="img-fluid w-100" src="img/courses/trainer1.jpg"
								alt="">
							<div class="authr_meta">
								<img src="img/author1.png" alt=""> <span>Mart
									Taylor</span>
							</div>
						</div>
						<div class="course_content">
							<h4>
								<a href="course-details.html">Learn React js beginners</a>
							</h4>
							<p>When television was young, there was a huge popular show
								based on the still popular fictional character of Superman.</p>
							<div class="course_meta d-flex justify-content-between">
								<div>
									<span class="meta_info"> <a href="#"> <i
											class="lnr lnr-user"></i>355
									</a>
									</span> <span class="meta_info"><a href="#"> <i
											class="lnr lnr-bubble"></i>35
									</a></span>
								</div>
								<div>
									<span class="price">$150</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- single course -->
				<div class="col-lg-3 col-md-6">
					<div class="single_course">
						<div class="course_head overlay">
							<img class="img-fluid w-100" src="img/courses/trainer1.jpg"
								alt="">
							<div class="authr_meta">
								<img src="img/author1.png" alt=""> <span>Mart
									Taylor</span>
							</div>
						</div>
						<div class="course_content">
							<h4>
								<a href="course-details.html">Learn React js beginners</a>
							</h4>
							<p>When television was young, there was a huge popular show
								based on the still popular fictional character of Superman.</p>
							<div class="course_meta d-flex justify-content-between">
								<div>
									<span class="meta_info"> <a href="#"> <i
											class="lnr lnr-user"></i>355
									</a>
									</span> <span class="meta_info"><a href="#"> <i
											class="lnr lnr-bubble"></i>35
									</a></span>
								</div>
								<div>
									<span class="price df_color2">$150</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================ End Popular Courses Area =================-->

	<!--================ Start Fact Area =================-->
	<div class="fact_area overlay">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6">
					<div class="main_title">
						<h2>Facts that Make us Unique</h2>
						<p>There is a moment in the life of any aspiring astronomer
							that it is time to buy that first telescope. It’s exciting to
							think about setting up your own viewing station.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<!-- single features -->
				<div class="col-lg-4 col-md-6">
					<div class="single_fact">
						<div class="f_icon">
							<img src="img/f-icons/icon1.png" alt="">
						</div>
						<h4>Expert Mentors</h4>
						<p>Lorem ipsum dolor sit amet consec tetur adipisicing elit,
							sed do eiusmod tempor incididunt labore dolor sit amet consec
							tetur adipisicing elit, sed do eiusmod tempor sed do eiusmod
							tempor incididunt labore dolor sit amet consec tetur adipisicing
							elit, seddo eiusmod tempor.</p>
					</div>
				</div>
				<!-- single features -->
				<div class="col-lg-4 col-md-6">
					<div class="single_fact">
						<div class="f_icon">
							<img src="img/f-icons/icon2.png" alt="">
						</div>
						<h4>25000+ Courses</h4>
						<p>Lorem ipsum dolor sit amet consec tetur adipis icing elit,
							sed do eiusmod tempor incididunt labore dolor sit amet consec.</p>
					</div>
				</div>
				<!-- single features -->
				<div class="col-lg-4 col-md-6">
					<div class="single_fact">
						<div class="f_icon">
							<img src="img/f-icons/icon3.png" alt="">
						</div>
						<h4>Student Membership</h4>
						<p>Lorem ipsum dolor sit amet consec tetur adipisicing elit,
							sed do eiusmod tempor incididunt labore dolor sit amet consec
							tetur adipisicing elit, sed do eiusmod tempor sed do eiusmod
							tempor incididunt labore dolor sit amet consec tetur adipisicing
							elit, seddo eiusmod tempor.</p>
					</div>
				</div>
				<!-- single features -->
				<div class="col-lg-4 col-md-6">
					<div class="single_fact">
						<div class="f_icon">
							<img src="img/f-icons/icon4.png" alt="">
						</div>
						<h4>Lifetime Access</h4>
						<p>Lorem ipsum dolor sit amet consec tetur adipisicing elit,
							sed do eiusmod tempor incididunt labore dolor sit amet consec
							tetur adipisicing elit sed do eiusmod.</p>
					</div>
				</div>
				<!-- single features -->
				<div class="col-lg-4 col-md-6">
					<div class="single_fact">
						<div class="f_icon">
							<img src="img/f-icons/icon5.png" alt="">
						</div>
						<h4>Source File Included</h4>
						<p>Lorem ipsum dolor sit amet consec tetur adipisicing elit,
							sed do eiusmod tempor incididunt labore dolor sit amet consec
							tetur adipisicing elit sed do eiusmod.</p>
					</div>
				</div>
				<!-- single features -->
				<div class="col-lg-4 col-md-6">
					<div class="single_fact">
						<div class="f_icon">
							<img src="img/f-icons/icon6.png" alt="">
						</div>
						<h4>Live Support</h4>
						<p>Lorem ipsum dolor sit amet consec tetur adipis icing elit,
							sed do eiusmod tempor incididunt labore dolor sit amet consec.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================ End Fact Area =================-->

	<!--================ Start Testimonial Area =================-->
	<div class="section_gap testimonial_area">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-10 text-center">
					<div class="active_testimonial owl-carousel" data-slider-id="1">
						<!-- single testimonial -->
						<div class="single_testimonial">
							<div class="testimonial_head">
								<img src="img/quote.png" alt="">
								<h4>Fanny Spencer</h4>
								<div class="review">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
							</div>
							<div class="testimonial_content">
								<p>As conscious traveling Paup ers we must always be
									oncerned about our dear Mother Earth. If you think about it,
									you travel across her faceand She is the host to your journey.</p>
							</div>
						</div>

						<div class="single_testimonial">
							<div class="testimonial_head">
								<img src="img/quote.png" alt="">
								<h4>Fanny Spencer</h4>
								<div class="review">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
							</div>
							<div class="testimonial_content">
								<p>As conscious traveling Paup ers we must always be
									oncerned about our dear Mother Earth. If you think about it,
									you travel across her faceand She is the host to your journey.</p>
							</div>
						</div>

						<div class="single_testimonial">
							<div class="testimonial_head">
								<img src="img/quote.png" alt="">
								<h4>Fanny Spencer</h4>
								<div class="review">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
							</div>
							<div class="testimonial_content">
								<p>As conscious traveling Paup ers we must always be
									oncerned about our dear Mother Earth. If you think about it,
									you travel across her faceand She is the host to your journey.</p>
							</div>
						</div>

						<div class="single_testimonial">
							<div class="testimonial_head">
								<img src="img/quote.png" alt="">
								<h4>Fanny Spencer</h4>
								<div class="review">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
							</div>
							<div class="testimonial_content">
								<p>As conscious traveling Paup ers we must always be
									oncerned about our dear Mother Earth. If you think about it,
									you travel across her faceand She is the host to your journey.</p>
							</div>
						</div>
					</div>

					<div class="owl-thumbs d-flex justify-content-center"
						data-slider-id="1">
						<div class="owl-thumb-item">
							<div class="position-relative">
								<img class="img-fluid" src="img/testimonial/t1.jpg" alt="">
							</div>
							<div class="overlay-grad"></div>
						</div>
						<div class="owl-thumb-item">
							<div class="position-relative">
								<img class="img-fluid" src="img/testimonial/t2.jpg" alt="">
							</div>
							<div class="overlay-grad"></div>
						</div>
						<div class="owl-thumb-item">
							<div class="position-relative">
								<img class="img-fluid" src="img/testimonial/t3.jpg" alt="">
							</div>
							<div class="overlay-grad"></div>
						</div>
						<div class="owl-thumb-item">
							<div class="position-relative">
								<img class="img-fluid" src="img/testimonial/t4.jpg" alt="">
							</div>
							<div class="overlay-grad"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================ End Testimonial Area =================-->

	<!--================ Start Registration Area =================-->
	<div class="section_gap registration_area">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-7">
					<div class="row clock_sec clockdiv" id="clockdiv">
						<div class="col-lg-12">
							<h1>Register Now</h1>
							<p>The greatest thing about where my life is right now is
								it's very relaxed and chill. I'm just hanging out, being myself
								and doing my work</p>
						</div>
						<div class="col clockinner1 clockinner">
							<h1 class="days">150</h1>
							<span class="smalltext">Days</span>
						</div>
						<div class="col clockinner clockinner1">
							<h1 class="hours">23</h1>
							<span class="smalltext">Hours</span>
						</div>
						<div class="col clockinner clockinner1">
							<h1 class="minutes">47</h1>
							<span class="smalltext">Mins</span>
						</div>
						<div class="col clockinner clockinner1">
							<h1 class="seconds">59</h1>
							<span class="smalltext">Secs</span>
						</div>
					</div>
				</div>
				<div class="col-lg-4 offset-lg-1">
					<div class="register_form">
						<h3>Courses for Free</h3>
						<p>It is high time for learning</p>
						<form class="form_area" id="myForm" action="mail.html"
							method="post">
							<div class="row">
								<div class="col-lg-12 form_group">
									<input name="name" placeholder="Your Name" required=""
										type="text"> <input name="name"
										placeholder="Your Phone Number" required="" type="tel">
									<input name="email" placeholder="Your Email Address"
										pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$"
										required="" type="email">
								</div>
								<div class="col-lg-12 text-center">
									<button class="primary-btn">Submit</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================ End Registration Area =================-->

	<!--================ Start Events Area =================-->
	<div class="events_area">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6">
					<div class="main_title">
						<h2>Upcoming Events</h2>
						<p>The greatest thing about where my life is right now is it's
							very relaxed and chill. I'm just hanging out, being myself and
							doing my work .</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="row">
						<div class="col-lg-12 col-sm-12">
							<div class="single_event">
								<div class="row align-items-center">
									<div class="col-lg-6 col-md-5">
										<div class="event_thumb">
											<img src="img/event1.jpg" alt="">
										</div>
									</div>
									<div class="col-lg-6 col-md-7">
										<div class="event_details">
											<p>25th February, 2017</p>
											<h4>
												<a href="#">The Universe Through A Child S Eyes</a>
											</h4>
											<p>Lorem ipsum dolor sit amet consec tetur adipisicing
												elit, sed do eiusmod tempor incididunt labore dolor sit amet
												consec tetur adipisicing elit sed.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="row">
						<div class="col-lg-12 col-sm-12">
							<div class="single_event">
								<div class="row align-items-center">
									<div class="col-lg-6 col-md-5">
										<div class="event_thumb">
											<img src="img/event2.jpg" alt="">
										</div>
									</div>
									<div class="col-lg-5 col-md-7">
										<div class="event_details">
											<p>25th February, 2017</p>
											<h4>
												<a href="#">The Universe Through A Child S Eyes</a>
											</h4>
											<p>Lorem ipsum dolor sit amet consec tetur adipisicing
												elit, sed do eiusmod tempor incididunt labore dolor sit amet
												consec tetur adipisicing elit sed.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================ End Events Area =================-->


	<!--================ Start footer Area  =================-->
	<footer class="footer-area section_gap">
	<div class="container">
		<div class="row">
			<div class="col-lg-2 col-md-6 single-footer-widget">
				<h4>Top Products</h4>
				<ul>
					<li><a href="#">Managed Website</a></li>
					<li><a href="#">Manage Reputation</a></li>
					<li><a href="#">Power Tools</a></li>
					<li><a href="#">Marketing Service</a></li>
				</ul>
			</div>
			<div class="col-lg-2 col-md-6 single-footer-widget">
				<h4>Quick Links</h4>
				<ul>
					<li><a href="#">Jobs</a></li>
					<li><a href="#">Brand Assets</a></li>
					<li><a href="#">Investor Relations</a></li>
					<li><a href="#">Terms of Service</a></li>
				</ul>
			</div>
			<div class="col-lg-2 col-md-6 single-footer-widget">
				<h4>Features</h4>
				<ul>
					<li><a href="#">Jobs</a></li>
					<li><a href="#">Brand Assets</a></li>
					<li><a href="#">Investor Relations</a></li>
					<li><a href="#">Terms of Service</a></li>
				</ul>
			</div>
			<div class="col-lg-2 col-md-6 single-footer-widget">
				<h4>Resources</h4>
				<ul>
					<li><a href="#">Guides</a></li>
					<li><a href="#">Research</a></li>
					<li><a href="#">Experts</a></li>
					<li><a href="#">Agencies</a></li>
				</ul>
			</div>
			<div class="col-lg-4 col-md-6 single-footer-widget">
				<h4>Newsletter</h4>
				<p>You can trust us. we only send promo offers,</p>
				<div class="form-wrap" id="mc_embed_signup">
					<form target="_blank"
						action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
						method="get" class="form-inline">
						<input class="form-control" name="EMAIL"
							placeholder="Your Email Address" onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'Your Email Address'" required=""
							type="email">
						<button class="click-btn btn btn-default">
							<span>subscribe</span>
						</button>
						<div style="position: absolute; left: -5000px;">
							<input name="b_36c4fd991d266f23781ded980_aefe40901a"
								tabindex="-1" value="" type="text">
						</div>

						<div class="info"></div>
					</form>
				</div>
			</div>
		</div>
		<div class="row footer-bottom d-flex justify-content-between">
			<p class="col-lg-8 col-sm-12 footer-text m-0 text-white">
				Copyright © 2019 All rights reserved <i class="fa fa-heart-o"
					aria-hidden="true"></i> by <a href="#">UAS</a>
			</p>
			<div class="col-lg-4 col-sm-12 footer-social">
				<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
					class="fa fa-twitter"></i></a> <a href="#"><i
					class="fa fa-dribbble"></i></a> <a href="#"><i
					class="fa fa-behance"></i></a>
			</div>
		</div>
	</div>
	</footer>
	<!--================ End footer Area  =================-->

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/stellar.js"></script>
	<script src="js/countdown.js"></script>
	<script src="vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="js/owl-carousel-thumb.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="vendors/counter-up/jquery.counterup.js"></script>
	<script src="js/mail-script.js"></script>
	<!--gmaps Js-->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="js/gmaps.min.js"></script>
	<script src="js/theme.js"></script>
</body>

</html>