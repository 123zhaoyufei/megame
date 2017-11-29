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




</head>
<!-- //Head -->



<!-- Body -->
<body>



<div class="agileheader" id="agileitshome" style="height:50px">

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
					<a class="navbar-brand logo-w3l button" href="index.html" style="font-size:30px;">ME GAME</a>
				</div>
				<!-- //Logo -->
			</div>

			<div id="navbar" class="navbar-collapse navbar-right collapse">
				<ul class="nav navbar-nav navbar-right cross-effect" id="cross-effect" style="font-size:30px;">
					<shiro:hasRole name="admin">
						<li><a href="/background"><img src="/staticfile/background/Images/an1.png"  alt="no picture" style="height:35px;width:35px;"></a></li>
					</shiro:hasRole>
					<li><a  href="/home">首页</a></li>
					<li><a href="list.action?gClass=0">网络游戏</a></li>
					<li><a href="list.action?gClass=1">单机游戏</a></li>
					<li><a  href="/torank" >排行榜</a></li>
					<li><a  href="/tome">关于我们</a></li>

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

			</div>


	</nav>
</div>
</div>

</body>
<!-- //Body -->



</html>