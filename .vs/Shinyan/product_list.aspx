﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="product_list.aspx.cs" Inherits="product_list" %>

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
    <link href="css/custom.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


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
            height: 220px;
        }
    </style>

</head>

<body>

    <div id="wrapper">       
        <!--#include file="/partials/_sidebar.aspx"-->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
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
                        <form action="product_list.aspx" method="get">
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
                                                <li><a href="#name">品名</a></li>
                                                <li><a href="#brand">廠牌</a></li>
                                                <li><a href="#p_id">SKU</a></li>
                                                <li><a href="#category">產品類型</a></li>
                                            </ul>
                                        </div>
                                        <input type="hidden" name="search_param" value="name" id="search_param" />
                                        <input type="text" class="form-control" name="keyword" placeholder="關鍵字" />
                                        <span class="input-group-btn">
                                            <button class="btn btn-primary" type="submit" value="submit"><span class="glyphicon glyphicon-search"></span>搜尋</button>
                                        </span>
                                    </div>
                                </div>
                            </div>

                            <!-- 進階搜尋 -->
                            <button class="btn btn-link" data-toggle="collapse" data-target="#advanced-search" type="button">進階搜尋</button>

                            <div id="advanced-search" class="collapse">
                                <div class="container-fluid">
                                    <div class="form-group col-lg-4 well">
                                        <label>Owner</label>
                                        <select name="owner">
                                            <option></option>
                                            <option value="E">E</option>
                                            <option value="J">J</option>
                                        </select>
                                        <label>廠牌</label>
                                        <input class="form-control" name="brand"/>
                                        SKU
                                        <input class="form-control" name="p_id"/>
                                    </div>
                                    <div class="form-group col-lg-4 well">
                                        <label>分類</label><br />
                                        <select name="cateL">
                                            <option value="">大類</option>
                                            <option value="1">s</option>
                                            <option>s</option>
                                        </select>
                                        <br />
                                        <select name="cateM">
                                            <option value="">中類</option>
                                            <option value="1">s</option>
                                            <option>s</option>
                                        </select>
                                        <br />
                                        <select name="cateS">
                                            <option value="">小類</option>
                                            <option value="1">s</option>
                                            <option>s</option>
                                        </select>
                                    </div>
                                    <div class="form-group col-lg-4 well">
                                        <label>銷售狀態</label>
                                        <select name="status">
                                            <option></option>
                                            <option value="1">上架</option>
                                            <option value="0">下架</option>
                                        </select>
                                        <label>規格</label>
                                        <input class="form-control" name="spec"/>
                                        <label>顏色</label>
                                        <input class="form-control" name="color"/>
                                    </div>
                                </div>
                            </div>

                        </div>
                        </form>
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
                                    <% printProductList(); %>
                                </table>
                            </div>
                        </div>
                        <!-- 列表結束 -->
                        <!-- 分頁 -->
                        <div class="row">
                            <% PrintPagination(); %>
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
        function Selectimport(id) {
            window.open('import.aspx?id='+id, '_blank', 'toolbar=no,scrollbars=yes,resizeable=no,width=1400,height=850,screenX=100,screenY=100');
        }
    </script> 


</body>

</html>
