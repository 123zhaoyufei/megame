<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=utf-8"%>
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
<form class="form-inline definewidth m20" action="/gamelist/find.action" method="post">
    游戏名称：
    <input type="text" name="gName" id="rolename"class="abc input-default" placeholder="" value="">&nbsp;&nbsp;
    <button type="submit" class="btn btn-primary">查询</button>&nbsp;&nbsp;
</form>
<table class="table table-bordered table-hover definewidth m10" >
    <thead>
    <tr>
        <th>序号</th>
        <th>游戏名称</th>
        <th>游戏图片</th>
        <th>游戏类型</th>
        <th>管理操作</th>
    </tr>
    </thead>
    <c:forEach items="${games}" var="g" varStatus="status">
        <tr>
            <td>${status.index+1}</td>
            <td>${g.gName}</td>
            <td>
                <img src="${g.gPic}">
            </td>
            <td>
                 <c:if test="${g.gClass==0}">网络游戏</c:if>>
                 <c:if test="${g.gClass==1}">单机游戏</c:if>>
            </td>
            <td>
                <a href="/gamelist/edit.action?gId=${g.gId}">编辑</a>
            </td>
        </tr>
    </c:forEach>
	     </table>
</body>
</html>
