<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>游戏评论</title>
    <link rel="stylesheet" href="/staticfile/css/bootstrap.css" type="text/css" media="all" />


    <script type="text/javascript" src="/staticfile/js/bootstrap.js"></script>

</head>
<body style="background:url('/staticfile/images/back.jpg') fixed round;height:100%;">
<%@include file="../head.jsp"%>

<div class="container" >
    <div class="row clearfix"  style="margin-bottom: 100px;">
        <div class="col-md-12 column">
            <h1 class="text-center">
                <span style="font-size:70px;color: #e1edf7;margin-right: 100px;">评</span>
                <span style="font-size:70px; color: lavender;">论</span>
                <span style="font-size:70px; color: snow;margin-left:100px; ">区</span>
            </h1>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-8 column">
            <ol class="list-unstyled">
                <c:forEach items="${gameCom.comments}" var="com" varStatus="status">
                    <div style="background-color:black;border: 2px solid cornflowerblue;margin-bottom: 10px;opacity:0.5;">
                        <li style="margin: 20px;">
                            <h3 style="color: snow;">&nbsp;&nbsp;&nbsp;&nbsp;${com.content}</h3>
                        </li>
                        <li>
                            <h3 style="position:relative;left:500px;color: snow;">${com.user.name}&nbsp;&nbsp;&nbsp;&nbsp;<fmt:formatDate value="${com.time}" pattern="yyyy-MM-dd"/></h3>
                        </li>
                    </div>
                </c:forEach>
            </ol>
            <div class="row clearfix" style="margin-top: 100px;position: relative;left: 50px;">
                <div class="col-md-4 column">
                </div>
                <div class="col-md-4 column">

                </div>
                <div class="col-md-4 column">
                </div>
                <div class="row clearfix">
                    <div class="col-md-8 column">
                        <form role="form" action="/tocomment" method="post">
                            <div style="opacity:0.5;"><textarea name="content" style="height: 200px;width: 700px;"></textarea></div>
                            <div style="opacity:0.8;">
                                <button type="submit" style="position: relative;left: 600px;height: 50px;width: 100px;background-color: snow;">
                                    <a href="#">提交评论</a>
                                </button>
                            </div>
                            <input type="hidden" name="id" value="${gameCom.infoId}"/>
                            <input type="hidden" name="infoId" value="${infoId}"/>
                            <input type="hidden" name="userId" value="${sessionScope.loginUser.userId}"/>
                        </form>
                    </div>
                    <div class="col-md-4 column">
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4 column" >
            <ol class="list-unstyled">
                <li style="margin-bottom:50px;position: relative;left: 300px;"><h2 style="color: snow;">游戏列表</h2></li>
                <c:forEach items="${gamePic}" var="game" varStatus="status">
                    <li>
                        <a href="/comment?infoId=${game.infoId}"><img src="${game.game.gPic}" alt="图片不存在" height="300px" width="300px" style="position:relative;left:200px"/></a>
                    </li>
                </c:forEach>

            </ol>
        </div>
    </div>

</div>
</body>
</html>