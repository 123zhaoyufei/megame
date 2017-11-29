<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zxx">



<!-- Head -->
<head>

<title>GAME</title>

<!-- Meta-Tags -->
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
<meta name="keywords" content="ME GAEME "/>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Meta-Tags -->

<!-- Custom-Stylesheet-Links -->
<!-- Bootstrap-CSS -->	  <link rel="stylesheet" href="/staticfile/css/bootstrap.min.css" type="text/css" media="all">
<!-- Index-Page-CSS -->	  <link rel="stylesheet" href="/staticfile/css/home/style.css" type="text/css" media="all">
<!-- Owl-Carousel-CSS --> <link rel="stylesheet" href="/staticfile/css/home/owl.carousel.css" type="text/css" media="all">
<!-- Chocolat-CSS -->	  <link rel="stylesheet" href="/staticfile/css/home/chocolat.css" type="text/css" media="all">
<!-- Animate-CSS -->	  <link rel="stylesheet" href="/staticfile/css/home/animate-custom.css" type="text/css" media="all">
<!-- //Custom-Stylesheet-Links -->

<!-- Fonts -->
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Montserrat:400,700"	   type="text/css" media="all">
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Roboto:400,100,300,500" type="text/css" media="all">
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Press+Start+2P"		   type="text/css" media="all">
	<script src="/staticfile/js/common.js"></script>
<!-- //Fonts -->

<!-- Font-Awesome-File-Links -->
<!-- CSS --> <link rel="stylesheet" href="/staticfile/css/home/font-awesome.min.css" type="text/css" media="all">
<!-- TTF --> <link rel="stylesheet" href="/staticfile/fonts/home/fontawesome-webfont.ttf" type="text/css" media="all">
<!-- //Font-Awesome-File-Links -->


</head>
<!-- //Head -->



<!-- Body -->
<body>



	<!-- Header -->
	<div class="agileheader" id="agileitshome">

		<!-- Navigation -->
		<div class="w3lsnavigation">
			<nav class="navbar navbar-inverse agilehover-effect wthreeeffect navbar-default">

				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Logo -->
					<div class="logo">
						<a class="navbar-brand logo-w3l button" href="index.jsp">ME GAME</a>
					</div>
					<!-- //Logo -->
				</div>

				<div id="navbar" class="navbar-collapse navbar-right collapse">
					<ul class="nav navbar-nav navbar-right cross-effect" id="cross-effect">
						<shiro:hasRole name="admin">
							<li><img src="/staticfile/background/Images/an1.png" onclick="formSubmit('background','_self');this.blur();" alt="no picture" style="height:35px;width:35px;"></li>
						</shiro:hasRole>

						<li><a  href="/home">首页</a></li>
						<li><a  href="list.action?gClass=0">网络游戏</a></li>
						<li><a href="list.action?gClass=1">单机游戏</a></li>
						<li><a  href="#" onclick="formSubmit('torank','_self');this.blur();">排行榜</a></li>
						<li><a class="scroll" href="#" onclick="formSubmit('tome','_self');this.blur();">关于我们</a></li>


						<li>

							<div id="line1">
								<div id="content">
									<c:if test="${sessionScope.loginUser!=null }" var="flag">
										<a href="#" >欢迎：${sessionScope.loginUser.userName}</a>
										&nbsp;&nbsp;|<a href="/logout.action">注销</a>
									</c:if>
									<c:if test="${!flag }" ><a href="/tologin.action">登录</a></c:if>
								</div>
							</div>
						</li>

					</ul>
				</div><!-- //Navbar-Collapse -->

			</nav>
		</div>
		<!-- //Navigation -->

		<!-- Slider -->
		<div class="slider">
			<ul class="rslides" id="slider">
				<li class="first-slide w3ls">
					<img src="/staticfile/images/home/slide-1.jpg" alt="me game">
					<!--<div class="heading">
						<h1>ME GAME</h1>
						<h2>FREE FULL GAMES</h2>
						<h3>A UNIQUE PLACE TO DOWNLOAD</h3>
					</div>-->
				</li>
				<li class="second-slide aits">
					<img src="/staticfile/images/home/slide-2.jpg" alt="ME GAME">
				</li>
				<li class="third-slide w3-agileits">
					<img src="/staticfile/images/home/slide-3.jpg" alt="ME GAME">
				</li>
				<li class="fourth-slide agileinfo">
					<img src="/staticfile/images/home/slide-4.jpg" alt="ME GAME">
				</li>
				<li class="fifth-slide wthree">
					<img src="/staticfile/images/home/slide-5.jpg" alt="ME GAME">
				</li>
			</ul>
		</div>
		<!-- //Slider -->

	</div>
	<!-- //Header -->



	<!--<!-- About -->
	<div class="w3lsaboutaits" id="w3lsaboutaits">
		<div class="container">
			<div class="w3lsaboutaits-grids">
				<div class="col-md-6 w3lsaboutaits-grid w3lsaboutaits-grid-1">
					<h3>从1000+游戏选择查看</h3>
					<p>ME GAME一家专门做游戏测评的网站，自2017年11月建站以来，已经陆续评测超过1000+游戏，我们提供最具特色的游戏资讯,最新最全的游戏介绍,大量游戏攻略,经验,评测文章,以及最新热门游戏资料专题</p>
				</div>
				<div class="col-md-6 w3lsaboutaits-grid w3lsaboutaits-grid-2">
					<img src="/staticfile/images/home/about.jpg" alt="ME GAME">
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>-->
	<!-- //About -->



	<!-- Platforms -->
	
	<div class="agileinfoplatforms" id="agileinfoplatforms">
		<div class="agileinfoplatformsgrids">
			<div class="col-md-3 w3agile_gallery_grid w3agile_gallery_grid1">
				<div class="w3agile_gallery_image">
					<figure>
						<img src="/staticfile/images/home/platform-1.jpg" alt="ME GAME" class="img-responsive">
						<figcaption>
							<h4>PC</h4>
							<p><span><img src="/staticfile/images/home/platform-1-icon.png" alt="ME GAME"></span></p>
						</figcaption>
					</figure>
				</div>
			</div>
			<div class="col-md-3 w3agile_gallery_grid w3agile_gallery_grid2">
				<div class="w3agile_gallery_image">
					<figure>
						<img src="/staticfile/images/home/platform-2.jpg" alt="ME GAME" class="img-responsive">
						<figcaption>
							<h4>Playstation</h4>
							<p><span><img src="/staticfile/images/home/platform-2-icon.png" alt="ME GAME"></span></p>
						</figcaption>
					</figure>
				</div>
			</div>
			<div class="col-md-3 w3agile_gallery_grid w3agile_gallery_grid3">
				<div class="w3agile_gallery_image">
					<figure>
						<img src="/staticfile/images/home/platform-3.jpg" alt="ME GAME" class="img-responsive">
						<figcaption>
							<h4>XBOX</h4>
							<p><span><img src="/staticfile/images/home/platform-3-icon.png" alt="ME GAME"></span></p>
						</figcaption>
					</figure>
				</div>
			</div>
			<div class="col-md-3 w3agile_gallery_grid w3agile_gallery_grid4">
				<div class="w3agile_gallery_image">
					<figure>
						<img src="/staticfile/images/home/platform-4.jpg" alt="ME GAME" class="img-responsive">
						<figcaption>
							<h4>WII</h4>
							<p><span><img src="/staticfile/images/home/platform-4-icon.png" alt="ME GAME"></span></p>
						</figcaption>
					</figure>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- //Platforms -->



	<!-- Tabs -->
	<div class="wthreetabsaits" id="wthreetabsaits">
		<section>
			<h3>游戏介绍</h3>
			<div class="tabs tabs-style-line">
				<nav class="container">
					<ul>
						<li><a href="#section-line-1"><span>POPULAR</span></a></li>
						<li><a href="#section-line-2"><span>NEW ARRIVALS</span></a></li>
						<li><a href="#section-line-3"><span>BEST SELLERS</span></a></li>
						<li><a href="#section-line-4"><span>EDITOR'S PICK</span></a></li>
					</ul>
				</nav>
				<div class="content-wrap">
					<section id="section-line-1">
						<div id="owl-demo" class="owl-carousel text-center">
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/popular-1.jpg" alt="ME GAME">
								</div>
								<h3>极限竞速 3</h3>
								<h4>2000+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/popular-2.jpg" alt="ME GAME">
								</div>
								<h3>辐射 4</h3>
								<h4>10000+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-half-o" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/popular-3.jpg" alt="ME GAME">
								</div>
								<h3>质量效应4</h3>
								<h4>9000+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-half-o" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/popular-4.jpg" alt="ME GAME">
								</div>
								<h3>全境封锁</h3>
								<h4>8700+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/popular-5.jpg" alt="ME GAME">
								</div>
								<h3>刺客信条3</h3>
								<h4>9900+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="/toview?gId=6">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/popular-6.jpg" alt="ME GAME">
								</div>
								<h3>上古卷轴</h3>
								<h4>6880+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-half-o" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/popular-7.jpg" alt="ME GAME">
								</div>
								<h3>看门狗</h3>
								<h4>5890+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/popular-8.jpg" alt="ME GAME">
								</div>
								<h3>泰坦陨落</h3>
								<h4>8000+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-half-o" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/popular-9.jpg" alt="ME GAME">
								</div>
								<h3>巫师3</h3>
								<h4>9500+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/popular-10.jpg" alt="ME GAME">
								</div>
								<h3>战地4</h3>
								<h4>10000+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
						</div>
					</section>
					<section id="section-line-2">
						<div id="owl-demo1" class="owl-carousel text-center">
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/new-1.jpg" alt="ME GAME">
								</div>
								<h3>使命召唤10：幽灵</h3>
								<h4>30000+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/new-2.jpg" alt="ME GAME">
								</div>
								<h3>真人快打X</h3>
								<h4>15000+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/new-3.jpg" alt="ME GAME">
								</div>
								<h3>激战2</h3>
								<h4>5300+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-half-o" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/new-4.jpg" alt="ME GAME">
								</div>
								<h3>英雄联盟</h3>
								<h4>974000+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="/toview?gId=1">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/new-5.jpg" alt="ME GAME">
								</div>
								<h3>伊甸园之子</h3>
								<h4>4570+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-half-o" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/new-6.jpg" alt="ME GAME">
								</div>
								<h3>黑暗之魂3</h3>
								<h4>7880+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/new-7.jpg" alt="ME GAME">
								</div>
								<h3>战舰世界</h3>
								<h4>4890+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/new-8.jpg" alt="ME GAME">
								</div>
								<h3>地铁2033</h3>
								<h4>9070+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-half-o" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/new-9.jpg" alt="ME GAME">
								</div>
								<h3>DOTA 2</h3>
								<h4>750000+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-half-o" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="/toview?gId=11">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/new-10.jpg" alt="ME GAME">
								</div>
								<h3>魔兽世界</h3>
								<h4>200000+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="/toview?gId=5">详情</a>
								</div>
							</div>
						</div>
					</section>
					<section id="section-line-3">
						<div id="owl-demo2" class="owl-carousel text-center">
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/best-1.jpg" alt="ME GAME">
								</div>
								<h3>蝙蝠侠：阿卡姆 </h3>
								<h4>2000+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/best-2.jpg" alt="ME GAME">
								</div>
								<h3>古墓丽影：崛起</h3>
								<h4>150000+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/best-3.jpg" alt="ME GAME">
								</div>
								<h3>潜行者2</h3>
								<h4>5300+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-half-o" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/best-4.jpg" alt="ME GAME">
								</div>
								<h3>我的世界</h3>
								<h4>974000+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/best-5.jpg" alt="ME GAME">
								</div>
								<h3>死侍</h3>
								<h4>4570+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-half-o" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/best-6.jpg" alt="ME GAME">
								</div>
								<h3>坦克世界</h3>
								<h4>78800+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/best-7.jpg" alt="ME GAME">
								</div>
								<h3>孤岛危机3</h3>
								<h4>4890+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/best-8.jpg" alt="ME GAME">
								</div>
								<h3>杀手</h3>
								<h4>9070+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-half-o" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/best-9.jpg" alt="ME GAME">
								</div>
								<h3>使命召唤11</h3>
								<h4>75000+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-half-o" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/best-10.jpg" alt="ME GAME">
								</div>
								<h3>毁灭战士</h3>
								<h4>20000+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
						</div>
					</section>
					<section id="section-line-4">
						<div id="owl-demo3" class="owl-carousel text-center">
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/editor-1.jpg" alt="ME GAME">
								</div>
								<h3>GT赛车6</h3>
								<h4>30000+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/editor-2.jpg" alt="ME GAME">
								</div>
								<h3>飙酷车神</h3>
								<h4>1000+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-half-o" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/editor-3.jpg" alt="ME GAME">
								</div>
								<h3>神力科莎</h3>
								<h4>9000+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-half-o" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/editor-4.jpg" alt="ME GAME">
								</div>
								<h3>赛车计划</h3>
								<h4>8740+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/editor-5.jpg" alt="ME GAME">
								</div>
								<h3>暗黑破坏神3</h3>
								<h4>99700+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/editor-6.jpg" alt="ME GAME">
								</div>
								<h3>生化奇兵3：无限</h3>
								<h4>6880+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-half-o" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/editor-7.jpg" alt="ME GAME">
								</div>
								<h3>中土世界：暗影魔多</h3>
								<h4>5890+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/editor-8.jpg" alt="ME GAME">
								</div>
								<h3>最后生还者</h3>
								<h4>8000+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-half-o" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/editor-9.jpg" alt="ME GAME">
								</div>
								<h3>细胞分裂</h3>
								<h4>9500+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
							<div class="item">
								<div class="agileinfoitem-image">
									<img src="/staticfile/images/home/editor-10.jpg" alt="ME GAME">
								</div>
								<h3>彩虹六号</h3>
								<h4>100000+ Comments</h4>
								<div class="wthreeratingaits">
									<ul>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
										<li><i class="fa fa-star" aria-hidden="true"></i></li>
									</ul>
								</div>
								<div class="wthreeitemdownload">
									<a href="#">详情</a>
								</div>
							</div>
						</div>
					</section>
				</div><!-- /content -->
			</div><!-- /tabs -->
		</section>
	</div>
	<!-- //Tabs -->



	<!-- Blogs -->
	<div class="wthreeblogsaits" id="wthreeblogsaits">
		<div class="wthreeblogsaits-grids">

			<h3>游戏产品</h3>
			<div class="col-md-3 wthreeblogsaits-grid wthreeblogsaits-grid-1">
				<a href="#" data-toggle="modal" data-target="#myModal1"><img src="/staticfile/images/home/blog-1.jpg" alt="ME GAME"></a>
				<span class="w3date">10-10-2016</span>
				<h4><a href="#" data-toggle="modal" data-target="#myModal1">NVIDIA TITAN X</a></h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.</p>
				<button class="btn btn-primary" data-toggle="modal" data-target="#myModal1">READ MORE<i class="fa fa-arrow-right" aria-hidden="true"></i></button>
			</div>
			<div class="col-md-3 wthreeblogsaits-grid wthreeblogsaits-grid-2">
				<a href="#" data-toggle="modal" data-target="#myModal2"><img src="/staticfile/images/home/blog-2.jpg" alt="ME GAME"></a>
				<span class="w3date">15-10-2016</span>
				<h4><a href="#" data-toggle="modal" data-target="#myModal2">PS4 VR HEADSET</a></h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.</p>
				<button class="btn btn-primary" data-toggle="modal" data-target="#myModal2">READ MORE<i class="fa fa-arrow-right" aria-hidden="true"></i></button>
			</div>
			<div class="col-md-3 wthreeblogsaits-grid wthreeblogsaits-grid-3">
				<a href="#" data-toggle="modal" data-target="#myModal3"><img src="/staticfile/images/home/blog-3.jpg" alt="ME GAME"></a>
				<span class="w3date">20-10-2016</span>
				<h4><a href="#" data-toggle="modal" data-target="#myModal3">ACCESSORIES FOR XBOX</a></h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.</p>
				<button class="btn btn-primary" data-toggle="modal" data-target="#myModal3">READ MORE<i class="fa fa-arrow-right" aria-hidden="true"></i></button>
			</div>
			<div class="col-md-3 wthreeblogsaits-grid wthreeblogsaits-grid-4">
				<a href="#" data-toggle="modal" data-target="#myModal4"><img src="/staticfile/images/home/blog-4.jpg" alt="ME GAME"></a>
				<span class="w3date">25-10-2016</span>
				<h4><a href="#" data-toggle="modal" data-target="#myModal4">NEW SUPER MARIO BROS!</a></h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.</p>
				<button class="btn btn-primary" data-toggle="modal" data-target="#myModal4">READ MORE<i class="fa fa-arrow-right" aria-hidden="true"></i></button>
			</div>
			<div class="clearfix"></div>
		</div>

		<!-- Tooltip-Content -->
		<div class="tooltip-content">

			<div class="modal fade details-modal" id="myModal1" tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							<h4 class="modal-title">NVIDIA TITAN X</h4>
						</div>
						<div class="modal-body">
							<img src="/staticfile/images/home/blog-1.jpg" alt="ME GAME">
							<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
						</div>
					</div>
				</div>
			</div>

			<div class="modal fade details-modal" id="myModal2" tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							<h4 class="modal-title">PS4 VR HEADSET</h4>
						</div>
						<div class="modal-body">
							<img src="/staticfile/images/home/blog-2.jpg" alt="ME GAME">
							<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
						</div>
					</div>
				</div>
			</div>

			<div class="modal fade details-modal" id="myModal3" tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							<h4 class="modal-title">ACCESSORIES FOR XBOX</h4>
						</div>
						<div class="modal-body">
							<img src="/staticfile/images/home/blog-3.jpg" alt="ME GAME">
							<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
						</div>
					</div>
				</div>
			</div>

			<div class="modal fade details-modal" id="myModal4" tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							<h4 class="modal-title">NEW SUPER MARIO BROS!</h4>
						</div>
						<div class="modal-body">
							<img src="/staticfile/images/home/blog-3.jpg" alt="ME GAME">
							<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
						</div>
					</div>
				</div>
			</div>

		</div>
		<!-- //Tooltip-Content -->

	</div>
	<!-- //Blogs -->



	<!-- Portfolio -->
	<div class="w3portfolioaits" id="w3portfolioaits">
	<h3>图片展示</h3>
		<div class="w3portfolioaits-items">
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-1">
				<a class="example-image-link" href="/staticfile/images/home/popular-1.jpg" data-lightbox="example-set" data-title="">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="/staticfile/images/home/popular-1.jpg" alt="ME GAME">
								<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-2">
				<a class="example-image-link" href="/staticfile/images/home/editor-1.jpg" data-lightbox="example-set" data-title="">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="/staticfile/images/home/editor-1.jpg" alt="ME GAME">
								<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-3">
				<a class="example-image-link" href="/staticfile/images/home/editor-2.jpg" data-lightbox="example-set" data-title="">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="/staticfile/images/home/editor-2.jpg" alt="ME GAME">
								<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-4">
				<a class="example-image-link" href="/staticfile/images/home/editor-3.jpg" data-lightbox="example-set" data-title="">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="/staticfile/images/home/editor-3.jpg" alt="ME GAME">
								<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-5">
				<a class="example-image-link" href="/staticfile/images/home/editor-4.jpg" data-lightbox="example-set" data-title="">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="/staticfile/images/home/editor-4.jpg" alt="ME GAME">
								<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-6">
				<a class="example-image-link" href="/staticfile/images/home/editor-9.jpg" data-lightbox="example-set" data-title="">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="/staticfile/images/home/editor-9.jpg" alt="ME GAME">
								<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-7">
				<a class="example-image-link" href="/staticfile/images/home/best-8.jpg" data-lightbox="example-set" data-title="">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="/staticfile/images/home/best-8.jpg" alt="ME GAME">
								<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-8">
				<a class="example-image-link" href="/staticfile/images/home/best-6.jpg" data-lightbox="example-set" data-title="">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="/staticfile/images/home/best-6.jpg" alt="ME GAME">
								<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-9">
				<a class="example-image-link" href="/staticfile/images/home/new-1.jpg" data-lightbox="example-set" data-title="">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="/staticfile/images/home/new-1.jpg" alt="ME GAME">
								<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-9">
				<a class="example-image-link" href="/staticfile/images/home/new-7.jpg" data-lightbox="example-set" data-title="">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="/staticfile/images/home/new-7.jpg" alt="ME GAME">
								<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-9">
				<a class="example-image-link" href="/staticfile/images/home/new-8.jpg" data-lightbox="example-set" data-title="">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="/staticfile/images/home/new-8.jpg" alt="ME GAME">
								<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-9">
				<a class="example-image-link" href="/staticfile/images/home/popular-10.jpg" data-lightbox="example-set" data-title="">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="/staticfile/images/home/popular-10.jpg" alt="ME GAME">
								<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="clearfix"></div>
		</div>

	</div>
	<!-- //Portfolio -->



	<!-- Stats -->
	<div class="w3lsstatsaits" id="w3lsstatsaits">
		<div class="container">

			<div class="w3lsstatsaits-info">
				<div class="col-md-3 w3lsstatsaits-grid w3lsstatsaits-grid-1">
					<div class="w3lsstatsaits-img">
						<img src="/staticfile/images/home/stats-1.png" alt="Corsa Racer">
					</div>
					<div class="w3lsstatsaitsstats counter" data-slno='1' data-min='0' data-max='10000' data-delay='5' data-increment=4>10000</div>
					<p>Games</p>
				</div>
				<div class="col-md-3 w3lsstatsaits-grid w3lsstatsaits-grid-2">
					<div class="w3lsstatsaits-img">
						<img src="/staticfile/images/home/stats-2.png" alt="Corsa Racer">
					</div>
					<div class="w3lsstatsaitsstats counter" data-slno='1' data-min='0' data-max='1657033000' data-delay='5' data-increment="1">1657033000</div>
					<p>Downloads</p>
				</div>
				<div class="col-md-3 w3lsstatsaits-grid w3lsstatsaits-grid-3">
					<div class="w3lsstatsaits-img">
						<img src="/staticfile/images/home/stats-3.png" alt="Corsa Racer">
					</div>
					<div class="w3lsstatsaitsstats counter" data-slno='1' data-min='0' data-max='192000' data-delay='5' data-increment="11">192000</div>
					<p>Followers</p>
				</div>
				<div class="col-md-3 w3lsstatsaits-grid w3lsstatsaits-grid-4">
					<div class="w3lsstatsaits-img">
						<img src="/staticfile/images/home/stats-4.png" alt="Corsa Racer">
					</div>
					<div class="w3lsstatsaitsstats counter" data-slno='1' data-min='0' data-max='71600' data-delay='5' data-increment="1">71600</div>
					<p>Online Gamers</p>
				</div>
				<div class="clearfix"></div>
			</div>

		</div>
	</div>
	<!-- //Stats -->



	<!-- Partners -->
	<div class="aitspartnersw3l">
		<div id="owl-demo4" class="owl-carousel text-center">
			<div class="item">
				<img src="/staticfile/images/home/partner-1.jpg" alt="ME GAME">
			</div>
			<div class="item">
				<img src="/staticfile/images/home/partner-2.jpg" alt="ME GAME">
			</div>
			<div class="item">
				<img src="/staticfile/images/home/partner-3.jpg" alt="ME GAME">
			</div>
			<div class="item">
				<img src="/staticfile/images/home/partner-4.jpg" alt="ME GAME">
			</div>
			<div class="item">
				<img src="/staticfile/images/home/partner-5.jpg" alt="ME GAME">
			</div>
			<div class="item">
				<img src="/staticfile/images/home/partner-6.jpg" alt="ME GAME">
			</div>
			<div class="item">
				<img src="/staticfile/images/home/partner-7.jpg" alt="ME GAME">
			</div>
			<div class="item">
				<img src="/staticfile/images/home/partner-8.jpg" alt="ME GAME">
			</div>
			<div class="item">
				<img src="/staticfile/images/home/partner-9.jpg" alt="ME GAME">
			</div>
			<div class="item">
				<img src="/staticfile/images/home/partner-10.jpg" alt="ME GAME">
			</div>
			<div class="item">
				<img src="/staticfile/images/home/partner-11.jpg" alt="ME GAME">
			</div>
			<div class="item">
				<img src="/staticfile/images/home/partner-12.jpg" alt="ME GAME">
			</div>
			<div class="item">
				<img src="/staticfile/images/home/partner-13.jpg" alt="ME GAME">
			</div>
			<div class="item">
				<img src="/staticfile/images/home/partner-14.jpg" alt="ME GAME">
			</div>
			<div class="item">
				<img src="/staticfile/images/home/partner-15.jpg" alt="ME GAME">
			</div>
			<div class="item">
				<img src="/staticfile/images/home/partner-16.jpg" alt="ME GAME">
			</div>
			<div class="item">
				<img src="/staticfile/images/home/partner-17.jpg" alt="ME GAME">
			</div>
			<div class="item">
				<img src="/staticfile/images/home/partner-18.jpg" alt="ME GAME">
			</div>
			<div class="item">
				<img src="/staticfile/images/home/partner-19.jpg" alt="ME GAME">
			</div>
			<div class="item">
				<img src="/staticfile/images/home/partner-20.jpg" alt="ME GAME">
			</div>
		</div>
	</div>
	<!-- //Partners -->







	<!-- Contact -->
	<div class="agilecontactw3ls" id="agilecontactw3ls">
		<div class="container">
			<h3>反馈意见：</h3>
			<form action="#" method="post">
				<div class="col-md-6 agilecontactw3ls-grid agilecontactw3ls-grid-1">
					<input type="text" Name="First Name" placeholder="姓名" required="">
					<input type="text" Name="Last Name" placeholder="手机号码" required="">
					<input type="email" Name="Email" placeholder="EMAIL" required="">
				</div>
				<div class="col-md-6 agilecontactw3ls-grid agilecontactw3ls-grid-2">
					<textarea name="Message" placeholder="MESSAGE" required=""></textarea>
					<div class="send-button">
						<input type="submit" value="提交">
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- //Contact -->



	<!-- Footer -->
	<div class="agilefooterwthree" id="agilefooterwthree">
		<div class="container">

			<div class="agilefooterwthree-grids">
				<div class="col-md-3 agilefooterwthree-grid agilefooterwthree-grid1">
					<h4>信息</h4>
					<ul>
						<li><a href="#">SPECIALS</a></li>
						<li><a href="#">NEW PRODUCTS</a></li>
						<li><a href="#">TOP SELLERS</a></li>
						<li><a href="#">BLOGS</a></li>
						<li><a href="#">REVIEWS</a></li>
						<li><a href="#">NEWS</a></li>
					</ul>
				</div>
				<div class="col-md-3 agilefooterwthree-grid agilefooterwthree-grid2">
					<h4>类别</h4>
					<ul>
						<li><a href="#">GAME GENRES</a></li>
						<li><a href="#">PC GAMES</a></li>
						<li><a href="#">PLAYSTATION GAMES</a></li>
						<li><a href="#">XBOX GAMES</a></li>
						<li><a href="#">WII GAMES</a></li>
						<li><a href="#">ALL GAMES</a></li>
					</ul>
				</div>
				<div class="col-md-3 agilefooterwthree-grid agilefooterwthree-grid3">
					<h4>我的账户</h4>
					<ul>
						<li><a href="#">MY ACCOUNT</a></li>
						<li><a href="#">MY ORDERS</a></li>
						<li><a href="#">MY DOWNLOADS</a></li>
						<li><a href="#">EDIT PROFILE</a></li>
						<li><a href="#">CHANGE PASSWORD</a></li>
						<li><a href="#">DONATE</a></li>
					</ul>
				</div>
				<div class="col-md-3 agilefooterwthree-grid agilefooterwthree-grid4">
					<h4>联系我们</h4>
					<address>
						<ul>
							<li>邮编：10086</li>
							<li>新吴区国家软件园</li>
							<li>巨蟹座C栋6楼</li>
							<li>Wuxi China</li>
							<li>+1 222 333 444</li>
							<li><a class="mail" href="123456789@qq.com">123456789@qq.com</a></li>
						</ul>
					</address>
				</div>
				<div class="clearfix"></div>
			</div>

			<div class="agilefooterwthreebottom">
				<div class="col-md-6 agilefooterwthreebottom-grid agilefooterwthreebottom-grid1">
					<div class="copyright">
						<p>2017 ME GAME</p>
					</div>
				</div>
				<div class="col-md-6 agilefooterwthreebottom-grid agilefooterwthreebottom-grid2">
					<div class="agilesocialwthree">
						<ul class="social-icons">
							<li><a href="#" class="facebook w3ls" title="Go to Our Facebook Page"><i class="fa w3ls fa-facebook-square" aria-hidden="true"></i></a></li>
							<li><a href="#" class="twitter w3l" title="Go to Our Twitter Account"><i class="fa w3l fa-twitter-square" aria-hidden="true"></i></a></li>
							<li><a href="#" class="googleplus w3" title="Go to Our Google Plus Account"><i class="fa w3 fa-google-plus-square" aria-hidden="true"></i></a></li>
							<li><a href="#" class="instagram wthree" title="Go to Our Instagram Account"><i class="fa wthree fa-instagram" aria-hidden="true"></i></a></li>
							<li><a href="#" class="youtube w3layouts" title="Go to Our Youtube Channel"><i class="fa w3layouts fa-youtube-square" aria-hidden="true"></i></a></li>
						</ul>
					</div>
				</div>
			</div>

		</div>

		<a href="#agileitshome" class="agileto-top scroll" title="To Top"><img src="/staticfile/images/home/to-top.png" alt="ME GAME"></a>

	</div>
	<!-- //Footer -->



	<!-- Custom-JavaScript-File-Links -->

		<!-- Default-JavaScript -->   <script type="text/javascript" src="/staticfile/js/home/jquery-2.1.4.min.js"></script>
		<!-- Bootstrap-JavaScript --> <script type="text/javascript" src="/staticfile/js/home/bootstrap.min.js"></script>

		<!-- Resopnsive-Slider-JavaScript -->
			<script src="/staticfile/js/home/responsiveslides.min.js"></script>
			<script>
				$(function () {
					$("#slider").responsiveSlides({
						auto: true,
						nav: true,
						speed: 2000,
						namespace: "callbacks",
						pager: true,
					});
				});
			</script>
		<!-- //Resopnsive-Slider-JavaScript -->

		<!-- Tab-JavaScript -->
			<script src="/staticfile/js/home/cbpFWTabs.js"></script>
			<script>
				(function() {
					[].slice.call( document.querySelectorAll( '.tabs' ) ).forEach( function( el ) {
						new CBPFWTabs( el );
					});
				})();
			</script>
		<!-- //Tab-JavaScript -->

		<!-- Owl-Carousel-JavaScript -->
			<script src="/staticfile/js/home/owl.carousel.js"></script>
			<script>
				$(document).ready(function() {
					$("#owl-demo, #owl-demo1, #owl-demo2, #owl-demo3, #owl-demo4").owlCarousel({
						autoPlay: 3000,
						items : 5,
						itemsDesktop : [1024,4],
						itemsDesktopSmall : [414,3]
					});
				});
			</script>
		<!-- //Owl-Carousel-JavaScript -->

		<!-- Stats-Number-Scroller-Animation-JavaScript -->
			<script src="/staticfile/js/home/waypoints.min.js"></script>
			<script src="/staticfile/js/home/counterup.min.js"></script>
			<script>
				jQuery(document).ready(function( $ ) {
					$('.counter').counterUp({
						delay: 10,
						time: 1000
					});
				});
			</script>
		<!-- //Stats-Number-Scroller-Animation-JavaScript -->

		<!-- Popup-Box-JavaScript -->
			<script src="/staticfile/js/home/jquery.chocolat.js"></script>
			<script type="text/javascript">
				$(function() {
					$('.w3portfolioaits-item a').Chocolat();
				});
			</script>
		<!-- //Popup-Box-JavaScript -->

		<!-- Smooth-Scrolling-JavaScript -->
			<script type="text/javascript">
				jQuery(document).ready(function($) {
					$(".scroll").click(function(event){
						event.preventDefault();
						$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
					});
				});
			</script>
		<!-- //Smooth-Scrolling-JavaScript -->

	<!-- //Custom-JavaScript-File-Links -->



</body>
<!-- //Body -->



</html>