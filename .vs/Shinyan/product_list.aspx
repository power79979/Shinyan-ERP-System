<%@ Page Language="C#" AutoEventWireup="true" CodeFile="product_list.aspx.cs" Inherits="product_list" %>

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
                                <div class="col-xs-8 col-xs-offset-2">
                                    <div class="input-group">
                                        <div class="input-group-btn search-panel">
                                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                                <span id="search_concept">品名</span> <span class="caret"></span>
                                            </button>
                                            <ul class="dropdown-menu" role="menu">
                                                <li><a href="#contains">品名</a></li>
                                                <li><a href="#contains">廠牌</a></li>
                                                <li><a href="#its_equal">SKU</a></li>
                                                <li><a href="#greather_than">產品類型</a></li>
                                                <li><a href="#less_than">銷售狀態</a></li>
                                            </ul>
                                        </div>
                                        <input type="hidden" name="search_param" value="all" id="search_param">
                                        <input type="text" class="form-control" name="x" placeholder="Search term...">
                                        <span class="input-group-btn">
                                            <button class="btn btn-primary" type="button"><span class="glyphicon glyphicon-search"></span>搜尋</button>
                                        </span>
                                    </div>
                                </div>
                            </div>                            
                            
                            <!-- 進階搜尋 -->
                            <button class="btn btn-link" data-toggle="collapse" data-target="#advanced-search">進階搜尋</button>

                            <div id="advanced-search" class="collapse">
                                <br />                                 
                                <form>
                                    <div class="form-group col-lg-2">
                                        <label>規格</label>
                                        <input class="form-control">
                                    </div>
                                    <div class="form-group col-lg-2">
                                        <label>顏色</label>
                                        <input class="form-control">
                                    </div>
                                    <div class="form-group col-lg-2">
                                        <label>進貨日期</label>
                                        <input type="date" class="form-control">
                                    </div>
                                </form>
                                <br/>
                            </div>

                        </div>
                        <!--搜尋列結束-->

                        <!-- 列表 -->
                        <div class="row panel">
                            <a href="#" class="btn btn-primary"><b>+</b>新增商品</a>
                            <div class="custyle">
                                <table class="table table-striped custab">
                                    <thead>
                                        <tr>
                                            <th>SKU</th>
                                            <th>商品名稱</th>
                                            <th>商品分類</th>
                                            <th>商品售價</th>
                                            <th>總庫存數</th>
                                            <th class="text-center">Action</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td>B03EA70000001BL</td>
                                        <td>NEW EASTON EA70 +/- 6 DEGREE ROAD STEM(100 MM TRAVEL)</td>
                                        <td>未對應分類</td>
                                        <td>0 USD</td>
                                        <td>500</td>
                                        <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> 編輯</a> <a href="#" onclick="Selectimport()" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-import"></span> 進貨</a></td>
                                    </tr>
                                    <tr>
                                        <td>B03EA70000001BL</td>
                                        <td>NEW EASTON EA70 +/- 6 DEGREE ROAD STEM(100 MM TRAVEL)</td>
                                        <td>未對應分類</td>
                                        <td>0 USD</td>
                                        <td>500</td>
                                        <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> 編輯</a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-import"></span> 進貨</a></td>
                                    </tr>
                                    <tr>
                                        <td>B03EA70000001BL</td>
                                        <td>NEW EASTON EA70 +/- 6 DEGREE ROAD STEM(100 MM TRAVEL)</td>
                                        <td>未對應分類</td>
                                        <td>0 USD</td>
                                        <td>500</td>
                                        <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> 編輯</a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-import"></span> 進貨</a></td>
                                    </tr>
                                    <tr>
                                        <td>B03EA70000001BL</td>
                                        <td>NEW EASTON EA70 +/- 6 DEGREE ROAD STEM(100 MM TRAVEL)</td>
                                        <td>未對應分類</td>
                                        <td>0 USD</td>
                                        <td>500</td>
                                        <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> 編輯</a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-import"></span> 進貨</a></td>
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
