<%--
  Created by IntelliJ IDEA.
  User: kosmo_10
  Date: 2021-03-02
  Time: 12:06
  To change this template use File | Settings | File Templates.
--%>
<%--
    tinydash-master > light > contacts-grid.html
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>adminManagerList.jsp / 관리자(manager) 목록 (contact)</title>

    <%--meta tag--%>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <%--css--%>
    <%--<jsp:include page="/WEB-INF/view/adminViews/layout/adminCss.jsp"/>--%>
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/res/adminTemplate/images/favicon.png">
    <link href="${pageContext.request.contextPath}/res/adminTemplate/css/style.css" rel="stylesheet">

    <!--<link rel="icon" href="favicon.ico">-->
    <!-- Simple bar CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/adminTemplate2/css/simplebar.css">
    <!-- Fonts CSS -->
    <link href="https://fonts.googleapis.com/css2?family=Overpass:ital,wght@0,100;0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <!-- Icons CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/adminTemplate2/css/feather.css">
    <!-- Date Range Picker CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/adminTemplate2/css/daterangepicker.css">
    <!-- App CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/adminTemplate2/css/app-light.css" id="lightTheme">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/adminTemplate2/css/app-dark.css" id="darkTheme" disabled>

    <%--js--%>
    <%--<jsp:include page="/WEB-INF/view/adminViews/layout/adminJs.jsp"/>--%>

</head>
<body class="vertical  light  ">
    <c:if test="${sessionScope.name}" == null>
    <c:if>

    <!--*******************
        Preloader start
    ********************-->
    <div id="preloader">
        <div class="loader">
            <svg class="circular" viewBox="25 25 50 50">
                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10" />
            </svg>
        </div>
    </div>
    <!--*******************
        Preloader end
    ********************-->


    <!--**********************************
        Main wrapper start
    ***********************************-->
    <div id="main-wrapper">



        <!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
        <!-- 여기부터 헤더 -->
        <!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
        <jsp:include page="/WEB-INF/view/adminViews/layout/adminHeader.jsp"/>
        <!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
        <!-- 여기까지 헤더 -->
        <!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->



        <!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body">

            <!--요기부터 내용 입력 !!!!!!!!!!!!!!!-->
            <div class="wrapper">


                <main role="main" class="main-content">
                    <div class="container-fluid">
                        <div class="row justify-content-center">
                            <div class="col-12">
                                <div class="row align-items-center my-4">
                                    <div class="col">
                                        <h2 class="h3 mb-0 page-title">Contacts</h2>
                                    </div>
                                    <div class="col-auto">
                                        <button type="button" class="btn btn-secondary"><span class="fe fe-trash fe-12 mr-2"></span>Delete</button>
                                        <button type="button" class="btn btn-primary"><span class="fe fe-filter fe-12 mr-2"></span>Create</button>
                                    </div>
                                </div>
                                <div class="row">
                                    <div `class="col-md-3">
                                        <div class="card shadow mb-4">
                                            <div class="card-body text-center">
                                                <div class="avatar avatar-lg mt-4">
                                                    <a href="">
                                                        <img src="${pageContext.request.contextPath}/res/adminTemplate2/assets/avatars/face-4.jpg" alt="..." class="avatar-img rounded-circle">
                                                    </a>
                                                </div>
                                                <div class="card-text my-2">
                                                    <strong class="card-title my-0">Bass Wendy </strong>
                                                    <p class="small text-muted mb-0">Accumsan Consulting</p>
                                                    <p class="small"><span class="badge badge-light text-muted">New York, USA</span></p>
                                                </div>
                                            </div> <!-- ./card-text -->
                                            <div class="card-footer">
                                                <div class="row align-items-center justify-content-between">
                                                    <div class="col-auto">
                                                        <small>
                                                            <span class="dot dot-lg bg-success mr-1"></span> Online </small>
                                                    </div>
                                                    <div class="col-auto">
                                                        <div class="file-action">
                                                            <button type="button" class="btn btn-link dropdown-toggle more-vertical p-0 text-muted mx-auto" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <span class="text-muted sr-only">Action</span>
                                                            </button>
                                                            <div class="dropdown-menu m-2">
                                                                <a class="dropdown-item" href="#"><i class="fe fe-meh fe-12 mr-4"></i>Profile</a>
                                                                <a class="dropdown-item" href="#"><i class="fe fe-message-circle fe-12 mr-4"></i>Chat</a>
                                                                <a class="dropdown-item" href="#"><i class="fe fe-mail fe-12 mr-4"></i>Contact</a>
                                                                <a class="dropdown-item" href="#"><i class="fe fe-delete fe-12 mr-4"></i>Delete</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div> <!-- /.card-footer -->
                                        </div>
                                    </div> <!-- .col -->


                                    <!--jstl 이 잘 되나요????????????????-->

                                    <c:forEach var="adminVOList" items="${adminVOList}">

                                        <div `class="col-md-3">
                                            <div class="card shadow mb-4">
                                                <div class="card-body text-center">
                                                    <div class="avatar avatar-lg mt-4">
                                                        <a href="">
                                                            <img src="${pageContext.request.contextPath}/res/adminTemplate2/assets/avatars/face-4.jpg" alt="..." class="avatar-img rounded-circle">
                                                        </a>
                                                    </div>
                                                    <div class="card-text my-2">
                                                        <strong class="card-title my-0">${adminVOList.mgr_name}</strong>
                                                        <p class="small text-muted mb-0">${adminVOList.mgr_id}</p>
                                                        <p class="small"><span class="badge badge-light text-muted">${adminVOList.mgr_pass}</span></p>
                                                    </div>
                                                </div> <!-- ./card-text -->
                                                <div class="card-footer">
                                                    <div class="row align-items-center justify-content-between">
                                                        <div class="col-auto">
                                                            <small>
                                                                <span class="dot dot-lg bg-success mr-1"></span> Online </small>
                                                        </div>
                                                        <div class="col-auto">
                                                            <div class="file-action">
                                                                <button type="button" class="btn btn-link dropdown-toggle more-vertical p-0 text-muted mx-auto" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                    <span class="text-muted sr-only">Action</span>
                                                                </button>
                                                                <div class="dropdown-menu m-2">
                                                                    <a class="dropdown-item" href="#"><i class="fe fe-meh fe-12 mr-4"></i>Profile</a>
                                                                    <a class="dropdown-item" href="#"><i class="fe fe-message-circle fe-12 mr-4"></i>Chat</a>
                                                                    <a class="dropdown-item" href="#"><i class="fe fe-mail fe-12 mr-4"></i>Contact</a>
                                                                    <a class="dropdown-item" href="#"><i class="fe fe-delete fe-12 mr-4"></i>Delete</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div> <!-- /.card-footer -->
                                            </div>
                                        </div> <!-- .col -->

                                    </c:forEach>

                                    <!--jstl 이 잘 되나요????????????????-->

                                    <div class="col-md-3">
                                        <div class="card shadow mb-4">
                                            <div class="card-body text-center">
                                                <div class="avatar avatar-lg mt-4">
                                                    <a href="">
                                                        <img src="${pageContext.request.contextPath}/res/adminTemplate2/assets/avatars/face-1.jpg" alt="..." class="avatar-img rounded-circle">
                                                    </a>
                                                </div>
                                                <div class="card-text my-2">
                                                    <strong class="card-title my-0">Leblanc Yoshio</strong>
                                                    <p class="small text-muted mb-0">Tristique Ltd</p>
                                                    <p class="small"><span class="badge badge-light text-muted">United Kingdom</span></p>
                                                </div>
                                            </div> <!-- ./card-text -->
                                            <div class="card-footer">
                                                <div class="row align-items-center justify-content-between">
                                                    <div class="col-auto">
                                                        <small>
                                                            <span class="dot dot-lg bg-secondary mr-1"></span> Offline </small>
                                                    </div>
                                                    <div class="col-auto">
                                                        <div class="file-action">
                                                            <button type="button" class="btn btn-link dropdown-toggle more-vertical p-0 text-muted mx-auto" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <span class="text-muted sr-only">Action</span>
                                                            </button>
                                                            <div class="dropdown-menu m-2">
                                                                <a class="dropdown-item" href="#"><i class="fe fe-meh fe-12 mr-4"></i>Profile</a>
                                                                <a class="dropdown-item" href="#"><i class="fe fe-message-circle fe-12 mr-4"></i>Chat</a>
                                                                <a class="dropdown-item" href="#"><i class="fe fe-mail fe-12 mr-4"></i>Contact</a>
                                                                <a class="dropdown-item" href="#"><i class="fe fe-delete fe-12 mr-4"></i>Delete</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div> <!-- /.card-footer -->
                                        </div>
                                    </div> <!-- .col -->
                                    <div class="col-md-3">
                                        <div class="card shadow mb-4">
                                            <div class="card-body text-center">
                                                <div class="avatar avatar-lg mt-4">
                                                    <a href="">
                                                        <img src="${pageContext.request.contextPath}/res/adminTemplate2/assets/avatars/face-5.jpg" alt="..." class="avatar-img rounded-circle">
                                                    </a>
                                                </div>
                                                <div class="card-text my-2">
                                                    <strong class="card-title my-0">Higgins Uriah</strong>
                                                    <p class="small text-muted mb-0">Suspendisse LLC</p>
                                                    <p class="small"><span class="badge badge-light text-muted">Canada</span></p>
                                                </div>
                                            </div> <!-- ./card-text -->
                                            <div class="card-footer">
                                                <div class="row align-items-center justify-content-between">
                                                    <div class="col-auto">
                                                        <small>
                                                            <span class="dot dot-lg bg-success mr-1"></span> Online </small>
                                                    </div>
                                                    <div class="col-auto">
                                                        <div class="file-action">
                                                            <button type="button" class="btn btn-link dropdown-toggle more-vertical p-0 text-muted mx-auto" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <span class="text-muted sr-only">Action</span>
                                                            </button>
                                                            <div class="dropdown-menu m-2">
                                                                <a class="dropdown-item" href="#"><i class="fe fe-meh fe-12 mr-4"></i>Profile</a>
                                                                <a class="dropdown-item" href="#"><i class="fe fe-message-circle fe-12 mr-4"></i>Chat</a>
                                                                <a class="dropdown-item" href="#"><i class="fe fe-mail fe-12 mr-4"></i>Contact</a>
                                                                <a class="dropdown-item" href="#"><i class="fe fe-delete fe-12 mr-4"></i>Delete</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div> <!-- /.card-footer -->
                                        </div>
                                    </div> <!-- .col -->
                                    <div class="col-md-3">
                                        <div class="card shadow mb-4">
                                            <div class="card-body text-center">
                                                <div class="avatar avatar-lg mt-4">
                                                    <a href="">
                                                        <img src="${pageContext.request.contextPath}/res/adminTemplate2/assets/avatars/face-3.jpg" alt="..." class="avatar-img rounded-circle">
                                                    </a>
                                                </div>
                                                <div class="card-text my-2">
                                                    <strong class="card-title my-0">Brown Asher</strong>
                                                    <p class="small text-muted mb-0">Orci Luctus Et Inc.</p>
                                                    <p class="small"><span class="badge badge-dark">USA</span></p>
                                                </div>
                                            </div> <!-- ./card-text -->
                                            <div class="card-footer">
                                                <div class="row align-items-center justify-content-between">
                                                    <div class="col-auto">
                                                        <small>
                                                            <span class="dot dot-lg bg-success mr-1"></span> Online </small>
                                                    </div>
                                                    <div class="col-auto">
                                                        <div class="file-action">
                                                            <button type="button" class="btn btn-link dropdown-toggle more-vertical p-0 text-muted mx-auto" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <span class="text-muted sr-only">Action</span>
                                                            </button>
                                                            <div class="dropdown-menu m-2">
                                                                <a class="dropdown-item" href="#"><i class="fe fe-meh fe-12 mr-4"></i>Profile</a>
                                                                <a class="dropdown-item" href="#"><i class="fe fe-message-circle fe-12 mr-4"></i>Chat</a>
                                                                <a class="dropdown-item" href="#"><i class="fe fe-mail fe-12 mr-4"></i>Contact</a>
                                                                <a class="dropdown-item" href="#"><i class="fe fe-delete fe-12 mr-4"></i>Delete</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div> <!-- /.card-footer -->
                                        </div>
                                    </div> <!-- .col -->
                                    <div class="col-md-3">
                                        <div class="card shadow mb-4">
                                            <div class="card-body text-center">
                                                <div class="avatar avatar-lg mt-4">
                                                    <a href="">
                                                        <img src="${pageContext.request.contextPath}/res/adminTemplate2/assets/avatars/face-4.jpg" alt="..." class="avatar-img rounded-circle">
                                                    </a>
                                                </div>
                                                <div class="card-text my-2">
                                                    <strong class="card-title my-0">Bass Wendy </strong>
                                                    <p class="small text-muted mb-0">Accumsan Consulting</p>
                                                    <p class="small"><span class="badge badge-light text-muted">New York, USA</span></p>
                                                </div>
                                            </div> <!-- ./card-text -->
                                            <div class="card-footer">
                                                <div class="row align-items-center justify-content-between">
                                                    <div class="col-auto">
                                                        <small>
                                                            <span class="dot dot-lg bg-success mr-1"></span> Online </small>
                                                    </div>
                                                    <div class="col-auto">
                                                        <div class="file-action">
                                                            <button type="button" class="btn btn-link dropdown-toggle more-vertical p-0 text-muted mx-auto" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <span class="text-muted sr-only">Action</span>
                                                            </button>
                                                            <div class="dropdown-menu m-2">
                                                                <a class="dropdown-item" href="#"><i class="fe fe-meh fe-12 mr-4"></i>Profile</a>
                                                                <a class="dropdown-item" href="#"><i class="fe fe-message-circle fe-12 mr-4"></i>Chat</a>
                                                                <a class="dropdown-item" href="#"><i class="fe fe-mail fe-12 mr-4"></i>Contact</a>
                                                                <a class="dropdown-item" href="#"><i class="fe fe-delete fe-12 mr-4"></i>Delete</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div> <!-- /.card-footer -->
                                        </div>
                                    </div> <!-- .col -->
                                    <div class="col-md-3">
                                        <div class="card shadow mb-4">
                                            <div class="card-body text-center">
                                                <div class="avatar avatar-lg mt-4">
                                                    <a href="">
                                                        <img src="${pageContext.request.contextPath}/res/adminTemplate2/assets/avatars/face-1.jpg" alt="..." class="avatar-img rounded-circle">
                                                    </a>
                                                </div>
                                                <div class="card-text my-2">
                                                    <strong class="card-title my-0">Leblanc Yoshio</strong>
                                                    <p class="small text-muted mb-0">Tristique Ltd</p>
                                                    <p class="small"><span class="badge badge-light text-muted">United Kingdom</span></p>
                                                </div>
                                            </div> <!-- ./card-text -->
                                            <div class="card-footer">
                                                <div class="row align-items-center justify-content-between">
                                                    <div class="col-auto">
                                                        <small>
                                                            <span class="dot dot-lg bg-secondary mr-1"></span> Offline </small>
                                                    </div>
                                                    <div class="col-auto">
                                                        <div class="file-action">
                                                            <button type="button" class="btn btn-link dropdown-toggle more-vertical p-0 text-muted mx-auto" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <span class="text-muted sr-only">Action</span>
                                                            </button>
                                                            <div class="dropdown-menu m-2">
                                                                <a class="dropdown-item" href="#"><i class="fe fe-meh fe-12 mr-4"></i>Profile</a>
                                                                <a class="dropdown-item" href="#"><i class="fe fe-message-circle fe-12 mr-4"></i>Chat</a>
                                                                <a class="dropdown-item" href="#"><i class="fe fe-mail fe-12 mr-4"></i>Contact</a>
                                                                <a class="dropdown-item" href="#"><i class="fe fe-delete fe-12 mr-4"></i>Delete</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div> <!-- /.card-footer -->
                                        </div>
                                    </div> <!-- .col -->
                                    <div class="col-md-3">
                                        <div class="card shadow mb-4">
                                            <div class="card-body text-center">
                                                <div class="avatar avatar-lg mt-4">
                                                    <a href="">
                                                        <img src="${pageContext.request.contextPath}/res/adminTemplate2/assets/avatars/face-5.jpg" alt="..." class="avatar-img rounded-circle">
                                                    </a>
                                                </div>
                                                <div class="card-text my-2">
                                                    <strong class="card-title my-0">Higgins Uriah</strong>
                                                    <p class="small text-muted mb-0">Suspendisse LLC</p>
                                                    <p class="small"><span class="badge badge-light text-muted">Canada</span></p>
                                                </div>
                                            </div> <!-- ./card-text -->
                                            <div class="card-footer">
                                                <div class="row align-items-center justify-content-between">
                                                    <div class="col-auto">
                                                        <small>
                                                            <span class="dot dot-lg bg-success mr-1"></span> Online </small>
                                                    </div>
                                                    <div class="col-auto">
                                                        <div class="file-action">
                                                            <button type="button" class="btn btn-link dropdown-toggle more-vertical p-0 text-muted mx-auto" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <span class="text-muted sr-only">Action</span>
                                                            </button>
                                                            <div class="dropdown-menu m-2">
                                                                <a class="dropdown-item" href="#"><i class="fe fe-meh fe-12 mr-4"></i>Profile</a>
                                                                <a class="dropdown-item" href="#"><i class="fe fe-message-circle fe-12 mr-4"></i>Chat</a>
                                                                <a class="dropdown-item" href="#"><i class="fe fe-mail fe-12 mr-4"></i>Contact</a>
                                                                <a class="dropdown-item" href="#"><i class="fe fe-delete fe-12 mr-4"></i>Delete</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div> <!-- /.card-footer -->
                                        </div>
                                    </div> <!-- .col -->
                                    <div class="col-md-3">
                                        <div class="card shadow mb-4">
                                            <div class="card-body text-center">
                                                <div class="avatar avatar-lg mt-4">
                                                    <a href="">
                                                        <img src="${pageContext.request.contextPath}/res/adminTemplate2/assets/avatars/face-3.jpg" alt="..." class="avatar-img rounded-circle">
                                                    </a>
                                                </div>
                                                <div class="card-text my-2">
                                                    <strong class="card-title my-0">Brown Asher</strong>
                                                    <p class="small text-muted mb-0">Orci Luctus Et Inc.</p>
                                                    <p class="small"><span class="badge badge-dark">USA</span></p>
                                                </div>
                                            </div> <!-- ./card-text -->
                                            <div class="card-footer">
                                                <div class="row align-items-center justify-content-between">
                                                    <div class="col-auto">
                                                        <small>
                                                            <span class="dot dot-lg bg-success mr-1"></span> Online </small>
                                                    </div>
                                                    <div class="col-auto">
                                                        <div class="file-action">
                                                            <button type="button" class="btn btn-link dropdown-toggle more-vertical p-0 text-muted mx-auto" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <span class="text-muted sr-only">Action</span>
                                                            </button>
                                                            <div class="dropdown-menu m-2">
                                                                <a class="dropdown-item" href="#"><i class="fe fe-meh fe-12 mr-4"></i>Profile</a>
                                                                <a class="dropdown-item" href="#"><i class="fe fe-message-circle fe-12 mr-4"></i>Chat</a>
                                                                <a class="dropdown-item" href="#"><i class="fe fe-mail fe-12 mr-4"></i>Contact</a>
                                                                <a class="dropdown-item" href="#"><i class="fe fe-delete fe-12 mr-4"></i>Delete</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div> <!-- /.card-footer -->
                                        </div>
                                    </div> <!-- .col -->
                                    <div class="col-md-9">
                                    </div> <!-- .col -->
                                </div> <!-- .row -->
                                <nav aria-label="Table Paging" class="my-3">
                                    <ul class="pagination justify-content-end mb-0">
                                        <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        <li class="page-item"><a class="page-link" href="#">Next</a></li>
                                    </ul>
                                </nav>
                            </div> <!-- .col-12 -->
                        </div> <!-- .row -->
                    </div> <!-- .container-fluid -->

                </main> <!-- main -->
            </div> <!-- .wrapper -->

        </div>
        <!--**********************************
            Content body end
        ***********************************-->



        <!-- ☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆ -->
        <!-- 여기부터 푸터 -->
        <!-- ☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆ -->
        <jsp:include page="/WEB-INF/view/adminViews/layout/adminFooter.jsp"/>
        <!-- ☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆ -->
        <!-- 여기까지 푸터 -->
        <!-- ☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆ -->



    </div>
    <!--**********************************
        Main wrapper end
    ***********************************-->

    <%--js--%>
    <%--<jsp:include page="/WEB-INF/view/adminViews/layout/adminJs.jsp"/>--%>
    <script src="${pageContext.request.contextPath}/res/adminTemplate/plugins/common/common.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/adminTemplate/js/custom.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/adminTemplate/js/settings.js"></script>
    <script src="${pageContext.request.contextPath}/res/adminTemplate/js/gleek.js"></script>
    <script src="${pageContext.request.contextPath}/res/adminTemplate/js/styleSwitcher.js"></script>

    <script src="${pageContext.request.contextPath}/res/adminTemplate2/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/adminTemplate2/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/adminTemplate2/js/moment.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/adminTemplate2/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/adminTemplate2/js/simplebar.min.js"></script>
    <script src='${pageContext.request.contextPath}/res/adminTemplate2/js/daterangepicker.js'></script>
    <script src='${pageContext.request.contextPath}/res/adminTemplate2/js/jquery.stickOnScroll.js'></script>
    <script src="${pageContext.request.contextPath}/res/adminTemplate2/js/tinycolor-min.js"></script>
    <script src="${pageContext.request.contextPath}/res/adminTemplate2/js/config.js"></script>
    <script src="${pageContext.request.contextPath}/res/adminTemplate2/js/apps.js"></script>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-56159088-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag()
        {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());
        gtag('config', 'UA-56159088-1');
    </script>



</body>

</html>

