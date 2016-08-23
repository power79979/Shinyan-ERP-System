<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AccountList.aspx.cs" Inherits="AccountList" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>昕彥管理系統</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/simple-sidebar.css" rel="stylesheet">
    <link href="css/advanced-search-bar.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script src="js/product.js"></script>

    <style>
        select { 
            width: 100%; 
            text-align:center; 
            margin-bottom: 10px;
            text-indent: 5px; 
            padding: 3px;
        }
        select .lt 
        { 
            text-align:center; 
        }
        .well{
            height: 350px;
        }
    </style>

</head>

<body>

    <div id="wrapper">       
        <!--#include file="/partials/_sidebar.aspx"-->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        
                        <!-- 訊息列 -->
                        <div class="row">
                            <div>
                                <div class="alert alert-info alert-dismissable">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                    <span class="glyphicon glyphicon-exclamation-sign"></span>  <strong>[訊息]</strong> TEST
                                </div>
                            </div>
                        </div>
                      
                        <!-- 搜尋 -->
                        <div class="row panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">搜尋</h3>
                            </div>
                            <div class="panel-body">
                                <!-- 搜尋列內容 -->
                                <div class="col-xs-6 col-xs-offset-2">
                                    <div class="input-group">
                                        <div class="input-group-btn search-panel">
                                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                                <span id="search_concept">--請選擇--</span> <span class="caret"></span>
                                            </button>
                                            <ul class="dropdown-menu" role="menu">
                                                <li><a href="#name">帳號名稱</a></li>
                                                <li><a href="#name">擁有者</a></li>
                                                <li><a href="#brand">權限</a></li>                                             
                                            </ul>
                                        </div>
                                        <input type="hidden" name="search_param" value="all" id="search_param"/>
                                        <input type="text" class="form-control" name="x" placeholder="關鍵字"/>
                                        <span class="input-group-btn">
                                            <button class="btn btn-primary" type="button"><span class="glyphicon glyphicon-search"></span>搜尋</button>
                                        </span>
                                    </div>
                                </div>
                            </div>                           
                    

                        </div>
                        <!--搜尋列結束-->

                        <!-- 列表 -->
                        <div class="row panel">
                            
                            <div class="custyle">
                                <table class="table table-striped custab">
                                    <thead>
                                        <tr>
                                            <th>帳號名稱</th>
                                            <th>擁有者</th>
                                            <th>權限等級</th>
                                            <th>帳號開創日期</th>
                                            <th>最近修改日期</th>
                                            <th>開通否</th>                                            
                                            <th class="text-center">Action</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td>A123456</td>
                                        <td>Boss</td>
                                        <td>A</td>                                        
                                        <td>2016-08-17</td>
                                        <td>2016-08-17 13:02:51</td> 
                                        <td>是</td>                                      
                                        <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> 編輯</a> <a href="#" onclick="Selectimport()" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-import"></span> 刪除</a></td>
                                    </tr>
                                    <tr>
                                        <td>B123456</td>
                                        <td>OP1</td>
                                        <td>B</td>                                        
                                        <td>2016-08-17</td>
                                        <td>2016-08-17 13:02:51</td> 
                                        <td>是</td>   
                                        
                                        <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> 編輯</a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-import"></span> 刪除</a></td>
                                    </tr>
                                    <tr>
                                        <td>C123456</td>
                                        <td>OP2</td>
                                        <td>B</td>                                        
                                        <td>2016-08-17</td>
                                        <td>2016-08-17 13:02:51</td> 
                                        <td>否</td>   
                                      
                                        <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> 編輯</a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-import"></span> 刪除</a></td>
                                    </tr>
                                    <tr>
                                        <td>D123456</td>
                                        <td>OP3</td>
                                        <td>C</td>                                        
                                        <td>2016-08-17</td>
                                        <td>2016-08-17 13:02:51</td> 
                                        <td>是</td>   
                                       
                                        <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> 編輯</a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-import"></span> 刪除</a></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <!-- 列表結束 -->
                        <!-- 分頁 -->
                        <div class="row">
                            <ul class="pagination">
                                <li><a href="#">1</a></li>
                                <li class="active"><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                            </ul>
                        </div>
                        <!-- 分頁結束 -->
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
        /*$("#menu-toggle").click(function(e) {
            e.preventDefault();
             $("#wrapper").toggleClass("toggled");
        });*/
    
        /* side bar */
        $(function () {
            $.each($('.sidebar-nav').find('.child-item'), function () {
                $(this).toggleClass('active',
                    $(this).find('a').attr('href') == window.location.pathname);
            });
        });

        /*Search bar*/
        $(document).ready(function (e) {
            $('.search-panel .dropdown-menu').find('a').click(function (e) {
                e.preventDefault();
                var param = $(this).attr("href").replace("#", "");
                var concept = $(this).text();
                $('.search-panel span#search_concept').text(concept);
                $('.input-group #search_param').val(param);
            });
        });

        /*開啟進貨頁*/
        function Selectimport() {
            window.open('import.html', '_blank', 'toolbar=no,scrollbars=yes,resizeable=no,width=1000,height=850,screenX=100,screenY=100');
        }
    </script> 


</body>

</html>
