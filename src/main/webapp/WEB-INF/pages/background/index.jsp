<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
    <title>后台管理系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="/staticfile/background/assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
    <link href="/staticfile/background/assets/css/bui-min.css" rel="stylesheet" type="text/css" />
    <link href="/staticfile/background/assets/css/main-min.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div class="header">

    <div class="dl-title">
        <!--<img src="/chinapost/Public/assets/img/top.png">-->
    </div>

    <div class="dl-log" style="font-size: 30px">欢迎您，<span style="font-size: 30px" class="dl-log-user">${sessionScope.loginUser.userName}</span><a href="/logout" title="退出系统" class="dl-log-quit" style="font-size: 30px">[退出]</a>
    </div>
</div>
<div class="content">
    <div class="dl-main-nav">
        <div class="dl-inform"><div class="dl-inform-title"><s class="dl-inform-icon dl-up"></s></div></div>
        <ul id="J_Nav"  class="nav-list ks-clear">
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-home">游戏管理</div></li>
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-order">用户管理</div></li>
        </ul>
    </div>
    <ul id="J_NavContent" class="dl-tab-conten">

    </ul>
</div>
<script type="text/javascript" src="/staticfile/background/assets/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="/staticfile/background/assets/js/bui-min.js"></script>
<script type="text/javascript" src="/staticfile/background/assets/js/common/main-min.js"></script>
<script type="text/javascript" src="/staticfile/background/assets/js/config-min.js"></script>
<script>
    BUI.use('common/main',function(){
        var config = [{id:'1',menu:[{text:'游戏管理',items:[{id:'2',text:'游戏列表',href:'gamelist.action'},{id:'3',text:'游戏评论',href:'gamecomm.action'}]}]},{id:'7',homePage : '9',menu:[{text:'用户管理',items:[{id:'9',text:'用户列表',href:'userlist.action'},{id:'6',text:'用户评论',href:'usercomm.action'}]}]}];
        new PageUtil.MainPage({
            modulesConfig : config
        });
    });
</script>
</body>
</html>