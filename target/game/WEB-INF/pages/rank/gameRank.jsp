<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="/staticfile/assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	
	<title>游戏排行</title>

	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />

	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
	 </script>

    <script src="/staticfile/js/jquery-1.6.2.js"></script>


    <link href="/staticfile/assets/css/bootstrap.css" rel="stylesheet" />
    <link href="/staticfile/assets/css/fresh-bootstrap-table.css" rel="stylesheet" />

    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>

    <script>
        $(function(){
            $("#down").click(function(){
                if(confirm("是否确认下载？")){
                    location.href="/down";
                    alert("下载成功");
                }
            })
        })
    </script>



        </head>
<body>

<%@include file="../head.jsp"%>
<!--排行-->
<div class="wrapper">
    <div class="fresh-table full-color-orange full-screen-table">
   
        
        <table id="fresh-table" class="table">
            <thead>
                <th data-field="id">排名</th>
            	<th data-field="name" data-sortable="true">游戏名称</th>
            	<th data-field="salary" data-sortable="true">游戏类型</th>
            	<th data-field="country" data-sortable="true">游戏图片</th>
            	<th data-field="city">评分</th>
            	<th data-field="actions"  data-events="operateEvents"></th>
            </thead>


            <tbody>
	            <!--forEach语句-->
	            <c:forEach items="${gameRank}" var="g" varStatus="status">
                <tr>
                	<td>${status.index+1}</td>
                	<td><a href="/toview?gId=${g.gId}">${g.gName}</a></td>
                	<td>
                        <c:if test="${g.gClass==0}">网络游戏</c:if>
                        <c:if test="${g.gClass==1}">单机游戏</c:if>
                    </td>
                	<td><img src="${g.gPic}" height="50px" width="50px"></td>
                	<td>${g.gScore}</td>
                	<td></td>
                </tr>
                </c:forEach>
                
                
            </tbody>
        </table>

        <div class="container">
            <div class="row clearfix">
                <div class="col-md-8 column">
                </div>
                <div class="col-md-4 column">
                    <div class="row clearfix">
                        <div class="col-md-6 column">
                        </div>
                        <div class="col-md-6 column">
                            <button type="button" id="down" class="btn btn-lg btn-block btn-warning">下载</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    
</div>


</body>
    <script type="text/javascript" src="/staticfile/assets/js/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="/staticfile/assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="/staticfile/assets/js/bootstrap-table.js"></script>
        
    <script type="text/javascript">
        var $table = $('#fresh-table'),
            $alertBtn = $('#alertBtn'), 
            full_screen = false,
            window_height;
            
        $().ready(function(){
            
            window_height = $(window).height();
            table_height = window_height - 20;
            
            
            $table.bootstrapTable({
                toolbar: ".toolbar",

                showRefresh: true,
                search: true,
                showToggle: true,
                showColumns: true,
                pagination: true,
                striped: true,
                sortable: true,
                height: table_height,
                pageSize: 25,
                pageList: [25,50,100],
                
                formatShowingRows: function(pageFrom, pageTo, totalRows){
                    //do nothing here, we don't want to show the text "showing x of y from..." 
                },
                formatRecordsPerPage: function(pageNumber){
                    return pageNumber + " rows visible";
                },
                icons: {
                    refresh: 'fa fa-refresh',
                    toggle: 'fa fa-th-list',
                    columns: 'fa fa-columns',
                    detailOpen: 'fa fa-plus-circle',
                    detailClose: 'fa fa-minus-circle'
                }
            });
            
            window.operateEvents = {
                'click .like': function (e, value, row, index) {
                    alert('You click like icon, row: ' + JSON.stringify(row));
                    console.log(value, row, index);
                },
                'click .edit': function (e, value, row, index) {
                    alert('You click edit icon, row: ' + JSON.stringify(row));
                    console.log(value, row, index);    
                },
                'click .remove': function (e, value, row, index) {
                    $table.bootstrapTable('remove', {
                        field: 'id',
                        values: [row.id]
                    });
            
                }
            };
            
            $alertBtn.click(function () {
                alert("You pressed on Alert");
            });
        
            
            $(window).resize(function () {
                $table.bootstrapTable('resetView');
            });    
        });
        

        function operateFormatter(value, row, index) {
            return [
                '<a rel="tooltip" title="Like" class="table-action like" href="javascript:void(0)" title="Like">',
                    '<i class="fa fa-heart"></i>',
                '</a>',
                '<a rel="tooltip" title="Edit" class="table-action edit" href="javascript:void(0)" title="Edit">',
                    '<i class="fa fa-edit"></i>',
                '</a>',
                '<a rel="tooltip" title="Remove" class="table-action remove" href="javascript:void(0)" title="Remove">',
                    '<i class="fa fa-remove"></i>',
                '</a>'
            ].join('');
        }
       
    </script>

</html>