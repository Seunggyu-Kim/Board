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
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/resources/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">


	<%@ include file="../includes/header.jsp" %>
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Tables</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>#번호</th>
                                            <th>제목</th>
                                            <th>작성자</th>
                                            <th>작성일</th>
                                            <th>수정일</th>
                                        </tr>
                                    </thead>
                                    
                  <c:forEach items="${list}" var="board">
                  <tr>
                  	<td><c:out value="${board.bno}"/></td>
                  	<td><c:out value="${board.title}"/></td>
                  	<td><c:out value="${board.writer}"/></td>
                  	<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate}"/></td>
                  	<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate}"/></td>
                  </tr>
                  	</c:forEach>
                                    
                                </table>
                                
<<<<<<< HEAD
            <!-- Modal -->
            
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
            	aria-labelledby="myModalLabel" aria-hiden="true">
            	<div class="modal-dialog">
            		<div class="modal-content">
            			<div class="modal-header">
            			<h4 class="modal-title" id="myModalLabel">Modal title</h4>
            				<button type="button" class="close" data-dismiss="modal"
            				aria-hidden="true">&times;</button>
            		</div>
            		<div class="modal-body">처리가 완료되었습니다.</div>
            		<div class="modal-footer">
            			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            			<button type="button" class="btn btn-primary">Save changes</button>
            		</div>
            	</div>
            </div>
          </div>
        
	<!-- Modal   -->

                            </div>
                        </div>
                    </div>
                </div>

	<%@include file="../includes/footer.jsp" %>
	

	<script type="text/javascript">
		$(document).ready(function() {

			var result = '<c:out value="${result}"/>';

			checkModal(result);

			function checkModal(result){

				if (result ===''){
					return;
				}

				if (parseInt(result) > 0){
					$(".modal-body").html("게시글 "+parseInt(result) +
							" 번이 등록되어있습니다.");
					}
				$("#myModal").modal("show");
				}
		});

	</script>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->

	<%@include file="../includes/footer.jsp" %>


>>>>>>> refs/remotes/origin/main


</body>

</html>