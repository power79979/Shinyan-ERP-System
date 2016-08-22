<%@ Page Language="C#" AutoEventWireup="true" CodeFile="import.aspx.cs" Inherits="product_list" %>

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
                        <!-- 訊息列結束 -->
                      
                        <!-- 商品進貨管理 -->
                        <div class="row panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">商品進貨管理</h3>
                            </div>
                            <div class="panel-body">
                                <table class="table table-bordered">
                                    <tr>
                                        <td>
                                            <div class="form-group col-lg-12">
                                                <label for="inputdefault">商品名稱</label>
                                                <input class="form-control" readonly value="NEW EASTON EA70 +/- 6 DEGREE ROAD STEM(100 MM TRAVEL)"/>
                                            </div>
                                             <div class="form-group col-lg-4">
                                                <label for="inputdefault">SKU</label>
                                                <input class="form-control" readonly value="B03EA70000001BL"/>
                                            </div>                                            
                                            <div class="form-group col-lg-4">
                                                <label for="inputdefault">日期</label>
                                                <input class="form-control" readonly value="<% Response.Write(DateTime.Now.ToShortDateString()); %>"/>
                                            </div>
                                            <div class="form-group col-lg-4">
                                                <label for="inputdefault">庫存數</label>
                                                <input class="form-control" readonly value="5000"/>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-group col-lg-4">
                                                <label for="inputdefault">供應商</label>
                                                <input class="form-control" />
                                            </div>                                            
                                            <div class="form-group col-lg-2">
                                                <label for="inputdefault">數量</label>
                                                <input type="number" class="form-control" />
                                            </div>
                                            <div class="form-group col-lg-2">
                                                <label for="inputdefault">價格</label>
                                                <input type="number" class="form-control" />
                                            </div>
                                            <div class="form-group col-lg-2">
                                                <label for="inputdefault">倉別</label>
                                                <input class="form-control" />
                                            </div>
                                            <div class="form-group col-lg-2">
                                                <label for="inputdefault">儲位</label>
                                                <input class="form-control" />
                                            </div>                                           
                                            <div class="form-group col-lg-10">
                                                <label for="inputdefault">備註</label>
                                                <input class="form-control" />
                                            </div>
                                            <div class="form-group col-lg-2">
                                                <input type="submit" value="進貨" class="btn btn-lg btn-primary btn-margin" />
                                                <input type="submit" value="轉倉" class="btn btn-lg btn-primary btn-right" />
                                            </div>
                                        </td>
                                    </tr>
                                </table>                                                              
                            </div>
                        </div>
                        <!-- 商品進貨管理結束 -->

                        <!-- 列表 -->
                        <div class="row panel">
                            <div class="custyle">
                                <table class="table table-striped custab">
                                    <thead>
                                        <tr>
                                            <th>日期</th>
                                            <th>種類</th>
                                            <th>數量</th>
                                            <th>成本/售價</th>
                                            <th>倉別</th>
                                            <th>儲位</th>
                                            <th>備註</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td>2016-08-19</td>
                                        <td>進貨</td>
                                        <td>200</td>
                                        <td>3000</td>
                                        <td>高雄</td>
                                        <td>A001-2</td>
                                        <td>無</td>
                                    </tr>
                                    <tr>
                                        <td>2016-08-19</td>
                                        <td>進貨</td>
                                        <td>200</td>
                                        <td>3000</td>
                                        <td>高雄</td>
                                        <td>A001-2</td>
                                        <td>無</td>
                                    </tr> 
                                    <tr>
                                        <td>2016-08-19</td>
                                        <td>進貨</td>
                                        <td>200</td>
                                        <td>3000</td>
                                        <td>高雄</td>
                                        <td>A001-2</td>
                                        <td>無</td>
                                    </tr> 
                                    <tr>
                                        <td>2016-08-19</td>
                                        <td>進貨</td>
                                        <td>200</td>
                                        <td>3000</td>
                                        <td>高雄</td>
                                        <td>A001-2</td>
                                        <td>無</td>
                                    </tr> 
                                    <tr>
                                        <td>2016-08-19</td>
                                        <td>進貨</td>
                                        <td>200</td>
                                        <td>3000</td>
                                        <td>高雄</td>
                                        <td>A001-2</td>
                                        <td>無</td>
                                    </tr> 
                                    <tr>
                                        <td>2016-08-19</td>
                                        <td>進貨</td>
                                        <td>200</td>
                                        <td>3000</td>
                                        <td>高雄</td>
                                        <td>A001-2</td>
                                        <td>無</td>
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
