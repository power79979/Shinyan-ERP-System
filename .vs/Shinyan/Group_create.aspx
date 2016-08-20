<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Group_create.aspx.cs" Inherits="product_list" %>

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
        .title-col {
            width: 250px;
            color: black;
            text-align: right;
        }
        select {
         margin-left:15px;
        }

            select .lt {
                text-align: center;
            }

        .well {
            height: 220px;
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
                                    <span class="glyphicon glyphicon-exclamation-sign"></span><strong>[訊息]</strong> TEST
                               
                                </div>
                            </div>
                        </div>

                        <!-- 搜尋 -->
                        <form>
                            <div class="row panel panel-primary">
                                <div class="panel-heading">
                                    <h3 class="panel-title">組合商品基本資料</h3>
                                </div>
                                <div class="panel-body">

                                    <table class="table table-bordered">
                                        <tr>
                                            <td class="title-col active">*商品標號</td>
                                            <td>
                                                <div class="col-lg-6">
                                                    <input class="form-control input-sm" name="name" />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">*商品名稱</td>
                                            <td>
                                                <div class="col-lg-6">
                                                    <input class="form-control input-sm" name="name" />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">*商品類別</td>
                                            <td>
                                                <div class="form-inline">
                                                <select class ="form-control col-lg-3">
                                                    <option>------------</option>
                                                    <option>1111111111</option>
                                                    <option>2222222222</option>
                                                     <option>333333333</option>
                                                </select>
                                                    
                                                 <select class ="form-control col-lg-3">
                                                    <option>------------</option>
                                                    <option>1111111111</option>
                                                    <option>2222222222</option>
                                                     <option>333333333</option>
                                                </select>
                                                 
                                                 <select class ="form-control col-lg-3">
                                                    <option>------------</option>
                                                    <option>1111111111</option>
                                                    <option>2222222222</option>
                                                     <option>333333333</option>
                                                </select>
                                         

                                                </div>
                                            </td>
                                        </tr>
                                        
                                    </table>

                                </div>
                            </div>
                        <!--搜尋列結束-->

                        <!-- 列表 -->


                        <div class="row panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">子商品清單</h3>
                            </div>

                            <div class="panel-body">
                                <table class="table table-striped custab">
                                    <thead>
                                        <tr>

                                            <th>商品編號</th>
                                            <th>商品名稱</th>
                                            <th>數量</th>
                                            <th>刪除</th>

                                        </tr>
                                    </thead>
                                    <tr>
                                        <td>B03EA70000001BL<a href="#"><span class="glyphicon glyphicon-plus"></span></a></td>
                                        <td>NEW EASTON EA70 +/- 6 DEGREE ROAD STEM(100 MM TRAVEL)</td>
                                        <td>
                                             <input type="number" name="" class="form-control" /></td>
                                        <td><a href="#"><span class="glyphicon glyphicon-trash" ></span></a></td>

                                    </tr>
                                    <tr>
                                        <td>B03EA70000001BL<a href="#"><span class="glyphicon glyphicon-plus"></span></a></td>
                                        <td>NEW EASTON EA70 +/- 6 DEGREE ROAD STEM(100 MM TRAVEL)</td>
                                        <td>
                                            <input type="number" name="" class="form-control" /></td>
                                        <td><a href="#"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a></td>

                                    </tr>

                                </table>
                            </div>
                        </div>
                            <div class="row" align="center">
                                <input type="submit" value="送出" class="btn btn-primary btn-lg" />
                            </div>

                     </form>
                        <!-- 列表結束 -->
                     
                    </div>
                </div>
            </div>
    
   
            <!-- /#page-content-wrapper -->


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
