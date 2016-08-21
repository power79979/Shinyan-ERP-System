<%@ Page Language="C#" AutoEventWireup="true" CodeFile="billing_daliy.aspx.cs" Inherits="product_list" %>

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
                                    <span class="glyphicon glyphicon-exclamation-sign"></span>  <strong>[訊息]</strong> TEST
                                </div>
                            </div>
                        </div>
                      
                        <!-- 搜尋 -->
                       <%-- <div class="row panel panel-primary">
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
                                                <li><a href="#sku">SKU</a></li>
                                                <li><a href="#category">產品類型</a></li>
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
                            
                            <!-- 進階搜尋 -->
                            <button class="btn btn-link" data-toggle="collapse" data-target="#advanced-search">進階搜尋</button>

                            <div id="advanced-search" class="collapse">                            
                                <form>
                                    <div class="form-group col-lg-4 well">
                                        <label>進貨日期</label><br />
                                        從<input type="date" class="form-control"/>
                                        到<input type="date" class="form-control"/>
                                    </div>
                                    <div class="form-group col-lg-4 well">
                                        <label>分類</label><br />
                                        <select>
                                            <option>大類</option>
                                            <option>s</option>
                                            <option>s</option>
                                        </select>
                                        <br />
                                        <select>
                                            <option>中類</option>
                                            <option>s</option>
                                            <option>s</option>
                                        </select>
                                        <br />
                                        <select>
                                            <option>小類</option>
                                            <option>s</option>
                                            <option>s</option>
                                        </select>
                                    </div>
                                    <div class="form-group col-lg-4 well">
                                        銷售狀態
                                        <select>
                                            <option></option>
                                            <option>上架</option>
                                            <option>下架</option>
                                        </select>
                                        規格
                                        <input class="form-control"/>
                                        顏色
                                        <input class="form-control"/>
                                    </div>
                                    <div class="form-group col-lg-2">
                                        
                                    </div>
                                    <div class="form-group col-lg-2">
                                        
                                    </div>
                                </form>
                            </div>

                        </div>--%>
                        <!--搜尋列結束-->
                        <!--列表-->
                        
                        <div class="row panel">                            
                            <div class="custyle">
                                <table class="table table-striped custab">
                                    <thead>
                                        <tr>
                                            <th>項次</th>
                                            <th>E/B NO.</th>
                                            <th>E/B ITEM NO.</th>
                                            <th>E/B ID</th>
                                            <th>SKU</th>
                                            <th>數量</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td>1</td>
                                        <td>21684</td>
                                        <td>291819016982</td>
                                        <td>pacho29</td>                                         
                                        <td>B33ANG0000007GR</td>
                                        <td>111</td>                                                                          
                                    </tr>
                                    <tr>
                                        <td colspan="6">
                                            <button class="btn btn-link" data-toggle="collapse" data-target="#advanced-search1">
                                                NEW ANTI-GRAVITY MEN POLARIZED SUNGLASSES FOR OUTDOOR SPORTS ( GREEN COLOR ) 
                                            </button>
                                            <div id="advanced-search1" class="collapse">
                                                <table class="table table-bordered">
                                                    <tr>
                                                        <td>
                                                            <div class="form-group col-lg-3">
                                                                <label for="inputdefault">國家</label>
                                                                <input class="form-control" readonly value="UK"/>
                                                            </div>
                                                            <div class="form-group col-lg-3">
                                                                <label for="inputdefault">幣別</label>
                                                                <input class="form-control" readonly value="USD"/>
                                                            </div>
                                                            <div class="form-group col-lg-3">
                                                                <label for="inputdefault">E/B 成交價</label>
                                                                <input class="form-control" readonly value="26.99"/>
                                                            </div>
                                                            <div class="form-group col-lg-3">
                                                                <label for="inputdefault">E/B 含運價</label>
                                                                <input class="form-control" readonly value="26.99"/>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="form-group col-lg-3">
                                                                <label for="inputdefault">P/P DATE</label>
                                                                <input class="form-control" readonly value="7/15"/>
                                                            </div>
                                                            <div class="form-group col-lg-3">
                                                                <label for="inputdefault">P/P PAYMENT ID</label>
                                                                <input class="form-control" readonly value="francisco medellin"/>
                                                            </div>
                                                            <div class="form-group col-lg-3">
                                                                <label for="inputdefault">P/P TOTAL</label>
                                                                <input class="form-control" readonly value="26.99"/>
                                                            </div>
                                                            <div class="form-group col-lg-3">
                                                                <label for="inputdefault">P/P FEE</label>
                                                                <input class="form-control" readonly value="1.16"/>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="form-group col-lg-3">
                                                                <label for="inputdefault">P/P NET</label>
                                                                <input class="form-control" readonly value="25.83"/>
                                                            </div>
                                                            <div class="form-group col-lg-3">
                                                                <label for="inputdefault">進貨成本 (NTD)</label>
                                                                <input class="form-control" readonly value="300"/>
                                                            </div>
                                                            <div class="form-group col-lg-3">
                                                                <label for="inputdefault">結標日</label>
                                                                <input class="form-control" readonly value="7/15"/>
                                                            </div>
                                                            <div class="form-group col-lg-3">
                                                                <label for="inputdefault">寄件日</label>
                                                                <input class="form-control" readonly value="7/18"/>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="form-group col-lg-3">
                                                                <label for="inputdefault">EBAY FEE (US)</label>
                                                                <input class="form-control" readonly value="2.43"/>
                                                            </div>
                                                            <div class="form-group col-lg-3">
                                                                <label for="inputdefault">TEL</label>
                                                                <input class="form-control" readonly value="0208 9642062"/>
                                                            </div>
                                                            <div class="form-group col-lg-3">
                                                                <label for="inputdefault">TRACKING NO.</label>
                                                                <input class="form-control" readonly value="XXXXX"/>
                                                            </div>
                                                            <div class="form-group col-lg-3">
                                                                <label for="inputdefault">運費(USD)</label>
                                                                <input class="form-control" readonly value="XXXXX"/>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="form-group col-lg-3">
                                                                <label for="inputdefault">運費 (NTD)	</label>
                                                                <input class="form-control" readonly value="XXXX"/>
                                                            </div>
                                                            <div class="form-group col-lg-3">
                                                                <label for="inputdefault">包材 (NTD)	</label>
                                                                <input class="form-control" readonly value="XXXX"/>
                                                            </div>
                                                            <div class="form-group col-lg-3">
                                                                <label for="inputdefault">REMARK</label>
                                                                <input class="form-control" readonly value="XXXXX"/>
                                                            </div>
                                                            <div class="form-group col-lg-3">
                                                                <label for="inputdefault">商品持有人</label>
                                                                <input class="form-control" readonly value="William"/>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <form>
                                                                <div class="form-group col-lg-10">
                                                                <label for="inputdefault">物流方式</label>
                                                                <select class="form-control">
                                                                    <option>dsa</option>
                                                                    <option>dsa</option>
                                                                </select>
                                                                </div>
                                                                <div class="form-group col-lg-2">
                                                                    <input type="submit" value="送出" class="btn btn-lg btn-primary" style="margin:15px"/>
                                                                </div>
                                                            </form>                                                            
                                                        </td>
                                                    </tr>
                                                </table>  
                                            </div>
                                        </td>
                                    </tr>                                                                                                                             
                                </table>
                            </div>
                        </div>
                        <!--列表結束-->

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
