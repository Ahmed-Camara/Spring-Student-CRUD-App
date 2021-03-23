<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
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
	<title>Add|Update</title>
  </head>
<body>

	<div class="container mb-3 mt-3">
		<div class="container">
			<div class="row">
				<div class="col-sm-4 mb-4">
					<a class="btn btn-primary" href="${pageContext.request.contextPath}/student/students">Back</a>
					
					<div class="contains">
    					<form:form modelAttribute="student" action="save" method="POST" id="form" class="form">
        					
        						<div class="form-controls">
            						<label for="student_name">Student Name</label>
            						<form:input path="student_name" type="text" id="student_name" placeholder="Enter student name"/>
            						<small>Error message</small>
        						</div>
        						<div class="form-controls">
            						<label for="course_title">Course Title</label>
            						<form:input path="Course_title" type="text" id="course_title" placeholder="Enter course title"/>
            						<small>Error message</small>
        						</div>
        						<div class="form-controls">
            						<label for="phone_number">Phone number</label>
            						<form:input path="phone_number" type="text" id="phone_number" placeholder="Enter phone number"/>
            						<small>Error message</small>
        						</div>
        						<div class="form-controls">
            						<label for="email">Email</label>
            						<form:input path="email_address" type="text" id="email" placeholder="Enter email"/>
            						<small>Error message</small>
        						</div>
        						<div class="form-controls">
            						<label for="course_fee">Course fee</label>
            						<form:input path="course_fees" type="text" id="course_fee" placeholder="Enter Course fee"/>
            						<small>Error message</small>
        						</div>
        						<button type="submit" onclick="return validate()">Submit</button>
    						</form:form>
						</div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  	<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
	<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
	
	<script src="${pageContext.request.contextPath }/static/js/form.js"></script>
</body>
</html>