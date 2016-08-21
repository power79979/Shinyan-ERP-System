<%@ Page Language="C#" AutoEventWireup="true" CodeFile="product_content.aspx.cs" Inherits="product_content" %>

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

    <script src="js/product.js"></script>

    <style type="text/css">
        .title-col {
            width: 250px;
            color: black;
            text-align: right;
        }
        textarea {
            resize: vertical;
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
                                    <span class="glyphicon glyphicon-exclamation-sign"></span><strong>[訊息]</strong> TEST
                                </div>
                            </div>
                        </div>

                        
                           <!-- 表單1訂購人資料 -->
                            <div class="row panel panel-primary">
                                <div class="panel-heading clickable" data-toggle="collapse" data-target="#advanced-search1">
                                    <h3 class="panel-title">商品明細</h3>
                                </div>
                                <div class="collapse in" id="advanced-search1">
                                    <div class="panel-body ">

                                        <table class="table table-bordered">


                                         <tr>
                                            <td class="title-col active">分類</td>
                                            <td>
                                                <div class="form-inline">
                                                    大類:  <% Response.Write(p.category_l); %>
                                                    中類:  <% Response.Write(p.category_m); %>
                                                    小類:  <% Response.Write(p.category_s); %>
                                                </div>
                                            </td>
                                        </tr>
                                       <tr>
                                            <td class="title-col active">SKU</td>
                                            <td>
                                                 <div class="col-lg-4">
                                                    <% Response.Write(p.p_id); %>
                                                </div>                                            
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">Owner</td>
                                            <td>
                                                   <div class="form-group col-lg-3">                                                       
                                                        <% Response.Write(p.owner); %>
                                                    </div>       
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">倉別</td>
                                            <td>
                                                <div class="col-lg-4">
                                                    <% Response.Write("??"); %>
                                                </div>
                                            </td>
                                        </tr>
                                         <tr>
                                            <td class="title-col active">儲位</td>
                                            <td>
                                                <div class="col-lg-4">
                                                    <% Response.Write("??"); %>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">產品類型</td>
                                            <td>
                                                <div class="col-lg-4">
                                                    <% Response.Write(p.product_type); %>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">廠牌</td>
                                            <td>
                                                <div class="form-group col-lg-4">                                        
                                                     <% Response.Write(p.brand); %>                                   
                                                 </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">副廠牌</td>
                                            <td>
                                                 <div class="form-group col-lg-4">                                        
                                                     <% Response.Write(p.sub_brand); %>                                      
                                                 </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">EAN</td>
                                            <td>
                                                <div class="col-lg-4">
                                                    <% Response.Write(p.EAN); %>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">Product Code</td>
                                            <td>
                                               <div class="col-lg-4">
                                                    <% Response.Write(p.product_code); %>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">商品名稱</td>
                                            <td>
                                                <div class="form-group col-lg-4">
                                                  <% Response.Write(p.name); %>
                                                </div>                                                                              
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">規格</td>
                                            <td>
                                                <div class="col-lg-4">
                                                    <% Response.Write(p.spec); %>
                                                </div>
                                            </td>
                                        </tr>                     
                                        <tr>
                                            <td class="title-col active">顏色</td>
                                            <td>
                                                 <div class="col-lg-4">
                                                    <% Response.Write(p.color); %>
                                                </div>                                            
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">數量</td>
                                            <td>
                                                 <div class="col-lg-4">
                                                    <% Response.Write(p.stock_qty); %>
                                                </div>                                            
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">進貨成本</td>
                                            <td>
                                                 <div class="col-lg-4">
                                                    <% Response.Write("??"); %>
                                                </div>                                            
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">備註</td>
                                            <td>
                                                <div class="form-group col-lg-8">
                                                  <% Response.Write(p.comment); %>
                                                </div>                                         
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">更新記錄</td>
                                            <td>
                                                 <div class="col-lg-4">
                                                    <% Response.Write("???"); %>
                                                </div>                                            
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">上架否</td>
                                            <td>
                                                  <div class="col-lg-10">
                                                        <label class="radio-inline">
                                                            <input type="radio" name="optradio" value="" disabled <% if (p.status) Response.Write("checked"); %>/>是</label>
                                                        <label class="radio-inline">
                                                            <input type="radio" name="optradio" value="" disabled <% if (!p.status) Response.Write("checked"); %>/>否</label>
                                                    </div>                                      
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">重量(g)</td>
                                            <td>
                                                 <div class="col-lg-4">
                                                    <% Response.Write(p.weight); %>
                                                </div>                                            
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">適用包材</td>
                                            <td>
                                                 <div class="col-lg-4">
                                                    <% Response.Write(p.wrapping_material); %>
                                                </div>                                            
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">材積</td>
                                            <td>
                                                 <div class="col-lg-4">
                                                    <% Response.Write(p.volume); %>
                                                </div>                                            
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">材積重</td>
                                            <td>
                                                 <div class="col-lg-4">
                                                    <% Response.Write(p.volume_weight); %>
                                                </div>                                            
                                            </td>
                                        </tr>




                                        </table>

                                    </div>
                                </div>                                
                            </div>
                            <!-- end of 表單1訂購人資料 -->

                    </div>
                </div>
            </div>
        </div>
</body>


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

    </script>
</html>
