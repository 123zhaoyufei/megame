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


    </style>
</head>
<body>
<form action="/gamelist/index.action" method="post" class="definewidth m20">
    <input type="hidden" name="game.gId" value="${gameInfo.game.gId}">
<table class="table table-bordered table-hover ">
    <tr>
        <td width="10%" class="tableleft">游戏名称</td>
        <td><input type="text" name="game.gName" value="${gameInfo.game.gName}"/></td>
    </tr>
    <tr>
        <td class="tableleft">游戏类别</td>
        <td >
           <select name="game.gClass">
               <option value="0" <c:if test="${gameInfo.game.gClass==0}">selected="selected"</c:if>>网络游戏</option>
               <option value="1" <c:if test="${gameInfo.game.gClass==1}">selected="selected"</c:if>>单机游戏</option>
           </select>
        </td>
    </tr>
    <tr>
        <td class="tableleft">游戏简介</td>
        <td >
            <textarea name="introduction" style="width: 100%;height: 100%;" >${gameInfo.introduction}</textarea>
        </td>
    </tr>

    <tr>
        <td class="tableleft"></td>
        <td>
            <button type="submit" class="btn btn-primary" type="button">保存</button> &nbsp;&nbsp;
            <button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>
        </td>
    </tr>
</table>
</form>
</body>
</html>
<script>
    $(function () {       
		$('#backid').click(function(){
				window.location.href="/gamelist.action";
		 });

    });
</script>