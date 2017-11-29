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
<form class="form-inline definewidth m20" action="/userlist/find.action" method="post">
    用户名：
    <input type="text" name="username" id="rolename"class="abc input-default" placeholder="" value="">&nbsp;&nbsp;
    <button type="submit" class="btn btn-primary">查询</button>&nbsp;&nbsp;
    <button type="button" class="btn btn-success" id="addnew" onclick="add()">新增用户</button>
</form>
<table class="table table-bordered table-hover definewidth m10" >
    <thead>
    <tr>
        <th>序号</th>
        <th>用户名</th>
        <th>昵称</th>
        <th>角色</th>
        <th>管理操作</th>
    </tr>
    </thead>
    <c:forEach items="${users}" var="u" varStatus="status">
        <tr>
            <td>${status.index+1}</td>
            <td>${u.username}</td>
            <td>${u.name}</td>
            <td>${u.userRole}</td>
            <td>
                <a href="/userlist/edit.action?userId=${u.userId}">编辑</a>
            </td>
        </tr>
    </c:forEach>
	     </table>
</body>
<script>
    function add() {
        location.href="/userlist/add.action"
    }
</script>
</html>
