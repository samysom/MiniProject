<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>View Applications</title>
</head>
<body>
	<div>
		<div class="col-sm-10">
			<h2>View Applications</h2>
		</div>
		<div class="col-sm-2">
			<c:if test="${not empty requestScope.role}">
				<button type="submit" class="btn btn-primary pull-right">
					<a href="viewScheduledProgram?page=add&role=${requestScope.role}">Add</a>
				</button>
			</c:if>
		</div>
	</div>
	<br>
	<table class="table table-striped table-condensed">
		<tr>
			<th>Application Id</th>
			<th>Name</th>
			<th>D.O.B</th>
			<th>Highest Qualification</th>
			<th>Marks Obtained</th>
			<th>Goals</th>
			<th>Email Id</th>
			<th>Scheduled Program Id</th>
			<th>Date of Interview</th>
			<th>Status</th>
			<c:if
				test="${(requestScope.role eq 'mac') || (requestScope.role eq 'admin') }">
				<th>Action</th>
			</c:if>
		</tr>
		<c:forEach var="applicant" items="${requestScope.applicants}">
			<tr>
				<td><c:out value="${applicant.applicationId}" /></td>
				<td><c:out value="${applicant.fullName}" /></td>
				<td><c:out value="${applicant.dateOfBirth}" /></td>
				<td><c:out value="${applicant.highestQualification}" /></td>
				<td><c:out value="${applicant.marksObtained}" /></td>
				<td><c:out value="${applicant.goals}" /></td>
				<td><c:out value="${applicant.emailId}" /></td>
				<td><c:out value="${applicant.scheduledProgramId}" /></td>
				<td><c:out value="${applicant.dateOfInterview}" /></td>
				<td><c:out value="${applicant.status}" /></td>
				<c:if
					test="${(requestScope.role eq 'mac') || (requestScope.role eq 'admin') }">
					<th><c:if
							test="${(applicant.status ne 'Accepted') && (applicant.status ne 'Rejected') }">
							<a
								href="viewApplication?page=updateApplicationStatus&role=${requestScope.role}&scheduledProgramId=${applicant.scheduledProgramId}&applicationId=${applicant.applicationId}&status=Accepted"><button
									class="btn-info">Accept&nbsp;&nbsp;</button></a>
							<a
								href="viewApplication?page=updateApplicationStatus&role=${requestScope.role}&scheduledProgramId=${applicant.scheduledProgramId}&applicationId=${applicant.applicationId}&status=Rejected">
								<button class="btn-info">Reject</button>
							</a>
						</c:if></th>
				</c:if>
			</tr>
		</c:forEach>
	</table>
</body>
</html>