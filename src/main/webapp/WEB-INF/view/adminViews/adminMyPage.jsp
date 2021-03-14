<%--
  Created by IntelliJ IDEA.
  User: kosmo_10
  Date: 2021-03-02
  Time: 02:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>adminMyPage.jsp / 관리자 (manager) 마이페이지</title>

    <%--meta tag--%>
    <%--QUIXLAB-MASTER > blank.html--%>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">

    <%--tinydash-master > light > contacts-grid.html--%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <%--css--%>
    <%--<jsp:include page="/WEB-INF/view/adminViews/layout/adminCss.jsp"/>--%>
    <%--QUIXLAB-MASTER > blank.html--%>
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/res/adminTemplate/images/favicon.png">
    <!-- Custom Stylesheet -->
    <link href="${pageContext.request.contextPath}/res/adminTemplate/css/style.css" rel="stylesheet">

    <%--tinydash-master > light > contacts-grid.html--%>
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
        <main role="main">
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-10 col-xl-8">
                        <h2 class="h3 mb-4 page-title">Settings</h2>
                        <div class="my-4">

                            <form>
                                <div class="row mt-5 align-items-center">
                                    <div class="col-md-3 text-center mb-5">
                                        <div class="avatar avatar-xl">
                                            <img src="${pageContext.request.contextPath}/res/adminTemplate2//assets/avatars/face-1.jpg" alt="..." class="avatar-img rounded-circle">
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="row align-items-center">
                                            <div class="col-md-7">
                                                <h4 class="mb-1">Brown, Asher</h4>
                                                <p class="small mb-3"><span class="badge badge-dark">New York, USA</span></p>
                                            </div>
                                        </div>
                                        <div class="row mb-4">
                                            <div class="col-md-7">
                                                <p class="text-muted"> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit nisl ullamcorper, rutrum metus in, congue lectus. In hac habitasse platea dictumst. Cras urna quam, malesuada vitae risus at, pretium blandit sapien. </p>
                                            </div>
                                            <div class="col">
                                                <p class="small mb-0 text-muted">Nec Urna Suscipit Ltd</p>
                                                <p class="small mb-0 text-muted">P.O. Box 464, 5975 Eget Avenue</p>
                                                <p class="small mb-0 text-muted">(537) 315-1481</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr class="my-4">
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="firstname">Firstname</label>
                                        <input type="text" id="firstname" class="form-control" placeholder="Brown">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="lastname">Lastname</label>
                                        <input type="text" id="lastname" class="form-control" placeholder="Asher">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail4">Email</label>
                                    <input type="email" class="form-control" id="inputEmail4" placeholder="brown@asher.me">
                                </div>
                                <div class="form-group">
                                    <label for="inputAddress5">Address</label>
                                    <input type="text" class="form-control" id="inputAddress5" placeholder="P.O. Box 464, 5975 Eget Avenue">
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="inputCompany5">Company</label>
                                        <input type="text" class="form-control" id="inputCompany5" placeholder="Nec Urna Suscipit Ltd">
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label for="inputState5">State</label>
                                        <select id="inputState5" class="form-control">
                                            <option selected="">Choose...</option>
                                            <option>...</option>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-2">
                                        <label for="inputZip5">Zip</label>
                                        <input type="text" class="form-control" id="inputZip5" placeholder="98232">
                                    </div>
                                </div>
                                <hr class="my-4">
                                <div class="row mb-4">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="inputPassword4">Old Password</label>
                                            <input type="password" class="form-control" id="inputPassword4">
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword5">New Password</label>
                                            <input type="password" class="form-control" id="inputPassword5">
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword6">Confirm Password</label>
                                            <input type="password" class="form-control" id="inputPassword6">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <p class="mb-2">Password requirements</p>
                                        <p class="small text-muted mb-2"> To create a new password, you have to meet all of the following requirements: </p>
                                        <ul class="small text-muted pl-4 mb-0">
                                            <li> Minimum 8 character </li>
                                            <li>At least one special character</li>
                                            <li>At least one number</li>
                                            <li>Can’t be the same as a previous password </li>
                                        </ul>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary">Save Change</button>
                            </form>
                        </div> <!-- /.card-body -->
                    </div> <!-- /.col-12 -->
                </div> <!-- .row -->
            </div> <!-- .container-fluid -->
            <div class="modal fade modal-notif modal-slide" tabindex="-1" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-sm" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="defaultModalLabel">Notifications</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="list-group list-group-flush my-n3">
                                <div class="list-group-item bg-transparent">
                                    <div class="row align-items-center">
                                        <div class="col-auto">
                                            <span class="fe fe-box fe-24"></span>
                                        </div>
                                        <div class="col">
                                            <small><strong>Package has uploaded successfull</strong></small>
                                            <div class="my-0 text-muted small">Package is zipped and uploaded</div>
                                            <small class="badge badge-pill badge-light text-muted">1m ago</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="list-group-item bg-transparent">
                                    <div class="row align-items-center">
                                        <div class="col-auto">
                                            <span class="fe fe-download fe-24"></span>
                                        </div>
                                        <div class="col">
                                            <small><strong>Widgets are updated successfull</strong></small>
                                            <div class="my-0 text-muted small">Just create new layout Index, form, table</div>
                                            <small class="badge badge-pill badge-light text-muted">2m ago</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="list-group-item bg-transparent">
                                    <div class="row align-items-center">
                                        <div class="col-auto">
                                            <span class="fe fe-inbox fe-24"></span>
                                        </div>
                                        <div class="col">
                                            <small><strong>Notifications have been sent</strong></small>
                                            <div class="my-0 text-muted small">Fusce dapibus, tellus ac cursus commodo</div>
                                            <small class="badge badge-pill badge-light text-muted">30m ago</small>
                                        </div>
                                    </div> <!-- / .row -->
                                </div>
                                <div class="list-group-item bg-transparent">
                                    <div class="row align-items-center">
                                        <div class="col-auto">
                                            <span class="fe fe-link fe-24"></span>
                                        </div>
                                        <div class="col">
                                            <small><strong>Link was attached to menu</strong></small>
                                            <div class="my-0 text-muted small">New layout has been attached to the menu</div>
                                            <small class="badge badge-pill badge-light text-muted">1h ago</small>
                                        </div>
                                    </div>
                                </div> <!-- / .row -->
                            </div> <!-- / .list-group -->
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary btn-block" data-dismiss="modal">Clear All</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade modal-shortcut modal-slide" tabindex="-1" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="defaultModalLabel">Shortcuts</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body px-5">
                            <div class="row align-items-center">
                                <div class="col-6 text-center">
                                    <div class="squircle bg-success justify-content-center">
                                        <i class="fe fe-cpu fe-32 align-self-center text-white"></i>
                                    </div>
                                    <p>Control area</p>
                                </div>
                                <div class="col-6 text-center">
                                    <div class="squircle bg-primary justify-content-center">
                                        <i class="fe fe-activity fe-32 align-self-center text-white"></i>
                                    </div>
                                    <p>Activity</p>
                                </div>
                            </div>
                            <div class="row align-items-center">
                                <div class="col-6 text-center">
                                    <div class="squircle bg-primary justify-content-center">
                                        <i class="fe fe-droplet fe-32 align-self-center text-white"></i>
                                    </div>
                                    <p>Droplet</p>
                                </div>
                                <div class="col-6 text-center">
                                    <div class="squircle bg-primary justify-content-center">
                                        <i class="fe fe-upload-cloud fe-32 align-self-center text-white"></i>
                                    </div>
                                    <p>Upload</p>
                                </div>
                            </div>
                            <div class="row align-items-center">
                                <div class="col-6 text-center">
                                    <div class="squircle bg-primary justify-content-center">
                                        <i class="fe fe-users fe-32 align-self-center text-white"></i>
                                    </div>
                                    <p>Users</p>
                                </div>
                                <div class="col-6 text-center">
                                    <div class="squircle bg-primary justify-content-center">
                                        <i class="fe fe-settings fe-32 align-self-center text-white"></i>
                                    </div>
                                    <p>Settings</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main> <!-- main -->

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
<%--QUIXLAB-MASTER > blank.html--%>
<!--**********************************
    Scripts
***********************************-->
<script src="${pageContext.request.contextPath}/res/adminTemplate/plugins/common/common.min.js"></script>
<script src="${pageContext.request.contextPath}/res/adminTemplate/js/custom.min.js"></script>
<script src="${pageContext.request.contextPath}/res/adminTemplate/js/settings.js"></script>
<script src="${pageContext.request.contextPath}/res/adminTemplate/js/gleek.js"></script>
<script src="${pageContext.request.contextPath}/res/adminTemplate/js/styleSwitcher.js"></script>

<%--tinydash-master > light > contacts-grid.html--%>
<%--    <script src="${pageContext.request.contextPath}/res/adminTemplate2/js/jquery.min.js"></script>--%>
<%--    <script src="${pageContext.request.contextPath}/res/adminTemplate2/js/popper.min.js"></script>--%>
<%--    <script src="${pageContext.request.contextPath}/res/adminTemplate2/js/moment.min.js"></script>--%>
<%--    <script src="${pageContext.request.contextPath}/res/adminTemplate2/js/bootstrap.min.js"></script>--%>
<%--    <script src="${pageContext.request.contextPath}/res/adminTemplate2/js/simplebar.min.js"></script>--%>
<%--    <script src='${pageContext.request.contextPath}/res/adminTemplate2/js/daterangepicker.js'></script>--%>
<%--    <script src='${pageContext.request.contextPath}/res/adminTemplate2/js/jquery.stickOnScroll.js'></script>--%>
<%--    <script src="${pageContext.request.contextPath}/res/adminTemplate2/js/tinycolor-min.js"></script>--%>
<%--    <script src="${pageContext.request.contextPath}/res/adminTemplate2/js/config.js"></script>--%>
<%--    <script src="${pageContext.request.contextPath}/res/adminTemplate2/js/apps.js"></script>--%>
<%--    <!-- Global site tag (gtag.js) - Google Analytics -->--%>
<%--    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-56159088-1"></script>--%>
<%--    <script>--%>
<%--        window.dataLayer = window.dataLayer || [];--%>

<%--        function gtag()--%>
<%--        {--%>
<%--            dataLayer.push(arguments);--%>
<%--        }--%>
<%--        gtag('js', new Date());--%>
<%--        gtag('config', 'UA-56159088-1');--%>
<%--    </script>--%>


</body>
</html>
