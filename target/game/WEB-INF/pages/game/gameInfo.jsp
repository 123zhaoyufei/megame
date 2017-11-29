<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
		<title>游戏详情</title>
		<link rel="stylesheet" href="/staticfile/css/home/style1.css" type="text/css" media="all" />
		<!--[if IE 6]>
			<link rel="stylesheet" href="/staticfile/css/home/ie6-style1.css" type="text/css" media="all" />
		<![endif]-->
		<script src="/staticfile/js/home/fns.js" type="text/javascript"></script>
		<link rel="stylesheet" href="/staticfile/css/home/gameinfo.css" type="text/css" media="all" />

		<script type="text/javascript" src="/staticfile/js/home/jquery-1.11.3.min.js"></script>
		<script>
			$(function(){
				var count = 0;
				var $li = $("#slider1>ul>li");
				$(".next1").click(function(){
					count++;
					if(count == $li.length){
						count =0;
					}
					$li.eq(count).fadeIn().siblings().fadeOut();
					$(".slider_icon1 i").eq(count).addClass("btn_act1").siblings().removeClass('btn_act1');
					console.log(count);
				});
				$(".prve1").click(function(){
					count--;
					if(count == -1){
						count = $li.length-1;
					}
					console.log(count);
					$li.eq(count).fadeIn().siblings().fadeOut();
					$(".slider_icon1 i").eq(count).addClass("btn_act1").siblings().removeClass('btn_act1');
				});
				$(".slider_icon1 i").mouseenter(function(){
					$(this).addClass('btn_act1').siblings().removeClass("btn_act1");
					$li.eq($(this).index()).fadeIn().siblings().fadeOut();
					count = $(this).index();
				});
			});
		</script>
		<style>
			.pic{
				width: 638px; height: 357px;
			}
		</style>
	</head>
	<body>
		<!-- Page -->
		<div id="page" class="shell">
			<!-- Header -->
			<div id="header">
				<!-- Top Navigation -->
				
				<!-- / Top Navigation -->
				<div class="cl">&nbsp;</div>
				<!-- Logo -->
				<div id="logo">
					<h1><a href="#">ME<span>GAME</span></a></h1>
					
				</div>
				<!-- / Logo -->
				<!-- Main Navigation -->
				
				<!-- / Main Navigation -->
				<div class="cl">&nbsp;</div>
				<!-- Sort Navigation -->
				<div id="sort-nav">
					<div class="bg-right">
						<div class="bg-left">
							<div class="cl">&nbsp;</div>
							<ul>
							    <li class="first-active"><a href="/index.jsp">首页</a><span class="sep">&nbsp;</span></li>
							    <li><a href="/list?gClass=0">网络游戏 </a><span class="sep">&nbsp;</span></li>
							    <li><a href="/list?gClass=1">单机游戏</a><span class="sep">&nbsp;</span></li>
							    <li><a href="/torank">排行榜</a><span class="sep">&nbsp;</span></li>
							    <li><a href="/tome">关于我们</a><span class="sep">&nbsp;</span></li>
					
							</ul>
							<div class="cl">&nbsp;</div>
						</div>
					</div>
				</div>
				<!-- / Sort Navigation -->
			</div>
			<!-- / Header -->
			<!-- Main -->
			<div id="main">
				<div id="main-bot">
					<div class="cl">&nbsp;</div>
					<!-- Content -->
					<div id="content">
						<div class="block">
							<div class="block-bot">
								<div class="block-cnt">
									<div id="slider">
										<div class="holder">
											<div class="content">
												<ul>
												    <li class="fragment">
														<div id="slider1">
															<ul class="slider_list1">
																<c:forEach items="${gameInfo.pictures}" var="picture" varStatus="status">
																	<li><a href="#"><img class="pic" src="${picture.picPath}" alt="图片不存在" /></a></li>
																</c:forEach>
															</ul>
															<div class="slider_icon1">
																<i class="btn1 btn_act1"></i>
																<c:forEach items="${gameInfo.pictures}" begin="1" var="picture" varStatus="status">
																	<i class="btn1"></i>
																</c:forEach>
															</div>
															<a href="javascript:;" class="arrow1 prve1">
																<span class="slider_left1"></span>
															</a>
															<a href="javascript:;" class="arrow1 next1">
																<span class="slider_right1"></span>
															</a>
														</div>

												    	<div class="cnt">
												    		<div class="cl">&nbsp;</div>
												    		<div class="side-a">
												    			<h4>${gameInfo.game.gName}</h4>
												    			<ul class="rating">
												    			    <li><span class="star full-star">&nbsp;</span></li>
												    			    <li><span class="star full-star">&nbsp;</span></li>
												    			    <li><span class="star full-star">&nbsp;</span></li>
												    			    <li><span class="star full-star">&nbsp;</span></li>
												    			    <li><span class="star empty-star">&nbsp;</span></li>
												    			    <li><span class="votes">1.456 votes</span></li>
												    			</ul>
												    		</div>
												    		<div class="cl">&nbsp;</div>
												    	</div>
												    </li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="block">
							<div class="block-bot">
								<div class="head">
									<div class="head-cnt">
										<h3>简介</h3>
											
										<div class="cl">&nbsp;</div>
									</div>
								</div>
								<div class="col-articles articles">
									<div class="cl">&nbsp;</div>
										<p class="console"><strong>&nbsp;&nbsp;${gameInfo.introduction}</strong></p>
									<div class="cl">&nbsp;</div>
								</div>
							</div>
						</div>
						<div class="block">
							<div class="block-bot">
								<div class="head">
									<div class="head-cnt">
										<h3>用户评论&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a style="color:#0d0d0d;" href="/comment?infoId=${gameInfo.game.gId}">查看更多评论</a></h3>
										<div class="cl">&nbsp;</div>
									</div>
								</div>
								<c:forEach items="${gameInfo.comments}" var="com" varStatus="status" begin="0" end="2">
									<div class="article">
										<div class="cnt">
											<h2>${gameInfo.game.gName}</h2>
											<h3>&nbsp;&nbsp;&nbsp;&nbsp;${com.content}</h3>
											<h2 style="color: #754;margin: 0 0 0 480px;">${com.user.name}&nbsp;&nbsp;&nbsp;&nbsp;<fmt:formatDate value="${com.time}" pattern="yyyy-MM-dd"/></h2>
										</div>
										<div class="cl">&nbsp;</div>
									</div>
								</c:forEach>
									<div class="cl">&nbsp;</div>
								</div>
							</div>
						</div>
					</div>
					<!-- / Content -->
					<!--  -->
					<div id="sidebar">
						<!-- Search -->
						<div id="search" class="block">
							<div class="block-bot">
								<div class="block-cnt">
									<form action="" method="post">
										<div class="cl">&nbsp;</div>
										<div class="fieldplace">
											<input type="text" class="field" value="搜索" title="搜索" />
										</div>
										<input type="submit" class="button" value="GO" />
										<div class="cl">&nbsp;</div>
									</form>
								</div>
							</div>
						</div>
						<!-- / Search -->
						<!-- Sign In -->
						<div id="sign" class="block">
							<div class="block-bot">
								<div class="block-cnt">
									<div class="cl">&nbsp;</div>
									<a href="/tologin" class="button button-left">登陆</a>
									<a href="/tologin" class="button button-right">注册</a>
									<div class="cl">&nbsp;</div>
								</div>
							</div>
						</div>
						<!-- / Sign In -->
						<div class="block">
							<div class="block-bot">
								<div class="head">
									<div class="head-cnt">
										<h3>热门游戏</h3>
									</div>
								</div>
								<div class="image-articles articles">
									<div class="cl">&nbsp;</div>

									<c:forEach items="${gameRank}" var="g" begin="0" end="2" step="1">
									<div class="article">
										<div class="cl">&nbsp;</div>
										<div class="image">
											<a href="/toview?gId=${g.gId}"><img src="${g.gPic}" alt="图片不存在" height="30px" width="30px"/></a>
										</div>
										<div class="cnt">
											<h4><a href="/toview?gId=${g.gId}">${g.gName}</a></h4>
											<h4>&nbsp;</h4>
											<h4>评分:${g.gScore}</h4>
										</div>
										<div class="cl">&nbsp;</div>
									</div>
									</c:forEach>

									<div class="cl">&nbsp;</div>
									<a href="/torank" class="view-all">view all</a>
									<div class="cl">&nbsp;</div>
								</div>
							</div>
						</div>
						
						<div class="block">
							<div class="block-bot">
								<div class="head">
									<div class="head-cnt">
										<h3>游戏资讯</h3>
									</div>
								</div>
								<div class="text-articles articles">
									<div class="article">
										<h4><a href="#">敬请期待</a></h4>
										<small class="date">21.07.09</small>
										<p>非常抱歉，这个功能还没有实现</p>
									</div>
									<div class="article">
										<h4><a href="#">有待提高</a></h4>
										<small class="date">20.07.09</small>
										<p>我们小组还需要多多努力</p>
									</div>
									<div class="article">
										<h4><a href="#">还未完成</a></h4>
										<small class="date">19.07.09</small>
										<p>打击与挫败是成功的踏脚石，而不是绊脚石。</p>
									</div>
									<div class="article">
										<h4><a href="#">未完待续</a></h4>
										<small class="date">15.07.09</small>
										<p>世间的活动，缺点虽多，但仍是美好的。</p>
									</div>
									<div class="cl">&nbsp;</div>
									<a href="#" class="view-all">查看更多</a>
									<div class="cl">&nbsp;</div>
								</div>
							</div>
						</div>
					</div>
					<!-- / Sidebar -->
					<div id="video">
						<video src="${gameInfo.video}" controls="controls">
							您的浏览器不支持 video 标签。
						</video>
					</div>
					<div class="cl">&nbsp;</div>
					<!-- Footer -->
					<div id="footer">
						<div class="navs">
							<div class="navs-bot">
								<div class="cl">&nbsp;</div>
								<ul>
								    <li><a href="#">community</a></li>
								    <li><a href="#">forum</a></li>
								    <li><a href="#">video</a></li>
								    <li><a href="#">cheats</a></li>
								    <li><a href="#">features</a></li>
								    <li><a href="#">downloads</a></li>
								    <li><a href="#">sports</a></li>
								    <li><a href="#">tech</a></li>
								</ul>
								<ul>
								    <li><a href="#">pc</a></li>
								    <li><a href="#">xbox</a></li>
								    <li><a href="#">360</a></li>
								    <li><a href="#">wii</a></li>
								    <li><a href="#">ps3</a></li>
								    <li><a href="#">ps2</a></li>
								    <li><a href="#">psp</a></li>
								    <li><a href="#">ds</a></li>
								</ul>	
								<div class="cl">&nbsp;</div>
							</div>
						</div>
						<p class="copy">&copy; Sitename.com. Design by <a href="http://chocotemplates.com">ChocoTemplates.com</a></p>
					</div>
					<!-- / Footer -->	
				</div>
			</div>
			<!-- / Main -->
		</div>
		<!-- / Page -->
	</body>
</html>