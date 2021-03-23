<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700;800;900&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800&family=Roboto:wght@300;400;500;700;900&display=swap" rel="stylesheet">

     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" 
        integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
 
	<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/style.css" />
	
	<title>Students</title>
  </head>
<body>
	<div class="container mb-3 mt-3">
		<div class="container">
			<div class="row d-flex justify-content-between">
				<div class="col-sm-4 mb-4">
					<a class="btn btn-primary" href="${pageContext.request.contextPath}/student/create">Add new Student</a>
				</div>
				
				<div class="col-sm-4 mb-4">
					<form:form action="${pageContext.request.contextPath}/logout" method="POST">
						<input type="submit" value="Log out" class="btn btn-dark"/>
					</form:form>
				</div>
			</div>
		</div>
		<table  style="text-align:center" class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
			<thead>
				<tr>
					<th>Student Name</th>
					<th>Course Title</th>
					<th>Phone number</th>
					<th>Email Address</th>
					<th>Course Fees</th>
					<th>Action</th>
				</tr>
			</thead>
            
            <c:if test="${students != null}">
  				<tbody>
					<c:forEach var="student" items="${students }">
            							
						<c:url var="updateLink" value="/student/updateForm">
     						<c:param name="studentID" value="${student.id }"/>
						</c:url>
            							
						<c:url var="deleteLink" value="/student/delete">
  							<c:param name="studentID" value="${student.id }"/>
 						</c:url>
						<tr>
							<td>${student.student_name}</td>
							<td>${student.course_title}</td>
							<td>${student.phone_number}</td>
							<td>${student.email_address}</td>
							<td>$ ${student.course_fees}</td>
							<td>
								<a class="btn btn-primary edit" href="${updateLink }"><i class="icon-remove"></i> Edit</a>
    							<a class="btn btn-danger" onclick="if (!(confirm('Are you sure ?'))) return false" href="${deleteLink}">Remove</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
   			</c:if>
   		</table>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  	<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
	<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
	<script>
			$("#dataTable").DataTable();
		</script>
</body>
</html>