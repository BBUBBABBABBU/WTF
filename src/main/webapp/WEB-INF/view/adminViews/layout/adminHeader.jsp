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
            <a href="index.html">
                <b class="logo-abbr"><img src="${pageContext.request.contextPath}/res/adminTemplate/images/logo.png" alt=""> </b>
                <span class="logo-compact"><img src="${pageContext.request.contextPath}/res/adminTemplate/images/logo-compact.png" alt=""></span>
                <span class="brand-title"><img src="${pageContext.request.contextPath}/res/adminTemplate/images/logo-text.png" alt=""></span>
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
                    <div class="input-group-prepend">
                        <span class="input-group-text bg-transparent border-0 pr-2 pr-sm-3" id="basic-addon1"><i class="mdi mdi-magnify"></i></span>
                    </div>
                    <input type="search" class="form-control" placeholder="Search Dashboard" aria-label="Search Dashboard">
                    <div class="drop-down   d-md-none">
                        <form action="#">
                            <input type="text" class="form-control" placeholder="Search">
                        </form>
                    </div>
                </div>
            </div>
            <div class="header-right">
                <ul class="clearfix">
                    <li class="icons dropdown"><a href="javascript:void(0)" data-toggle="dropdown">
                        <i class="mdi mdi-email-outline"></i>
                        <span class="badge gradient-1 badge-pill badge-primary">3</span>
                    </a>
                        <div class="drop-down animated fadeIn dropdown-menu">
                            <div class="dropdown-content-heading d-flex justify-content-between">
                                <span class="">3 New Messages</span>

                            </div>
                            <div class="dropdown-content-body">
                                <ul>
                                    <li class="notification-unread">
                                        <a href="javascript:void(0)">
                                            <img class="float-left mr-3 avatar-img" src="${pageContext.request.contextPath}/res/adminTemplate/images/avatar/1.jpg" alt="">
                                            <div class="notification-content">
                                                <div class="notification-heading">Saiful Islam</div>
                                                <div class="notification-timestamp">08 Hours ago</div>
                                                <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="notification-unread">
                                        <a href="javascript:void(0)">
                                            <img class="float-left mr-3 avatar-img" src="${pageContext.request.contextPath}/res/adminTemplate/images/avatar/2.jpg" alt="">
                                            <div class="notification-content">
                                                <div class="notification-heading">Adam Smith</div>
                                                <div class="notification-timestamp">08 Hours ago</div>
                                                <div class="notification-text">Can you do me a favour?</div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)">
                                            <img class="float-left mr-3 avatar-img" src="${pageContext.request.contextPath}/res/adminTemplate/images/avatar/3.jpg" alt="">
                                            <div class="notification-content">
                                                <div class="notification-heading">Barak Obama</div>
                                                <div class="notification-timestamp">08 Hours ago</div>
                                                <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)">
                                            <img class="float-left mr-3 avatar-img" src="${pageContext.request.contextPath}/res/adminTemplate/images/avatar/4.jpg" alt="">
                                            <div class="notification-content">
                                                <div class="notification-heading">Hilari Clinton</div>
                                                <div class="notification-timestamp">08 Hours ago</div>
                                                <div class="notification-text">Hello</div>
                                            </div>
                                        </a>
                                    </li>
                                </ul>

                            </div>
                        </div>
                    </li>
                    <li class="icons dropdown"><a href="javascript:void(0)" data-toggle="dropdown">
                        <i class="mdi mdi-bell-outline"></i>
                        <span class="badge badge-pill gradient-2 badge-primary">3</span>
                    </a>
                        <div class="drop-down animated fadeIn dropdown-menu dropdown-notfication">
                            <div class="dropdown-content-heading d-flex justify-content-between">
                                <span class="">2 New Notifications</span>

                            </div>
                            <div class="dropdown-content-body">
                                <ul>
                                    <li>
                                        <a href="javascript:void(0)">
                                            <span class="mr-3 avatar-icon bg-success-lighten-2"><i class="icon-present"></i></span>
                                            <div class="notification-content">
                                                <h6 class="notification-heading">Events near you</h6>
                                                <span class="notification-text">Within next 5 days</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)">
                                            <span class="mr-3 avatar-icon bg-danger-lighten-2"><i class="icon-present"></i></span>
                                            <div class="notification-content">
                                                <h6 class="notification-heading">Event Started</h6>
                                                <span class="notification-text">One hour ago</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)">
                                            <span class="mr-3 avatar-icon bg-success-lighten-2"><i class="icon-present"></i></span>
                                            <div class="notification-content">
                                                <h6 class="notification-heading">Event Ended Successfully</h6>
                                                <span class="notification-text">One hour ago</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)">
                                            <span class="mr-3 avatar-icon bg-danger-lighten-2"><i class="icon-present"></i></span>
                                            <div class="notification-content">
                                                <h6 class="notification-heading">Events to Join</h6>
                                                <span class="notification-text">After two days</span>
                                            </div>
                                        </a>
                                    </li>
                                </ul>

                            </div>
                        </div>
                    </li>
                    <li class="icons dropdown d-none d-md-flex">
                        <a href="javascript:void(0)" class="log-user"  data-toggle="dropdown">
                            <span>English ${sessionScope.name}</span>  <i class="fa fa-angle-down f-s-14" aria-hidden="true"></i>
                        </a>
                        <div class="drop-down dropdown-language animated fadeIn  dropdown-menu">
                            <div class="dropdown-content-body">
                                <ul>
                                    <li><a href="javascript:void(0)">English</a></li>
                                    <li><a href="javascript:void(0)">Dutch</a></li>
                                </ul>
                            </div>
                        </div>
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
                                    <li>
                                        <a href="email-inbox.html"><i class="icon-envelope-open"></i> <span>Inbox</span> <div class="badge gradient-3 badge-pill badge-primary">3</div></a>
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
                <li class="nav-label">HOME / DASHBOARD</li>

                <%--Dashboard--%>
                <li>
                    <a class="has-arrow" href="javascript:void(0)" aria-expanded="false">
                        <i class="icon-speedometer menu-icon"></i><span class="nav-text">Home</span>
                    </a>
                    <ul aria-expanded="false">
                        <li><a href="index">Dashboard</a></li>
                    </ul>
                </li>
                <%--=========================--%>
                <%--Dashboard group end--%>
                <%--=========================--%>



                <%--=========================--%>
                <%--User group--%>
                <%--=========================--%>
                <li class="nav-label"><!--빈칸--></li>
                <li class="nav-label">USER</li>

                <%--User List--%>
                <li>
                    <a class="has-arrow" href="javascript:void(0)" aria-expanded="false">
                        <i class="icon-screen-tablet menu-icon"></i><span class="nav-text">User List</span>
                    </a>
                    <ul aria-expanded="false">
                        <li><a href="/memberList">User profile</a></li>
                    </ul>
                </li>

                <%--QnA / FAQ--%>
                <li>
                    <a class="has-arrow" href="javascript:void(0)" aria-expanded="false">
                        <i class="icon-envelope menu-icon"></i> <span class="nav-text">QnA / FAQ</span>
                    </a>
                    <ul aria-expanded="false">
                        <li><a href="/adminQnA">QnA</a></li>
                        <li><a href="#">FAQ</a></li>
                    </ul>
                </li>
                <%--=========================--%>
                <%--User group end--%>
                <%--=========================--%>



                <%--=========================--%>
                <%--Product group--%>
                <%--=========================--%>
                <li class="nav-label"><!--빈칸--></li>
                <li class="nav-label">PRODUCT</li>

                <%--Store list--%>
                <%--<li class="mega-menu mega-menu-sm"> // 클래스 뭔지 모르겠어서 일단 주석달고 하단 li 태그 삽입--%>
                <li>
                    <a class="has-arrow" href="javascript:void(0)" aria-expanded="false">
                        <i class="icon-globe-alt menu-icon"></i><span class="nav-text">Store List</span>
                    </a>
                    <ul aria-expanded="false">
                        <li><a href="/storeList">Store profile</a></li>
                    </ul>
                </li>

                <%--Review--%>
                <li>
                    <a class="has-arrow" href="javascript:void(0)" aria-expanded="false">
                        <i class="icon-note menu-icon"></i><span class="nav-text">Review List</span>
                    </a>
                    <ul aria-expanded="false">
                        <li><a href="/reviewList">Review</a></li>
                    </ul>
                </li>

                <%--Charts--%>
                <li>
                    <a class="has-arrow" href="javascript:void(0)" aria-expanded="false">
                        <i class="icon-graph menu-icon"></i> <span class="nav-text">Charts</span>
                    </a>
                    <ul aria-expanded="false">
                        <li><a href="./chart-flot.html">Flot</a></li>
                        <li><a href="./chart-morris.html">Morris</a></li>
                        <li><a href="./chart-chartjs.html">Chartjs</a></li>
                        <li><a href="./chart-chartist.html">Chartist</a></li>
                        <li><a href="./chart-sparkline.html">Sparkline</a></li>
                        <li><a href="./chart-peity.html">Peity</a></li>
                    </ul>
                </li>
                <%--=========================--%>
                <%--Product group end--%>
                <%--=========================--%>



                <%--=========================--%>
                <%--Settings group--%>
                <%--=========================--%>
                <li class="nav-label"><!--빈칸--></li>
                <li class="nav-label">Settings</li>

                <%--Achievement--%>
                <li>
                    <a href="/achieveSetting" aria-expanded="false">
                        <i class="icon-badge menu-icon"></i><span class="nav-text">업적 Achievement setting</span>
                    </a>
                </li>

                <%--입맛 / 취향 / 선호도 > 등록, 수정, 삭제--%>
                <li>
                    <a class="has-arrow" href="javascript:void(0)" aria-expanded="false">
                        <i class="icon-menu menu-icon"></i><span class="nav-text">입맛?취향?선호? Flavor</span>
                    </a>
                    <ul aria-expanded="false">
                        <li><a href="/flavorSetting" aria-expanded="false">Flavor setting</a></li>
                    </ul>
                </li>
                <%--=========================--%>
                <%--Settings group end--%>
                <%--=========================--%>



                <%--=========================--%>
                <%--Manager group--%>
                <%--=========================--%>
                <li class="nav-label"><!--빈칸--></li>
                <li class="nav-label">Manager</li>

                <%--Manager List--%>
                <li>
                    <a class="has-arrow" href="javascript:void(0)" aria-expanded="false">
                        <i class="icon-grid menu-icon"></i><span class="nav-text">Manager List</span>
                    </a>
                    <ul aria-expanded="false">
                        <li><a href="/managerList">Contact</a></li>
                    </ul>
                </li>

                <%--Community--%>
                <li>
                    <a class="has-arrow" href="javascript:void(0)" aria-expanded="false">
                        <i class="icon-notebook menu-icon"></i><span class="nav-text">Community</span>
                    </a>
                    <ul aria-expanded="false">
                        <li><a href="/notice">공지사항 Notice</a></li>
                        <li><a href="/board">익명게시판? Board</a></li>
                    </ul>
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

