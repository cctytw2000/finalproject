<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
    <link rel="stylesheet" href="CSS/bootstrap.min.css" />
    <link rel="stylesheet" href="CSS/font-awesome.min.css" />
    <link rel="stylesheet" href="CSS/owl.carousel.css" />
    <link rel="stylesheet" href="CSS/style.css" />
    <link rel="stylesheet" href="CSS/animate.css" />
    <script src="JS/login.js"></script>
    <script src="JS/RegisteredMember.js"></script>
    <script src="JS/FBGoogleRegistered.js"></script>
    <script src="https://kit.fontawesome.com/685268963f.js"></script>
    <script src="JS/FBGoogleLogin.js"></script>
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header section -->
    <header class="header-section">
        <div class="container">
            <!-- logo -->
            <a class="site-logo" href="home.jsp">
                <img src="Images/logo.png" alt="">
            </a>
            <c:choose>
                <c:when test="${sessionScope.account != Null}">
                    <div class="user-panel">
                        <span style="font-size:18px" class="welcome">${sessionScope.username}
                            您好!</span>&nbsp;&nbsp;/&nbsp;&nbsp;<a href="./LogOutMember.do">登出</a>

                    </div>
                </c:when>
                <c:otherwise>
                    <div class="user-panel">
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                            data-target="#login">login</button> /
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                            data-target="#Register">Register</button>
                    </div>
                </c:otherwise>

            </c:choose>
            <div class="modal fade" id="Register" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle"
                aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle">註冊</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">


                            <form action="RegisteredMember.do" method="post">

                                <fieldset>


                                    <div class="form-group">
                                        <label for="account">帳號:</label>
                                        <input type="text" class="form-control" id="account" name="account" style="display:inline"><i
                                            style="margin:-15px" id="check" class="fas fa-clipboard-check"></i><span
                                            style="margin-left:30px" id="account_msg"></span>
                                    </div>
                                    <div class="form-group">
                                        <label for="password">密碼:</label>
                                        <input type="password" class="form-control" id="password" name="password" style="display:inline"><i
                                            style="margin:-20px" onclick="showHide();" id="eye"
                                            class="fas fa-eye"></i><span style="margin-left:30px"
                                            id="msg_password"></span>
                                        <h6 style="color: gray; font-size: 8px">(1.不可空白，2.至少六個字包含英文字母，數字，特殊字元(!@#$%^&*))
                                        </h6>
                                    </div>



                                    <div class="form-group">
                                        <label for="username">姓名:</label>
                                        <input type="password" class="form-control" id="username" name="username"><span
                                            id="msg"></span>
                                        <h6 style="color: gray; font-size: 8px">(1.不可空白，2.至少兩個字以上，3.必須為中文字)</h6>
                                    </div>

                                    <div style="width: 90%;margin-left:30px">
                                        <button type="button" style="background-color: #0066FF" class="btn btn-facebook"
                                            onclick="FBRestistered();">
                                            <i class="fab fa-facebook-f fa-lg"></i> Facebook註冊
                                        </button>
                                        <button type="button" style="background-color: #FF3333" class="btn btn-google"
                                            onclick="GoogleRestistered();">
                                            <i class="fab fa-google-plus-g fa-lg"></i> Google註冊
                                        </button>
                                    </div>





                                    <script async defer src="https://apis.google.com/js/api.js"
                                        onload="this.onload=function(){};HandleGoogleApiLibrary()"
                                        onreadystatechange="if (this.readyState === 'complete') this.onload()"></script>




                                    <div id="submit" class="modal-footer" style="text-align: center">
                                        <button class="btn btn-primary" type="submit" disabled>註冊</button>
                                        <button class="btn btn-secondary" type="reset">清除</button>
                                    </div>
                                    <!--  
                                         <div id="submit" class="modal-footer" style="text-align: center">
                                        <input name="login" class="btn btn-primary"  type="submit" value="登入" disabled> <input class="btn btn-secondary"
                                            type="reset" value="清除">
                                    </div>
                                    -->


                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle"
                aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle">登入</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form action="LoginMember.do" method="post">
                                <fieldset>





                                    <div class="form-group">
                                        <label for="usr">Name:</label>
                                        <input type="text" class="form-control" id="loginaccount"
                                            name="loginaccount"><span id="passowrd_msg"></span>
                                    </div>
                                    <div class="form-group">
                                        <label for="pwd">Password:</label>
                                        <input type="password" class="form-control" id="loginpassword"
                                            name="loginpassword"><span id="passowrd_msg"></span>
                                    </div>






                                    <div style="width: 90%;margin-left:30px">
                                        <button name="FaceBook" type="button" style="background-color: #0066FF"
                                            class="btn btn-facebook" onclick="FBLogin();">
                                            <i class="fab fa-facebook-f fa-lg"></i> Facebook登入
                                        </button>
                                        <button name="Google" type="button" style="background-color: #FF3333"
                                            class="btn btn-google" onclick="GoogleLogin();">
                                            <i class="fab fa-google-plus-g fa-lg"></i> Google登入
                                        </button>
                                    </div>
                                    <script async defer src="https://apis.google.com/js/api.js"
                                        onload="this.onload=function(){};HandleGoogleApiLibrary()"
                                        onreadystatechange="if (this.readyState === 'complete') this.onload()"></script>



                                    <div id="submit" class="modal-footer" style="text-align: center">
                                        <input name="login" class="btn btn-primary" type="submit" value="登入"> <input
                                            class="btn btn-secondary" name="fergetpwd" type="submit" value="忘記密碼">
                                    </div>


                                </fieldset>
                            </form>
                        </div>
                        <!--  
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">login</button>
                        </div>
                        -->
                    </div>
                </div>
            </div>
            <!-- responsive -->
            <div class="nav-switch">
                <i class="fa fa-bars"></i>
            </div>

            <c:choose>
                <c:when test="${sessionScope.account != Null}">
                    <!-- site menu -->
                    <nav class="main-menu">
                        <ul>
                            <li><a href="home.jsp">Home</a></li>
                            <li><a href="review.html">Games</a></li>
                            <li><a href="categories.html">Blog</a></li>
                            <li><a href="community.html">Forums</a></li>
                            <li><a href="contact.html">Contact</a></li>
                            <li><a href="contact.html">會員中心</a></li>
                        </ul>
                    </nav>
                </c:when>
                <c:otherwise>
                    <!-- site menu -->
                    <nav class="main-menu">
                        <ul>
                            <li><a href="home.jsp">Home</a></li>
                            <li><a href="review.html">Games</a></li>
                            <li><a href="categories.html">Blog</a></li>
                            <li><a href="community.html">Forums</a></li>
                            <li><a href="contact.html">Contact</a></li>
                        </ul>
                    </nav>
                </c:otherwise>
            </c:choose>















        </div>
    </header>
    <!-- Header section end -->
    <!-- Hero section -->
    <section class="hero-section">
        <div class="hero-slider owl-carousel">
            <div class="hs-item set-bg" data-setbg="Images/slider-1.jpg">
                <div class="hs-text">
                    <div class="container">
                        <h2>The Best <span>Games</span> Out There</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada <br> lorem maximus
                            mauris scelerisque, at rutrum nulla dictum. Ut ac ligula sapien. <br>Suspendisse cursus
                            faucibus finibus.</p>
                        <a href="#" class="site-btn">Read More</a>
                    </div>
                </div>
            </div>
            <div class="hs-item set-bg" data-setbg="Images/slider-2.jpg">
                <div class="hs-text">
                    <div class="container">
                        <h2>The Best <span>Games</span> Out There</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada <br> lorem maximus
                            mauris scelerisque, at rutrum nulla dictum. Ut ac ligula sapien. <br>Suspendisse cursus
                            faucibus finibus.</p>
                        <a href="#" class="site-btn">Read More</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero section end -->
    <!-- Latest news section -->
    <div class="latest-news-section">
        <div class="ln-title">重要消息</div>
        <div class="news-ticker">
            <div class="news-ticker-contant">
                <div class="nt-item"><span class="new">新聞</span> <a href="#">台灣獲得 LOL S2 冠軍</a></div>
                <div class="nt-item"><span class="strategy">重要訊息</span> <a href="#">LOL 即將倒閉</a></div>
                <div class="nt-item"><span class="racing">賽事</span><a href="#">台灣 練笑話 準決賽</a> </div>
                <div class="nt-item"><span class="racing">賽事</span><a href="#">台灣 講幹話 準決賽</a> </div>
                <div class="nt-item"><span class="racing">賽事</span><a href="#">台灣 講屁話 準決賽</a> </div>
            </div>
        </div>
    </div>
    <!-- Latest news section end -->
    <!-- Footer top section -->
    <section class="footer-top-section">
        <div class="container">
            <div class="footer-top-bg">
                <img src="Images/footer-top-bg.png" alt="">
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <div class="footer-logo text-white">
                        <img src="Images/footer-logo.png" alt="">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit ame.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="footer-widget mb-5 mb-md-0">
                        <h4 class="fw-title">人氣排行 <a style="font-size: 10px" href="#">看更多...</a></h4>
                        <div class="latest-blog">
                            <div class="lb-item">
                                <div class="lb-thumb set-bg" data-setbg="Images/latest-blog/1.jpg"></div>
                                <div class="lb-content">
                                    <div class="lb-date">PUBG</div>
                                    <p>昨日人氣：60000</p>
                                    <a href="#" class="lb-author">討論區</a>
                                </div>
                            </div>
                            <div class="lb-item">
                                <div class="lb-thumb set-bg" data-setbg="Images/latest-blog/2.jpg"></div>
                                <div class="lb-content">
                                    <div class="lb-date">殭屍生存</div>
                                    <p>昨日人氣：54000</p>
                                    <a href="#" class="lb-author">討論區</a>
                                </div>
                            </div>
                            <div class="lb-item">
                                <div class="lb-thumb set-bg" data-setbg="Images/latest-blog/2.jpg"></div>
                                <div class="lb-content">
                                    <div class="lb-date">殭屍生存</div>
                                    <p>昨日人氣：54000</p>
                                    <a href="#" class="lb-author">討論區</a>
                                </div>
                            </div>
                            <div class="lb-item">
                                <div class="lb-thumb set-bg" data-setbg="Images/latest-blog/2.jpg"></div>
                                <div class="lb-content">
                                    <div class="lb-date">殭屍生存</div>
                                    <p>昨日人氣：54000</p>
                                    <a href="#" class="lb-author">討論區</a>
                                </div>
                            </div>
                            <div class="lb-item">
                                <div class="lb-thumb set-bg" data-setbg="Images/latest-blog/3.jpg"></div>
                                <div class="lb-content">
                                    <div class="lb-date">魔獸世界</div>
                                    <p>昨日人氣：46000</p>
                                    <a href="#" class="lb-author">討論區</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="footer-widget">
                        <h4 class="fw-title">熱門文章</h4>
                        <div class="top-comment">
                            <div class="tc-item">
                                <div class="tc-thumb set-bg" data-setbg="Images/authors/1.jpg"></div>
                                <div class="tc-content">
                                    <p><a href="#">James Smith</a> <span>on</span> PUBG</p>
                                    <div class="tc-date">[問題] 怎樣才能變強阿?</div>
                                </div>
                            </div>
                            <div class="tc-item">
                                <div class="tc-thumb set-bg" data-setbg="Images/authors/2.jpg"></div>
                                <div class="tc-content">
                                    <p><a href="#">James Smith</a> <span>on</span> Lorem ipsum dolor sit amet, co</p>
                                    <div class="tc-date">June 21, 2018</div>
                                </div>
                            </div>
                            <div class="tc-item">
                                <div class="tc-thumb set-bg" data-setbg="Images/authors/3.jpg"></div>
                                <div class="tc-content">
                                    <p><a href="#">James Smith</a> <span>on</span> Lorem ipsum dolor sit amet, co</p>
                                    <div class="tc-date">June 21, 2018</div>
                                </div>
                            </div>
                            <div class="tc-item">
                                <div class="tc-thumb set-bg" data-setbg="Images/authors/4.jpg"></div>
                                <div class="tc-content">
                                    <p><a href="#">James Smith</a> <span>on</span> Lorem ipsum dolor sit amet, co</p>
                                    <div class="tc-date">June 21, 2018</div>
                                </div>
                            </div>
                            <div class="tc-item">
                                <div class="tc-thumb set-bg" data-setbg="Images/authors/4.jpg"></div>
                                <div class="tc-content">
                                    <p><a href="#">James Smith</a> <span>on</span> Lorem ipsum dolor sit amet, co</p>
                                    <div class="tc-date">June 21, 2018</div>
                                </div>
                            </div>
                            <div class="tc-item">
                                <div class="tc-thumb set-bg" data-setbg="Images/authors/4.jpg"></div>
                                <div class="tc-content">
                                    <p><a href="#">James Smith</a> <span>on</span> Lorem ipsum dolor sit amet, co</p>
                                    <div class="tc-date">June 21, 2018</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Footer top section end -->

    <!-- Feature section -->
    <section class="feature-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 p-0">
                    <div class="feature-item set-bg" data-setbg="Images/features/1.jpg">
                        <span class="cata new">new</span>
                        <div class="fi-content text-white">
                            <h5><a href="#">Suspendisse ut justo tem por, rutrum</a></h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
                            <a href="#" class="fi-comment">3 Comments</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 p-0">
                    <div class="feature-item set-bg" data-setbg="Images/features/2.jpg">
                        <span class="cata strategy">strategy</span>
                        <div class="fi-content text-white">
                            <h5><a href="#">Justo tempor, rutrum erat id, molestie</a></h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
                            <a href="#" class="fi-comment">3 Comments</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 p-0">
                    <div class="feature-item set-bg" data-setbg="Images/features/3.jpg">
                        <span class="cata new">new</span>
                        <div class="fi-content text-white">
                            <h5><a href="#">Nullam lacinia ex eleifend orci porttitor</a></h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
                            <a href="#" class="fi-comment">3 Comments</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 p-0">
                    <div class="feature-item set-bg" data-setbg="Images/features/4.jpg">
                        <span class="cata racing">racing</span>
                        <div class="fi-content text-white">
                            <h5><a href="#">Lacinia ex eleifend orci suscipit</a></h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
                            <a href="#" class="fi-comment">3 Comments</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Feature section end -->


    <!-- Recent game section  -->
    <section class="recent-game-section spad set-bg" data-setbg="Images/recent-game-bg.png">
        <div class="container">
            <div class="section-title">
                <div class="cata new">new</div>
                <h2>Recent Games</h2>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="recent-game-item">
                        <div class="rgi-thumb set-bg" data-setbg="Images/recent-game/1.jpg">
                            <div class="cata new">new</div>
                        </div>
                        <div class="rgi-content">
                            <h5>Suspendisse ut justo tem por, rutrum</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit amet, consectetur
                                elit. </p>
                            <a href="#" class="comment">3 Comments</a>
                            <div class="rgi-extra">
                                <div class="rgi-star"><img src="Images/icons/star.png" alt=""></div>
                                <div class="rgi-heart"><img src="Images/icons/heart.png" alt=""></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="recent-game-item">
                        <div class="rgi-thumb set-bg" data-setbg="Images/recent-game/2.jpg">
                            <div class="cata racing">racing</div>
                        </div>
                        <div class="rgi-content">
                            <h5>Susce pulvinar metus nulla, vel facilisis sem </h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit amet, consectetur
                                elit. </p>
                            <a href="#" class="comment">3 Comments</a>
                            <div class="rgi-extra">
                                <div class="rgi-star"><img src="Images/icons/star.png" alt=""></div>
                                <div class="rgi-heart"><img src="Images/icons/heart.png" alt=""></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="recent-game-item">
                        <div class="rgi-thumb set-bg" data-setbg="Images/recent-game/3.jpg">
                            <div class="cata adventure">Adventure</div>
                        </div>
                        <div class="rgi-content">
                            <h5>Suspendisse ut justo tem por, rutrum</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit amet, consectetur
                                elit. </p>
                            <a href="#" class="comment">3 Comments</a>
                            <div class="rgi-extra">
                                <div class="rgi-star"><img src="Images/icons/star.png" alt=""></div>
                                <div class="rgi-heart"><img src="Images/icons/heart.png" alt=""></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Recent game section end -->


    <!-- Tournaments section -->
    <section class="tournaments-section spad">
        <div class="container">
            <div class="tournament-title">Tournaments</div>
            <div class="row">
                <div class="col-md-6">
                    <div class="tournament-item mb-4 mb-lg-0">
                        <div class="ti-notic">Premium Tournament</div>
                        <div class="ti-content">
                            <div class="ti-thumb set-bg" data-setbg="Images/tournament/1.jpg"></div>
                            <div class="ti-text">
                                <h4>World Of WarCraft</h4>
                                <ul>
                                    <li><span>Tournament Beggins:</span> June 20, 2018</li>
                                    <li><span>Tounament Ends:</span> July 01, 2018</li>
                                    <li><span>Participants:</span> 10 teams</li>
                                    <li><span>Tournament Author:</span> Admin</li>
                                </ul>
                                <p><span>Prizes:</span> 1st place $2000, 2nd place: $1000, 3rd place: $500</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="tournament-item">
                        <div class="ti-notic">Premium Tournament</div>
                        <div class="ti-content">
                            <div class="ti-thumb set-bg" data-setbg="Images/tournament/2.jpg"></div>
                            <div class="ti-text">
                                <h4>DOOM</h4>
                                <ul>
                                    <li><span>Tournament Beggins:</span> June 20, 2018</li>
                                    <li><span>Tounament Ends:</span> July 01, 2018</li>
                                    <li><span>Participants:</span> 10 teams</li>
                                    <li><span>Tournament Author:</span> Admin</li>
                                </ul>
                                <p><span>Prizes:</span> 1st place $2000, 2nd place: $1000, 3rd place: $500</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Tournaments section bg -->


    <!-- Review section -->
    <section class="review-section spad set-bg" data-setbg="#">
        <div class="container">
            <div class="section-title">
                <div class="cata new">遊戲商城</div>
                <h2>熱門商品</h2>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="review-item">
                        <div class="review-cover set-bg" data-setbg="Images/review/1.jpg">
                            <div class="score yellow">9.3</div>
                        </div>
                        <div class="review-text">
                            <h5>Assasin’’s Creed</h5>
                            <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit ame.</p> -->
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="review-item">
                        <div class="review-cover set-bg" data-setbg="Images/review/2.jpg">
                            <div class="score purple">9.5</div>
                        </div>
                        <div class="review-text">
                            <h5>Doom</h5>
                            <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit ame.</p> -->
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="review-item">
                        <div class="review-cover set-bg" data-setbg="Images/review/3.jpg">
                            <div class="score green">9.1</div>
                        </div>
                        <div class="review-text">
                            <h5>Overwatch</h5>
                            <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit ame.</p> -->
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="review-item">
                        <div class="review-cover set-bg" data-setbg="Images/review/3.jpg">
                            <div class="score green">9.1</div>
                        </div>
                        <div class="review-text">
                            <h5>Overwatch</h5>
                            <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit ame.</p> -->
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="review-item">
                        <div class="review-cover set-bg" data-setbg="Images/review/3.jpg">
                            <div class="score green">9.1</div>
                        </div>
                        <div class="review-text">
                            <h5>Overwatch</h5>
                            <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit ame.</p> -->
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="review-item">
                        <div class="review-cover set-bg" data-setbg="Images/review/3.jpg">
                            <div class="score green">9.1</div>
                        </div>
                        <div class="review-text">
                            <h5>Overwatch</h5>
                            <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit ame.</p> -->
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="review-item">
                        <div class="review-cover set-bg" data-setbg="Images/review/3.jpg">
                            <div class="score green">9.1</div>
                        </div>
                        <div class="review-text">
                            <h5>Overwatch</h5>
                            <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit ame.</p> -->
                        </div>
                    </div>
                </div>


                <div class="col-lg-3 col-md-6">
                    <div class="review-item">
                        <div class="review-cover set-bg" data-setbg="Images/review/4.jpg">
                            <div class="score pink">$1300</div>
                        </div>
                        <div class="review-text">
                            <h5>GTA</h5>
                            <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit ame.</p> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Review section end -->





    <!-- Footer section -->
    <footer class="footer-section">
        <div class="container">
            <ul class="footer-menu">
                <li><a href="index.html">Home</a></li>
                <li><a href="review.html">Games</a></li>
                <li><a href="categories.html">Blog</a></li>
                <li><a href="community.html">Forums</a></li>
                <li><a href="contact.html">Contact</a></li>
            </ul>
            <p class="copyright">
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                Copyright &copy;
                <script>
                    document.write(new Date().getFullYear());
                </script> All rights reserved | This template is made with <i class="fa fa-heart-o"
                    aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
        </div>
    </footer>
    <!-- Footer section end -->


    <!--====== Javascripts & Jquery ======-->
    <script src="JS/jquery-3.2.1.min.js"></script>
    <script src="JS/bootstrap.min.js"></script>
    <script src="JS/owl.carousel.min.js"></script>
    <script src="JS/jquery.marquee.min.js"></script>
    <script src="JS/main.js"></script>
</body>


</html>