<%--
  Created by IntelliJ IDEA.
  User: kosmo_10
  Date: 2021-03-09
  Time: 12:59
  To change this template use File | Settings | File Templates.
--%>
<%--
    QUIXLAB-MASTER > blank.html
    concept-master > influencer-profile.html
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>adminMemberDetail.jsp / 회원(member) 상세</title>

    <%--meta tag--%>
    <%--QUIXLAB-MASTER > blank.html--%>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">

    <%--concept-master > influencer-finder.html--%>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <%--css--%>
    <%--<jsp:include page="/WEB-INF/view/adminViews/layout/adminCss.jsp"/>--%>

    <%--QUIXLAB-MASTER > blank.html--%>
    <!-- Custom Stylesheet -->
    <link href="${pageContext.request.contextPath}/res/adminTemplate/css/style.css" rel="stylesheet">

    <%--concept-master > influencer-finder.html--%>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/adminTemplate3/assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="${pageContext.request.contextPath}/res/adminTemplate3/assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/adminTemplate3/assets/libs/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/adminTemplate3/assets/vendor/fonts/fontawesome/css/fontawesome-all.css">

    <%--js--%>
    <%--<jsp:include page="/WEB-INF/view/adminViews/layout/adminJs.jsp"/>--%>

</head>
<body>

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
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <!-- <div class="dashboard-wrapper"> -->
        <div class="influence-profile">
            <div class="container-fluid dashboard-content ">
                <!-- ============================================================== -->
                <!-- pageheader -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h3 class="mb-2"> 회원정보 </h3>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link"></a></li>
                                        <li class="breadcrumb-item active" aria-current="page">  </li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- content -->
                <!-- ============================================================== -->
                <div class="row">
                    <!-- ============================================================== -->
                    <!-- profile -->
                    <!-- ============================================================== -->
                    <div class="col-xl-3 col-lg-3 col-md-5 col-sm-12 col-12">
                        <!-- ============================================================== -->
                        <!-- card profile -->
                        <!-- ============================================================== -->
                        <div class="card">
                            <div class="card-body">
                                <div class="user-avatar text-center d-block">
                                    <%--<img src="${pageContext.request.contextPath}/res/adminTemplate3/assets/images/avatar-1.jpg" alt="User Avatar" class="rounded-circle user-avatar-xxl">--%>
                                </div>
                                <div class="text-center">
                                    <h2 class="font-24 mb-0">${member.nickname} </h2>
                                    <%
                                        request.setCharacterEncoding("UTF-8");
                                        String member = request.getParameter("member");
                                    %>
                                    <p> ${member.email } </p>
                                </div>
                            </div>
                            <div class="card-body border-top">
                                <h3 class="font-16">개인정보</h3>
                                <div class="">
                                    <ul class="list-unstyled mb-0">
                                        <li class="mb-2" ><i ></i>등록번호 : ${member.memberId} </li>
                                        <li class="mb-2"><i ></i>생일 : ${member.birthday} </li>
                                        <li class="mb-0"><i ></i>성별 : ${member.gender} </li>
                                        <li class="mb-0"><i ></i>회원등록일 : ${member.registDate} </li>


                                    </ul>
                                </div>
                            </div>
                            <div class="card-body border-top">
                                <h3 class="font-16">평균 별점</h3>
                                <h1 class="mb-0">4.8</h1>
                                <div class="rating-star">
                                    <i class="fa fa-fw fa-star"></i>
                                    <i class="fa fa-fw fa-star"></i>
                                    <i class="fa fa-fw fa-star"></i>
                                    <i class="fa fa-fw fa-star"></i>
                                    <i class="fa fa-fw fa-star"></i>
                                    <p class="d-inline-block text-dark">14 Reviews </p>
                                </div>
                            </div>

                            <div class="card-body border-top">
                                <h3 class="font-16">선호 음식</h3>
                                <div>
                                    <a href="#" class="badge badge-light mr-1"> ${member.favor} </a>
                                    <%--<a href="#" class="badge badge-light mr-1">Life Style</a><a href="#" class="badge badge-light mr-1">Gym</a>--%>
                                </div>
                            </div>
                        </div>
                        <!-- ============================================================== -->
                        <!-- end card profile -->
                        <!-- ============================================================== -->
                    </div>
                    <!-- ============================================================== -->
                    <!-- end profile -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- campaign data -->
                    <!-- ============================================================== -->
                    <div class="col-xl-9 col-lg-9 col-md-7 col-sm-12 col-12">
                        <!-- ============================================================== -->
                        <!-- campaign tab one -->
                        <!-- ============================================================== -->
                        <div class="influence-profile-content pills-regular">
                            <%--<ul class="nav nav-pills mb-3 nav-justified" id="pills-tab" role="tablist">--%>
                            <%--<li class="nav-item">--%>
                            <%--<a class="nav-link active" id="pills-campaign-tab" data-toggle="pill" href="#pills-campaign" role="tab" aria-controls="pills-campaign" aria-selected="true">Campaign</a>--%>
                            <%--</li>--%>
                            <%--<li class="nav-item">--%>
                            <%--<a class="nav-link" id="pills-packages-tab" data-toggle="pill" href="#pills-packages" role="tab" aria-controls="pills-packages" aria-selected="false">Packages</a>--%>
                            <%--</li>--%>
                            <%--<li class="nav-item">--%>
                            <%--<a class="nav-link" id="pills-review-tab" data-toggle="pill" href="#pills-review" role="tab" aria-controls="pills-review" aria-selected="false">Reviews</a>--%>
                            <%--</li>--%>
                            <%--<li class="nav-item">--%>
                            <%--<a class="nav-link" id="pills-msg-tab" data-toggle="pill" href="#pills-msg" role="tab" aria-controls="pills-msg" aria-selected="false">Send Messages</a>--%>
                            <%--</li>--%>
                            <%--</ul>--%>
                            <div class="tab-content" id="pills-tabContent">
                                <div class="tab-pane fade show active" id="pills-campaign" role="tabpanel" aria-labelledby="pills-campaign-tab">
                                    <div class="row">
                                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                            <div class="section-block">
                                                <h3 class="section-title">회원활동 정보</h3>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
                                            <div class="card">
                                                <div class="card-body">
                                                    <h1 class="mb-1">9</h1>
                                                    <p>앱사용시간</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
                                            <div class="card">
                                                <div class="card-body">
                                                    <h1 class="mb-1">35</h1>
                                                    <p>팔로워 수</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
                                            <div class="card">
                                                <div class="card-body">
                                                    <h1 class="mb-1">8</h1>
                                                    <p>팔로잉 수</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
                                            <div class="card">
                                                <div class="card-body">
                                                    <h1 class="mb-1">1</h1>
                                                    <p>검색횟수</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="section-block">
                                        <h3 class="section-title">고객이 남긴 리뷰</h3>
                                    </div>
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                                    <div class="media influencer-profile-data d-flex align-items-center p-2">
                                                        <div class="mr-4">
                                                            <img src="${pageContext.request.contextPath}/res/adminTemplate3/assets/images/slack.png" alt="User Avatar" class="user-avatar-lg">
                                                        </div>
                                                        <div class="media-body ">
                                                            <div class="influencer-profile-data">
                                                                <h3 class="m-b-10">Your Campaign Title Here</h3>
                                                                <p>
                                                                        <span class="m-r-20 d-inline-block">Draft Due Date
                                                                            <span class="m-l-10 text-primary">24 Jan 2018</span>
                                                                        </span>
                                                                    <span class="m-r-20 d-inline-block"> Publish Date
                                                                            <span class="m-l-10 text-secondary">30 Feb 2018</span>
                                                                        </span>
                                                                    <span class="m-r-20 d-inline-block">Ends <span class="m-l-10  text-info">30 May, 2018</span>
                                                                        </span>
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="border-top card-footer p-0">
                                            <div class="campaign-metrics d-xl-inline-block">
                                                <h4 class="mb-0">45k</h4>
                                                <p>Total Reach</p>
                                            </div>
                                            <div class="campaign-metrics d-xl-inline-block">
                                                <h4 class="mb-0">29k</h4>
                                                <p>Total Views</p>
                                            </div>
                                            <div class="campaign-metrics d-xl-inline-block">
                                                <h4 class="mb-0">5k</h4>
                                                <p>Total Click</p>
                                            </div>
                                            <div class="campaign-metrics d-xl-inline-block">
                                                <h4 class="mb-0">4k</h4>
                                                <p>Engagement</p>
                                            </div>
                                            <div class="campaign-metrics d-xl-inline-block">
                                                <h4 class="mb-0">2k</h4>
                                                <p>Conversion</p>
                                            </div>
                                        </div>
                                    </div>
                                    <%--<div class="card">--%>
                                    <%--<div class="card-body">--%>
                                    <%--<div class="row">--%>
                                    <%--<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">--%>
                                    <%--<div class="media influencer-profile-data d-flex align-items-center p-2">--%>
                                    <%--<div class="mr-4">--%>
                                    <%--<img src="${pageContext.request.contextPath}/res/adminTemplate3/assets/images/dribbble.png" alt="User Avatar" class="rounded-circle user-avatar-lg">--%>
                                    <%--</div>--%>
                                    <%--<div class="media-body">--%>
                                    <%--<h3 class="m-b-10">Your Campaign Title Here</h3>--%>
                                    <%--<p><span class="m-r-20 d-inline-block">Draft Due Date<span class="m-l-10 d-inline-block text-primary">28 Jan 2018</span></span><span class="m-r-20 d-inline-block"> Publish Date<span class="m-l-10 text-secondary">20 March 2018</span></span><span class="m-r-20">Ends<span class="m-l-10 text-info">10 July, 2018</span></span>--%>
                                    <%--</p>--%>
                                    <%--</div>--%>
                                    <%--</div>--%>
                                    <%--</div>--%>
                                    <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="border-top card-footer p-0">--%>
                                    <%--<div class="campaign-metrics d-xl-inline-block">--%>
                                    <%--<h4 class="mb-0 ">35k</h4>--%>
                                    <%--<p>Total Reach</p>--%>
                                    <%--</div>--%>
                                    <%--<div class="campaign-metrics d-xl-inline-block">--%>
                                    <%--<h4 class="mb-0 ">45k</h4>--%>
                                    <%--<p>Total Views</p>--%>
                                    <%--</div>--%>
                                    <%--<div class="campaign-metrics d-xl-inline-block">--%>
                                    <%--<h4 class="mb-0">8k</h4>--%>
                                    <%--<p>Total Click</p>--%>
                                    <%--</div>--%>
                                    <%--<div class="campaign-metrics d-xl-inline-block">--%>
                                    <%--<h4 class="mb-0 ">10k</h4>--%>
                                    <%--<p>Engagement</p>--%>
                                    <%--</div>--%>
                                    <%--<div class="campaign-metrics d-xl-inline-block">--%>
                                    <%--<h4 class="mb-0">3k</h4>--%>
                                    <%--<p>Conversion</p>--%>
                                    <%--</div>--%>
                                    <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="card">--%>
                                    <%--<div class="card-body">--%>
                                    <%--<div class="row">--%>
                                    <%--<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">--%>
                                    <%--<div class="media influencer-profile-data d-flex align-items-center p-2">--%>
                                    <%--<div class="mr-4">--%>
                                    <%--<img src="${pageContext.request.contextPath}/res/adminTemplate3/assets/images/dropbox.png" alt="User Avatar" class="user-avatar-lg">--%>
                                    <%--</div>--%>
                                    <%--<div class="media-body">--%>
                                    <%--<h3 class="m-b-10">Your Campaign Title Here</h3>--%>
                                    <%--<p><span class="m-r-20 d-inline-block">Draft Due Date--%>
                                    <%--<span class="m-l-10 text-primary">05 Feb 2018</span></span>--%>
                                    <%--<span class="m-r-20 d-inline-block"> Publish Date--%>
                                    <%--<span class="m-l-10 text-secondary">14 May 2018</span></span><span class="m-r-20 d-inline-block">Ends<span class="m-l-10 text-info">16 Aug, 2018</span></span>--%>
                                    <%--</p>--%>
                                    <%--</div>--%>
                                    <%--</div>--%>
                                    <%--</div>--%>
                                    <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="border-top card-footer p-0">--%>
                                    <%--<div class="campaign-metrics d-xl-inline-block">--%>
                                    <%--<h4 class="mb-0">40k</h4>--%>
                                    <%--<p>Total Reach</p>--%>
                                    <%--</div>--%>
                                    <%--<div class="campaign-metrics d-xl-inline-block">--%>
                                    <%--<h4 class="mb-0 ">35k</h4>--%>
                                    <%--<p>Total Views</p>--%>
                                    <%--</div>--%>
                                    <%--<div class="campaign-metrics d-xl-inline-block">--%>
                                    <%--<h4 class="mb-0">5k</h4>--%>
                                    <%--<p>Total Click</p>--%>
                                    <%--</div>--%>
                                    <%--<div class="campaign-metrics d-xl-inline-block">--%>
                                    <%--<h4 class="mb-0">15k</h4>--%>
                                    <%--<p>Engagement</p>--%>
                                    <%--</div>--%>
                                    <%--<div class="campaign-metrics d-xl-inline-block">--%>
                                    <%--<h4 class="mb-0">14k</h4>--%>
                                    <%--<p>Conversion</p>--%>
                                    <%--</div>--%>
                                    <%--</div>--%>
                                    <%--</div>--%>
                                    <%--</div>--%>
                                    <div class="tab-pane fade" id="pills-packages" role="tabpanel" aria-labelledby="pills-packages-tab">
                                        <div class="row">
                                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                                <div class="section-block">
                                                    <h2 class="section-title">My Packages</h2>
                                                </div>
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12">
                                                <div class="card">
                                                    <div class="card-header bg-primary text-center p-3 ">
                                                        <h4 class="mb-0 text-white"> Basic</h4>
                                                    </div>
                                                    <div class="card-body text-center">
                                                        <h1 class="mb-1">$150</h1>
                                                        <p>Per Month Plateform</p>
                                                    </div>
                                                    <div class="card-body border-top">
                                                        <ul class="list-unstyled bullet-check font-14">
                                                            <li>Facebook, Instagram, Pinterest,Snapchat.</li>
                                                            <li>Guaranteed follower growth for increas brand awareness.</li>
                                                            <li>Daily updates on choose platforms</li>
                                                            <li>Stronger customer service through daily interaction</li>
                                                            <li>Monthly progress report</li>
                                                            <li>1 Million Followers</li>
                                                        </ul>
                                                        <a href="#" class="btn btn-outline-secondary btn-block btn-lg">Get Started</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12">
                                                <div class="card">
                                                    <div class="card-header bg-info text-center p-3">
                                                        <h4 class="mb-0 text-white"> Standard</h4>
                                                    </div>
                                                    <div class="card-body text-center">
                                                        <h1 class="mb-1">$350</h1>
                                                        <p>Per Month Plateform</p>
                                                    </div>
                                                    <div class="card-body border-top">
                                                        <ul class="list-unstyled bullet-check font-14">
                                                            <li>Facebook, Instagram, Pinterest,Snapchat.</li>
                                                            <li>Guaranteed follower growth for increas brand awareness.</li>
                                                            <li>Daily updates on choose platforms</li>
                                                            <li>Stronger customer service through daily interaction</li>
                                                            <li>Monthly progress report</li>
                                                            <li>2 Blog Post & 3 Social Post</li>
                                                            <li>5 Millions Followers</li>
                                                            <li>Growth Result</li>
                                                        </ul>
                                                        <a href="#" class="btn btn-secondary btn-block btn-lg">Get Started</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12">
                                                <div class="card">
                                                    <div class="card-header bg-primary text-center p-3">
                                                        <h4 class="mb-0 text-white">Premium</h4>
                                                    </div>
                                                    <div class="card-body text-center">
                                                        <h1 class="mb-1">$550</h1>
                                                        <p>Per Month Plateform</p>
                                                    </div>
                                                    <div class="card-body border-top">
                                                        <ul class="list-unstyled bullet-check font-14">
                                                            <li>Facebook, Instagram, Pinterest,Snapchat.</li>
                                                            <li>Guaranteed follower growth for increas brand awareness.</li>
                                                            <li>Daily updates on choose platforms</li>
                                                            <li>Stronger customer service through daily interaction</li>
                                                            <li>Monthly progress report & Growth Result</li>
                                                            <li>4 Blog Post & 6 Social Post</li>
                                                        </ul>
                                                        <a href="#" class="btn btn-secondary btn-block btn-lg">Contact us</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="pills-review" role="tabpanel" aria-labelledby="pills-review-tab">
                                        <div class="card">
                                            <h5 class="card-header">Campaign Reviews</h5>
                                            <div class="card-body">
                                                <div class="review-block">
                                                    <p class="review-text font-italic m-0">“Quisque lobortis vestibulum elit, vel fermentum elit pretium et. Nullam id ultrices odio. Cras id nulla mollis, molestie diam eu, facilisis tortor. Mauris ultrices lectus laoreet commodo hendrerit. Nullam varius arcu sed aliquam imperdiet. Etiam ut luctus augue.”</p>
                                                    <div class="rating-star mb-4">
                                                        <i class="fa fa-fw fa-star"></i>
                                                        <i class="fa fa-fw fa-star"></i>
                                                        <i class="fa fa-fw fa-star"></i>
                                                        <i class="fa fa-fw fa-star"></i>
                                                        <i class="fa fa-fw fa-star"></i>
                                                    </div>
                                                    <span class="text-dark font-weight-bold">Tabitha C. Campbell</span><small class="text-mute"> (Company name)</small>
                                                </div>
                                            </div>
                                            <div class="card-body border-top">
                                                <div class="review-block">
                                                    <p class="review-text font-italic m-0">“Maecenas rutrum viverra augue. Nulla in eros vitae ante ullamcorper congue. Praesent tristique massa ac arcu dapibus tincidunt. Mauris arcu mi, lacinia et ipsum vel, sollicitudin laoreet risus.”</p>
                                                    <div class="rating-star mb-4">
                                                        <i class="fa fa-fw fa-star"></i>
                                                        <i class="fa fa-fw fa-star"></i>
                                                        <i class="fa fa-fw fa-star"></i>
                                                        <i class="fa fa-fw fa-star"></i>
                                                        <i class="fa fa-fw fa-star"></i>
                                                    </div>
                                                    <span class="text-dark font-weight-bold">Luise M. Michet</span><small class="text-mute"> (Company name)</small>
                                                </div>
                                            </div>
                                            <div class="card-body border-top">
                                                <div class="review-block">
                                                    <p class="review-text font-italic m-0">“ Cras non rutrum neque. Sed lacinia ex elit, vel viverra nisl faucibus eu. Aenean faucibus neque vestibulum condimentum maximus. In id porttitor nisi. Quisque sit amet commodo arcu, cursus pharetra elit. Nam tincidunt lobortis augueat euismod ante sodales non. ”</p>
                                                    <div class="rating-star mb-4">
                                                        <i class="fa fa-fw fa-star"></i>
                                                        <i class="fa fa-fw fa-star"></i>
                                                        <i class="fa fa-fw fa-star"></i>
                                                        <i class="fa fa-fw fa-star"></i>
                                                        <i class="fa fa-fw fa-star"></i>
                                                    </div>
                                                    <span class="text-dark font-weight-bold">Gloria S. Castillo</span><small class="text-mute"> (Company name)</small>
                                                </div>
                                            </div>
                                            <div class="card-body border-top">
                                                <div class="review-block">
                                                    <p class="review-text font-italic m-0">“Vestibulum cursus felis vel arcu convallis, viverra commodo felis bibendum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin non auctor est, sed lacinia velit. Orci varius natoque penatibus et magnis dis parturient montes nascetur ridiculus mus.”</p>
                                                    <div class="rating-star mb-4">
                                                        <i class="fa fa-fw fa-star"></i>
                                                        <i class="fa fa-fw fa-star"></i>
                                                        <i class="fa fa-fw fa-star"></i>
                                                        <i class="fa fa-fw fa-star"></i>
                                                        <i class="fa fa-fw fa-star"></i>
                                                    </div>
                                                    <span class="text-dark font-weight-bold">Virgina G. Lightfoot</span><small class="text-mute"> (Company name)</small>
                                                </div>
                                            </div>
                                            <div class="card-body border-top">
                                                <div class="review-block">
                                                    <p class="review-text font-italic m-0">“Integer pretium laoreet mi ultrices tincidunt. Suspendisse eget risus nec sapien malesuada ullamcorper eu ac sapien. Maecenas nulla orci, varius ac tincidunt non, ornare a sem. Aliquam sed massa volutpat, aliquet nibh sit amet, tincidunt ex. Donec interdum pharetra dignissim.”</p>
                                                    <div class="rating-star mb-4">
                                                        <i class="fa fa-fw fa-star"></i>
                                                        <i class="fa fa-fw fa-star"></i>
                                                        <i class="fa fa-fw fa-star"></i>
                                                        <i class="fa fa-fw fa-star"></i>
                                                        <i class="fa fa-fw fa-star"></i>
                                                    </div>
                                                    <span class="text-dark font-weight-bold">Ruby B. Matheny</span><small class="text-mute"> (Company name)</small>
                                                </div>
                                            </div>
                                        </div>
                                        <nav aria-label="Page navigation example">
                                            <ul class="pagination">
                                                <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                                <li class="page-item active"><a class="page-link " href="#">2</a></li>
                                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                <li class="page-item"><a class="page-link" href="#">Next</a></li>
                                            </ul>
                                        </nav>
                                    </div>
                                    <div class="tab-pane fade" id="pills-msg" role="tabpanel" aria-labelledby="pills-msg-tab">
                                        <div class="card">
                                            <h5 class="card-header">Send Messages</h5>
                                            <div class="card-body">
                                                <form>
                                                    <div class="row">
                                                        <div class="offset-xl-3 col-xl-6 offset-lg-3 col-lg-3 col-md-12 col-sm-12 col-12 p-4">
                                                            <div class="form-group">
                                                                <label for="name">Your Name</label>
                                                                <input type="text" class="form-control form-control-lg" id="name" placeholder="">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="email">Your Email</label>
                                                                <input type="email" class="form-control form-control-lg" id="email" placeholder="">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="subject">Subject</label>
                                                                <input type="text" class="form-control form-control-lg" id="subject" placeholder="">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="messages">Messgaes</label>
                                                                <textarea class="form-control" id="messages" rows="3"></textarea>
                                                            </div>
                                                            <button type="submit" class="btn btn-primary float-right">Send Message</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- ============================================================== -->
                            <!-- end campaign tab one -->
                            <!-- ============================================================== -->
                        </div>
                        <!-- ============================================================== -->
                        <!-- end campaign data -->
                        <!-- ============================================================== -->
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- end content -->
            <!-- ============================================================== -->

            <!-- </div> -->
            <!-- ============================================================== -->
            <!-- end wrapper -->
            <!-- ============================================================== -->

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

    <%--concept-master > influencer-finder.html--%>
    <!-- Optional JavaScript -->
    <!-- jquery 3.3.1  -->
    <%--    <script src="${pageContext.request.contextPath}/res/adminTemplate3/assets/vendor/jquery/jquery-3.3.1.min.js"></script>--%>
    <!-- bootstap bundle js -->
    <%--    <script src="${pageContext.request.contextPath}/res/adminTemplate3/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>--%>
    <!-- slimscroll js -->
    <%--    <script src="${pageContext.request.contextPath}/res/adminTemplate3/assets/vendor/slimscroll/jquery.slimscroll.js"></script>--%>
    <!-- main js -->
    <%--    <script src="${pageContext.request.contextPath}/res/adminTemplate3/assets/libs/js/main-js.js"></script>--%>


</body>



</html>
