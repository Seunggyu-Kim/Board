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

    <title>Get</title>

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
			<h1 class="page-header"> Board Read Page</h1>
		</div>
	</div>
	
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
			
			<div class="panel-body">
			
			<div class="form-group">
				<label>Bno</label> <input class="form-control" name='bno'
				value='<c:out value="${board.bno}"/>' readonly="readonly">
			</div>
			
			<div class="form-group">
				<label>Title</label> <input class="form-control" name='title'
				value='<c:out value="${board.title}"/>' readonly="readonly">
			</div>
			
			<div class="form-group">
				<label>Text area</label> 
				<textarea class="form-control" rows="3" name='content' 
					readonly="readonly"><c:out value="${board.content}"/></textarea>
			</div>
			
			<div class="form-group">
				<label>Writer</label> <input class="form-control" name='writer'
				value='<c:out value="${board.writer}"/>' readonly="readonly">
			</div>
			
			<button data-oper='modify' class="btn btn-default"
				onclick="location.href='/board/modify?bno=<c:out value="${board.bno }"/>'">Modify</button>
				
			<button data-oper='list' class="btn btn-info"
				onclick="location.href='/board/list'">List</button>
				
				</div>
			</div>
		</div>
	</div>

	<%@include file="../includes/footer.jsp"%>
</body>
</html>