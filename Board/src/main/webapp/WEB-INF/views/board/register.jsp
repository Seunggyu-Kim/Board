<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>register</title>

    <!-- Custom fonts for this template -->
    <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/resources/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body>
	<%@ include file="../includes/header.jsp" %>
	
	

	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header"> Board Register</h1>
		</div>
	</div>
	
	
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
			
			<div class="panel-body">
			
			<form role="form" action="/board/register" method="post">
			<div class="form-group">
				<label>Title</label> <input class="form-control" name="title">
			</div>
			
			<div class="form-group">
				<label>Text area</label> 
				<textarea class="form-control" rows="3" name="content"></textarea>
			</div>
			
			<div class="form-group">
				<label>Writer</label> <input class="form-control" name="writer">
			</div>
			
			<button type="submit" class="btn btn-default">Submit Button</button>
			<button type="reset" class="btn btn-default">Reset Button</button>
			</form>
				
				</div>
			</div>
		</div>
	</div>

	<%@include file="../includes/footer.jsp"%>
</body>
</html>