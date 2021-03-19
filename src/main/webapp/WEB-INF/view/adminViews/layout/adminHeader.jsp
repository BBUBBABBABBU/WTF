<%--
  Created by IntelliJ IDEA.
  User: kosmo_10
  Date: 2021-02-24
  Time: 12:51
  To change this template use File | Settings | File Templates.
--%>
<%--
    메인 템플릿으로 사용하는
    quixlab-master 의 Header + nav bar (side bar) 만들어둔 것
    로그인 화면을 제외한 모든 jsp 에 적용
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


    <!--**********************************
        Nav header start
    ***********************************-->
    <div class="nav-header">
        <div class="brand-logo">
            <a href="/">
                <h2 style="color: #ffffff">니.이.먹.정</h2>
                <span class="logo-compact"><img src="${pageContext.request.contextPath}/res/img/admin_brand.png" alt=""></span>
                <span class="brand-title"><img src="${pageContext.request.contextPath}/res/img/admin_brand.png" alt=""></span>
            </a>
        </div>
    </div>
    <!--**********************************
        Nav header end
    ***********************************-->



    <!--**********************************
        Header start
    ***********************************-->
    <div class="header">
        <div class="header-content clearfix">

            <div class="nav-control">
                <div class="hamburger">
                    <span class="toggle-icon"><i class="icon-menu"></i></span>
                </div>
            </div>
            <div class="header-left">
                <div class="input-group icons">
                    <div class="drop-down   d-md-none">
                        <form action="#">
                            <input type="text" class="form-control" placeholder="Search">
                        </form>
                    </div>
                </div>
            </div>
            <%--<div class="customize-input">--%>
                <%--<input class="form-control custom-shadow custom-radius border-0 bg-white" name='startDate'--%>
                    <%--type="text" id="startDatePicker" placeholder="Start Date" aria-label="Search">--%>
                <%--<i class="form-control-icon" data-feather="search"></i>--%>
            <%--</div>--%>
            <%--<div class="customize-input">--%>
                <%--<input class="form-control custom-shadow custom-radius border-0 bg-white" name='startDate'--%>
                    <%--type="text" id="endDatePicker" placeholder="End Date" aria-label="Search">--%>
                <%--<i class="form-control-icon" data-feather="search"></i>--%>
            <%--</div>--%>


            <div class="header-right">
                <ul class="clearfix">

                    <li class="icons dropdown"><a href="javascript:void(0)" data-toggle="dropdown">
                        <i class="mdi mdi-bell-outline"></i>
                        <span class="badge badge-pill gradient-2 badge-primary">답변대기인qna수</span>
                    </a>
                        <div class="drop-down animated fadeIn dropdown-menu dropdown-notfication">
                            <div class="dropdown-content-heading d-flex justify-content-between">
                                <span class="">미확인 QnA</span>

                            </div>
                            <div class="dropdown-content-body">
                                <ul>
                                    <li>
                                        <a href="javascript:void(0)">
                                            <span class="mr-3 avatar-icon bg-success-lighten-2"><i class="icon-present"></i></span>
                                            <div class="notification-content">
                                                <h6 class="notification-heading">질문제목</h6>
                                                <span class="notification-text">내용짧게</span>
                                            </div>
                                        </a>
                                    </li>
                                </ul>

                            </div>
                        </div>
                    </li>
                    <li class="icons dropdown d-none d-md-flex">
                        <a class="log-user"  data-toggle="dropdown">
                            <span>${sessionScope.name}</span>
                        </a>
                    </li>
                    <li class="icons dropdown">
                        <div class="user-img c-pointer position-relative"   data-toggle="dropdown">
                            <span class="activity active"></span>
                            <img src="${pageContext.request.contextPath}/res/adminTemplate/images/user/1.png" height="40" width="40" alt="">
                        </div>
                        <div class="drop-down dropdown-profile   dropdown-menu">
                            <div class="dropdown-content-body">
                                <ul>
                                    <li>
                                        <a href="/myPage"><i class="icon-user"></i> <span>Profile</span></a>
                                    </li>
                                    <hr class="my-2">
                                    <li>
                                        <a href="/pageLock"><i class="icon-lock"></i> <span>Lock Screen</span></a>
                                    </li>
                                    <li><a href="/adminLogout"><i class="icon-key"></i> <span>Logout</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!--**********************************
        Header end ti-comment-alt
    ***********************************-->



    <!--**********************************
        Sidebar start
    ***********************************-->
    <div class="nk-sidebar">
        <div class="nk-nav-scroll">
            <ul class="metismenu" id="menu">


                <%--=========================--%>
                <%--Dashboard group--%>
                <%--=========================--%>
                <%--<li class="nav-label">HOME / DASHBOARD</li>--%>
                <li class="nav-label">메인</li>

                <%--Dashboard--%>
                <%--<li>--%>
                    <%--<a class="has-arrow" href="javascript:void(0)" aria-expanded="false">--%>
                        <%--<i class="icon-speedometer menu-icon"></i><span class="nav-text">Home</span>--%>
                    <%--</a>--%>
                    <%--<ul aria-expanded="false">--%>
                        <%--<li><a href="index">Dashboard</a></li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
                <li>
                    <a href="index" aria-expanded="false">
                        <i class="icon-speedometer menu-icon"></i><span class="nav-text">홈 / 대시보드</span>
                    </a>
                </li>
                <%--=========================--%>
                <%--Dashboard group end--%>
                <%--=========================--%>



                <%--=========================--%>
                <%--User group--%>
                <%--=========================--%>
                <li class="nav-label"><!--빈칸--></li>
                <%--<li class="nav-label">USER</li>--%>
                <li class="nav-label">회원관리</li>

                <%--User List--%>
                <%--<li>--%>
                    <%--<a class="has-arrow" href="javascript:void(0)" aria-expanded="false">--%>
                        <%--<i class="icon-screen-tablet menu-icon"></i><span class="nav-text">User List</span>--%>
                    <%--</a>--%>
                    <%--<ul aria-expanded="false">--%>
                        <%--<li><a href="/memberList">User profile</a></li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
                <li>
                    <a href="memberList" aria-expanded="false">
                        <i class="icon-screen-tablet menu-icon"></i><span class="nav-text">회원 목록</span>
                    </a>
                </li>

                <%--QnA / FAQ--%>
                <%--<li>--%>
                    <%--<a class="has-arrow" href="javascript:void(0)" aria-expanded="false">--%>
                        <%--<i class="icon-envelope menu-icon"></i> <span class="nav-text">QnA / FAQ</span>--%>
                    <%--</a>--%>
                    <%--<ul aria-expanded="false">--%>
                        <%--<li><a href="/adminQnA">QnA</a></li>--%>
                        <%--&lt;%&ndash;<li><a href="#">FAQ</a></li>&ndash;%&gt;--%>
                    <%--</ul>--%>
                <%--</li>--%>
                <li>
                    <a href="adminQnA" aria-expanded="false">
                        <i class="icon-envelope menu-icon"></i> <span class="nav-text">QnA</span>
                    </a>
                </li>
                <%--=========================--%>
                <%--User group end--%>
                <%--=========================--%>



                <%--=========================--%>
                <%--Product group--%>
                <%--=========================--%>
                <li class="nav-label"><!--빈칸--></li>
                <%--<li class="nav-label">PRODUCT</li>--%>
                <li class="nav-label">사이트 관리</li>

                <%--Store list--%>
                <%--<li class="mega-menu mega-menu-sm"> // 클래스 뭔지 모르겠어서 일단 주석달고 하단 li 태그 삽입--%>
                <%--<li>--%>
                    <%--<a class="has-arrow" href="javascript:void(0)" aria-expanded="false">--%>
                        <%--<i class="icon-globe-alt menu-icon"></i><span class="nav-text">Store List</span>--%>
                    <%--</a>--%>
                    <%--<ul aria-expanded="false">--%>
                        <%--<li><a href="/storeList">Store profile</a></li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
                <li>
                    <a href="storeList" aria-expanded="false">
                        <i class="icon-globe-alt menu-icon"></i><span class="nav-text">맛집 목록</span>
                    </a>
                </li>

                <%--Review--%>
                <%--<li>--%>
                    <%--<a class="has-arrow" href="javascript:void(0)" aria-expanded="false">--%>
                        <%--<i class="icon-note menu-icon"></i><span class="nav-text">Review List</span>--%>
                    <%--</a>--%>
                    <%--<ul aria-expanded="false">--%>
                        <%--<li><a href="/reviewList">Review</a></li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
                <li>
                    <a href="reviewList" aria-expanded="false">
                        <i class="icon-note menu-icon"></i><span class="nav-text">후기 목록</span>
                    </a>
                </li>


                <%--Charts--%>
                <%--<li>--%>
                    <%--<a class="has-arrow" href="javascript:void(0)" aria-expanded="false">--%>
                        <%--<i class="icon-graph menu-icon"></i> <span class="nav-text">Charts</span>--%>
                    <%--</a>--%>
                    <%--<ul aria-expanded="false">--%>
                        <%--<li><a href="./chart-flot.html">Flot</a></li>--%>
                        <%--<li><a href="${pageContext.request.contextPath}/res/adminTemplate/chart-morris.html">Morris</a></li>--%>
                        <%--<li><a href="${pageContext.request.contextPath}/res/adminTemplate/chart-chartjs.html">Chartjs</a></li>--%>
                        <%--<li><a href="${pageContext.request.contextPath}/res/adminTemplate/chart-chartist.html">Chartist</a></li>--%>
                        <%--<li><a href="./chart-sparkline.html">Sparkline</a></li>--%>
                        <%--<li><a href="./chart-peity.html">Peity</a></li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
                <li>
                    <a class="has-arrow" href="javascript:void(0)" aria-expanded="false">
                        <i class="icon-graph menu-icon"></i> <span class="nav-text">차트</span>
                    </a>
                    <ul aria-expanded="false">
<%--                        <li><a href="./chart-flot.html">Flot</a></li>--%>
                        <li><a href="/chart-morris">리뷰 차트</a></li>
<%--                        <li><a href="${pageContext.request.contextPath}/res/adminTemplate/chart-chartjs.html">Chartjs</a></li>
                        <li><a href="${pageContext.request.contextPath}/res/adminTemplate/chart-chartist.html">Chartist</a></li>
                        <li><a href="./chart-sparkline.html">Sparkline</a></li>
                        <li><a href="./chart-peity.html">Peity</a></li>--%>
                    </ul>
                </li>
                <%--=========================--%>
                <%--Product group end--%>
                <%--=========================--%>



                <%--=========================--%>
                <%--Settings group--%>
                <%--=========================--%>
                <li class="nav-label"><!--빈칸--></li>
                <%--<li class="nav-label">SETTINGS</li>--%>
                <li class="nav-label">설정</li>

                <%--&lt;%&ndash;Achievement&ndash;%&gt;--%>
                <%--<li>--%>
                    <%--<a href="/achieveSetting" aria-expanded="false">--%>
                        <%--<i class="icon-badge menu-icon"></i><span class="nav-text">업적 Achievement setting</span>--%>
                    <%--</a>--%>
                <%--</li>--%>

                <%--입맛 / 취향 / 선호도 > 등록, 수정, 삭제--%>
                <%--<li>--%>
                    <%--<a class="has-arrow" href="javascript:void(0)" aria-expanded="false">--%>
                        <%--<i class="icon-menu menu-icon"></i><span class="nav-text">입맛?취향?선호? Flavor</span>--%>
                    <%--</a>--%>
                    <%--<ul aria-expanded="false">--%>
                        <%--<li><a href="/flavorSetting" aria-expanded="false">Flavor setting</a></li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
                <li>
                    <a href="flavorSetting" aria-expanded="false">
                        <i class="icon-menu menu-icon"></i><span class="nav-text">유저 입맛 목록</span>
                    </a>
                </li>
                <%--=========================--%>
                <%--Settings group end--%>
                <%--=========================--%>



                <%--=========================--%>
                <%--Manager group--%>
                <%--=========================--%>
                <li class="nav-label"><!--빈칸--></li>
                <%--<li class="nav-label">MANAGER</li>--%>
                <li class="nav-label">관리자</li>

                <%--Manager List--%>
                <%--<li>--%>
                    <%--<a class="has-arrow" href="javascript:void(0)" aria-expanded="false">--%>
                        <%--<i class="icon-grid menu-icon"></i><span class="nav-text">Manager List</span>--%>
                    <%--</a>--%>
                    <%--<ul aria-expanded="false">--%>
                        <%--<li><a href="/managerList">Contact</a></li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
                <li>
                    <a href="managerList" aria-expanded="false">
                        <i class="icon-grid menu-icon"></i><span class="nav-text">관리자 목록</span>
                    </a>
                </li>

                <%--Community--%>
                <%--<li>--%>
                    <%--<a class="has-arrow" href="javascript:void(0)" aria-expanded="false">--%>
                        <%--<i class="icon-notebook menu-icon"></i><span class="nav-text">Community</span>--%>
                    <%--</a>--%>
                    <%--<ul aria-expanded="false">--%>
                        <%--<li><a href="/notice">공지사항 Notice</a></li>--%>
                        <%--<li><a href="/board">익명게시판? Board</a></li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
                <li>
                    <a href="board" aria-expanded="false">
                        <i class="icon-notebook menu-icon"></i><span class="nav-text">사내 익명 게시판</span>
                    </a>
                </li>
                <%--=========================--%>
                <%--Manager group end--%>
                <%--=========================--%>


            </ul>
        </div>
    </div>
    <!--**********************************
        Sidebar end
    ***********************************-->

