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

    <title>List</title>

    <!-- Custom fonts for this template -->
    <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/resources/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
   <link href="/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">


	<%@ include file="../includes/header.jsp"%>
	<!-- Begin Page Content -->

<<<<<<< HEAD
=======
<<<<<<< HEAD
	<!-- Begin Page Content -->
	<div class="container-fluid">
=======
<<<<<<< HEAD
	<!-- Begin Page Content -->
	<div class="container-fluid">
=======
	<!-- Page Heading -->
	<h1 class="h3 mb-2 text-gray-800">Tables</h1>
>>>>>>> refs/remotes/origin/main
>>>>>>> refs/remotes/origin/main
>>>>>>> refs/remotes/origin/main

<<<<<<< HEAD
=======
<<<<<<< HEAD
		<!-- Page Heading -->
		<h1 class="h3 mb-2 text-gray-800">Tables</h1>
=======
<<<<<<< HEAD
=======
	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<div class="font-weight-bold text-primary">
				Board List Page
				<button id="regBtn" type="button"
					class="btn btn-xs float-right btn-primary">Register New
					Board</button>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th>#??????</th>
								<th>??????</th>
								<th>?????????</th>
								<th>?????????</th>
								<th>?????????</th>
							</tr>
						</thead>
>>>>>>> refs/remotes/origin/main
>>>>>>> refs/remotes/origin/main

<<<<<<< HEAD
		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<div class="font-weight-bold text-primary">
					Board List Page
					<button id="regBtn" type="button"
						class="btn btn-xs float-right btn-primary">Register New
						Board</button>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th>#??????</th>
									<th>??????</th>
									<th>?????????</th>
									<th>?????????</th>
									<th>?????????</th>
								</tr>
							</thead>
=======
<<<<<<< HEAD
>>>>>>> refs/remotes/origin/main
		<!-- Page Heading -->
		<h1 class="h3 mb-2 text-gray-800">Tables</h1>

		<!-- DataTales Example -->
			<div class="card-header py-3">
				<div class="font-weight-bold text-primary">
					Board List Page
					<button id="regBtn" type="button"
						class="btn btn-xs float-right btn-primary">Register New Board</button>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th>#??????</th>
									<th>??????</th>
									<th>?????????</th>
									<th>?????????</th>
									<th>?????????</th>
								</tr>
							</thead>

							<c:forEach items="${list}" var="board">
								<tr>
									<td><c:out value="${board.bno}" /></td>
									<td><a  class='move' href='<c:out value="${board.bno}"/>'>
											<c:out value="${board.title}" />
									</a></td>
									<td><c:out value="${board.writer}" /></td>
									<td><fmt:formatDate pattern="yyyy-MM-dd"
											value="${board.regdate}" /></td>
									<td><fmt:formatDate pattern="yyyy-MM-dd"
											value="${board.updateDate}" /></td>
								</tr>
							</c:forEach>
						</table>


				<div class='pull-right'>
					<ul class="pagination">

						<c:if test="${pageMaker.prev}">
							<li class="paginate_button previous">
							<a href="${pageMaker.starPage-1}">Previous</a></li>
						</c:if>

						<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
							<li class="paginate_button ${pageMaker.cri.pageNum==num? "active":""}"><a
								href="${num}">${num}</a></li>
						</c:forEach>
>>>>>>> refs/remotes/origin/main

<<<<<<< HEAD
						<c:if test="${pageMaker.next}">
							<li class="paginate_button next"><a
								href="${pageMaker.endPage+1}">Next</a></li>
						</c:if>
					</ul>
				</div>
=======
							<c:forEach items="${list}" var="board">
								<tr>
									<td><c:out value="${board.bno}" /></td>
									<td><a href='/board/get?bno=<c:out value="${board.bno}"/>'>
											<c:out value="${board.title}" />
									</a></td>
									<td><c:out value="${board.writer}" /></td>
									<td><fmt:formatDate pattern="yyyy-MM-dd"
											value="${board.regdate}" /></td>
									<td><fmt:formatDate pattern="yyyy-MM-dd"
											value="${board.updateDate}" /></td>
								</tr>
							</c:forEach>
						</table>
>>>>>>> refs/remotes/origin/main

<<<<<<< HEAD
				<form id='actionForm' action="/board/list" method='get'>
					<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'> 
					<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
				</form>

				<!-- ------------------------------------Modal---------------------------------------------- -->
=======

						<div class='pull-right'>
							<ul class="pagination">
							
								<c:if test="${pageMaker.prev}">
									<li class="paginate_button previous"><a href="#">Previous</a>
									</li>
								</c:if>

								<c:forEach var="num" begin="${pageMaker.startPage}"
									end="${pageMaker.endPage}">
									<li class="paginate_button"><a href="#">${num}</a></li>
								</c:forEach>

								<c:if test="${pageMaker.next}">
									<li class="paginate_button next"><a href="#">Next</a></li>
								</c:if>
							</ul>
						</div>

					<!-- ------------------------------------Modal---------------------------------------------- -->
>>>>>>> refs/remotes/origin/main

					<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hiden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h4 class="modal-title" id="myModalLabel">Modal title</h4>
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
								</div>
								<div class="modal-body">????????? ?????????????????????.</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Close</button>
									<button type="button" class="btn btn-primary">Save
										changes</button>
								</div>
							</div>
						</div>
					</div>
					<!-- -----------Modal------------- -->

				</div>
			</div>
		</div>

	<%@include file="../includes/footer.jsp" %>
	
<!--  ------------------------------Modal script------------------------------------------ -->
	<script type="text/javascript">
	
		$(document).ready(function() {

			var result = '<c:out value="${result}"/>';

			checkModal(result);

			history.replaceState({},null,null);

			function checkModal(result){

				if (result ===''){
					return;
				}

				if (parseInt(result) > 0){
					$(".modal-body").html("????????? "+parseInt(result) +
							" ?????? ????????????????????????.");
					}
				$("#myModal").modal("show");
				}

			$("#regBtn").on("click",function(){

				self.location="/board/register";
				
			});
<!-- Modal script -->
			
<!-- ---------------------------????????? ?????? ????????? ??????--------------------------- -->
 			var actionForm= $("#actionForm");

			$(".paginate_button a").on("click", function(e){

				e.preventDefault();

				console.log('click');

				actionForm.find("input[name='pageNum']").val($(this).attr("href"));
				actionForm.submit();
			
				}); 
		
<!-- ????????? ?????? ????????? ?????? -->


<!-- ---------------------------????????? ????????? ????????? ??????------------------------ -->  
		$(".move").on("click", function(e){

				e.preventDefault();
				actionForm.append("<input type='hidden' name='bno' value='" +
		$(this).attr("href")+"'>");
				actionForm.attr("action","/board/get");
				actionForm.submit();

			});
<!-- ????????? ????????? ????????? ?????? -->	





		});
			
			
		
			</script>

</body>

</html>