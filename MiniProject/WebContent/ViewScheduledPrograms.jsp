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
<title>View Scheduled Programs</title>
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

	</header>
	<div>
		<div class="container">
			<br> <br>
			<div class="row">
				<div class="col-sm-10 col-lg-10 col-md-10">
					<h4>View Scheduled Programs</h4>
				</div>
				<div class="col-sm-2 col-lg-2 col-md-2">
					<c:if test="${not empty requestScope.role}">
						<a href="viewScheduledProgram?page=add&role=${requestScope.role}"
							class="btn btn-primary btn-block">Add</a>
					</c:if>
				</div>
				<br>
				<div class="col-sm-12 col-lg-12 col-md-12">
					<table class="table table-striped table-condensed">
						<tr>
							<th>Program Id</th>
							<th>Program Name</th>
							<th>Location</th>
							<th>Start Date</th>
							<th>End Date</th>
							<th>Session Per Week</th>
							<th>Action</th>
						</tr>
						<c:forEach var="programScheduled"
							items="${requestScope.listOfprogramScheduled}">
							<tr>
								<td><c:out value="${programScheduled.scheduledProgramId}" /></td>
								<td><c:out value="${programScheduled.programName}" /></td>
								<td><c:out value="${programScheduled.location}" /></td>
								<td><c:out value="${programScheduled.startDate}" /></td>
								<td><c:out value="${programScheduled.endDate}" /></td>
								<td><c:out value="${programScheduled.sessionsPerWeek}" /></td>
								<th><c:choose>
										<c:when
											test="${(requestScope.role eq 'mac') || (requestScope.role eq 'admin') }">
											<a
												href="viewApplication?role=${requestScope.role}&scheduledProgramId=${programScheduled.scheduledProgramId}">
												<span> <i class="fa fa-eye"></i>
											</span>
											</a>
											<a
												href="viewScheduledProgram?page=delete&role=${requestScope.role}&scheduledProgramId=${programScheduled.scheduledProgramId}">
												<span> Delete </span>
											</a>
										</c:when>
										<c:otherwise>
											<span> <a class="btn btn-block"
												href="applyForCourse?scheduledProgramId=${programScheduled.scheduledProgramId}">Apply
													for Course</a>
											</span>
										</c:otherwise>
									</c:choose></th>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
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