<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="/staticfile/background/Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="/staticfile/background/Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="/staticfile/background/Css/style.css" />
    <script type="text/javascript" src="/staticfile/background/Js/jquery.js"></script>
    <script type="text/javascript" src="/staticfile/background/Js/jquery.sorted.js"></script>
    <script type="text/javascript" src="/staticfile/background/Js/bootstrap.js"></script>
    <script type="text/javascript" src="/staticfile/background/Js/ckform.js"></script>
    <script type="text/javascript" src="/staticfile/background/Js/common.js"></script>

    <style type="text/css">
        body {
            padding-bottom: 40px;
        }
        .sidebar-nav {
            padding: 9px 0;
        }

        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }

        img{
            width:120px;
            height:80px;
        }

    </style>
</head>
<body>
<table class="table table-bordered table-hover definewidth m10" >
    <thead>
    <tr>
        <th>序号</th>
        <th>评论时间</th>
        <th>评论内容</th>
        <th>评论分数</th>
        <th>管理操作</th>
    </tr>
    </thead>
    <c:forEach items="${comms}" var="c" varStatus="status">
        <tr>
            <td>${status.index+1}</td>
            <td>
                <fmt:formatDate value="${c.time}" pattern="yyyy-MM-dd"/>
            </td>
            <td>${c.content}</td>
            <td>${c.score}</td>
            <td>
                <a href="/usercomm/delete.action?cId=${c.cId}">删除</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
