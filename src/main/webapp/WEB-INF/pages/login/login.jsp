<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2017/11/25
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <title>登录&注册界面</title>
    <!-- for-mobile-apps -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="keywords" content="Tab Form Widget Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <!-- //for-mobile-apps -->
    <link href="//fonts.googleapis.com/css?family=Titillium+Web:200,200i,300,300i,400,400i,600,600i,700,700i,900" rel="stylesheet">
    <link href="/staticfile/css/login/font-awesome.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/staticfile/css/login/style.css" rel="stylesheet" type="text/css" media="all" />
    <script src="/staticfile/js/login/jquery-2.1.4.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/staticfile/css/login/raccordion.css" />
    <script type="text/javascript">
        $(window).load(function () {
            $('#accordion-wrapper').raccordion({
                speed: 1000,
                sliderWidth: 700,
                sliderHeight: 300,
                autoCollapse: false
            });

        });
    </script>
</head>
<body>
<div class="content" id="Main-Content">
    <h1 class="w3_agileits-head"><span>W</span>elcome <span>T</span>o <span>M</span>E <span>G</span>AME</h1>
    <div class="wrapper">
        <div id="accordion-wrapper">
            <div class="slide">
                <img src="/staticfile/images/login/2.jpg" alt="image"/>
                <div class="caption">
                    <div class="w3layouts-info">
                        <div class="w3layouts-info-top">
                            <h3>Sign In</h3>
                        </div>
                        <div class="usernameerror">
                            <h5><fonts style="color:white">${errorInfo }</fonts></h5>
                        </div>
                        <div class="w3layouts-info-bottom">
                            <form action="/login.action" method="post" class="agile_form">
                                <input type="text" name="username" required="required" placeholder="username"/>
                                <input type="password" name="password" required="required" class="password" placeholder="Password"/>
                                <div class="w3ls-signin-bottom">
                                    <div class="agile-login">
                                        <input type="submit" value="SignIn" />
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="slide">
                <img src="/staticfile/images/login/1.jpg" alt="image"/>
                <div class="caption">
                    <div class="w3layouts-info">
                        <div class="w3layouts-info-top">
                            <h3>Sign Up</h3>
                            <h5 style="color:white">${info }</h5>
                        </div>


                        <div class="w3layouts-info-bottom">
                            <form action="/regist" method="post" class="agile_form">
								<input type="text" name="userUsername" required="required" placeholder="Username" />
								<input type="password" name="userPassword" required="required" class="password" placeholder="Password"/>
								<input type="text" name="userName" required="required" class="password" placeholder="Name"/>
				  				<input type="submit"  value="SignUp" />
							</form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="slide">
                <img src="/staticfile/images/login/3.jpg" alt="image" />
                <div class="caption">
                    <div class="caption">
                        <div class="w3layouts-info">
                            <div class="w3layouts-info-top">
                                <h3>Sign Out</h3>
                            </div>
                            <div class="w3layouts-info-bottom">

                                <h2 class="agileits-text">Signed out successfully!</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!--copyright-->
    <div class="w3ls-copyright">
        <p>© 2017 Tab Form Widget.All Rights Reserved | Design by <a href="http://www.baidu.com/" target="_blank">ME GAME</a> </p>
    </div>
    <!--//copyright-->
</div>
<script src="/staticfile/js/login/jquery.raccordion.js" type="text/javascript"></script>
<script src="/staticfile/js/login/jquery.animation.easing.js" type="text/javascript"></script>
</body>
</html>

