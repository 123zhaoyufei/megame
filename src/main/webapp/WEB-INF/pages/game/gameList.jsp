<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>游戏列表</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visual Box V2 Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
	<link href="/staticfile/css/list/bootstrap-list.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstrap-css -->
<!-- css -->
	<link rel="stylesheet" href="/staticfile/css/list/style-list.css" type="text/css" media="all" />
<!--// css -->
	<!--<script src="js/jquery-1.11.0.min.js"></script>-->

	<style type="text/css">
		#img{
			width:478px;
			height:420px;
		}

	</style>



</head>
<body>

	<%@include file="../head.jsp"%>

	<!-- header nav -->
	<div class="header-nav">
		<div class="container">
			<div class="header">


				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--//header nav-->
	<!--work-->
	<div id="portfolio" class="portfolio">
		<!-- Portfolio Starts Here -->
		<div class="portfolios entertain_box  wow fadeInUp" data-wow-delay="0.4s" id="project">
			<div id="portfoliolist">
				<c:forEach items="${games }" var="g">
					<div id="image" class="portfolio app mix_all"  style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">
							<a href="/toview.action?gId=${g.gId }" class="b-link-stripe b-animate-go   swipebox"  title="">
								<img id="img" class="img-responsive" src="${g.gPic }" />
								<div class="b-wrapper">
									<div class="b-animate b-from-left    b-delay03 ">
										<h2>&nbsp;&nbsp;</h2>
										<h2>${g.gName}</h2>
										<p></p>
										<img class="img-responsive" src="/staticfile/images/list/nnn.png" class="zoom" alt=""/>
									</div>

								</div></a>
						</div>
					</div>
				</c:forEach>


				<div class="clearfix"></div>
			</div>

		</div>
		<link rel="stylesheet" href="/staticfile/css/list/swipebox-list.css">
		<script src="/staticfile/js/list/jquery.swipebox.min-list.js"></script>
		<script type="text/javascript">
			jQuery(function($) {
				$(".swipebox").swipebox();
			});
		</script>



	</div>
	<!-- //work -->
	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-grids">


				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//footer-->
</body>
</html>