<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shipment_list.aspx.cs" Inherits="product_list" %>

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
                            
                            <!-- 搜尋條件 -->

                                    <div class="form-group col-lg-12 well form-inline" style="line-height:35px"> 
                                          
                                        <div class ="col-lg-6">                                      
                                            <label>商品名稱</label>
                                            <input class="form-control" />
                                            <br />
                                        
                                            <label>客戶帳號</label>
                                            <input class="form-control" />
                                            <br />
                                        
                                            <label>付款日期</label>
                                            從：<input type="date" class="form-control"/>
                                            ~到：<input type="date" class="form-control"/>
                                            <br />
                                       
                                            <label>出貨日期</label>
                                            從：<input type="date" class="form-control"/>
                                            ~到：<input type="date" class="form-control"/>
                                        </div>
                                           
                                        <div class="col-lg-6">
                                            <label>	ebay Account</label>
                                            <select name="select"  style="width: 200px">
                                                <option></option>
                                            </select><br />
                                            <label>客戶姓名</label>
                                            <input class="form-control" />
                                            <br/>

                                            <label>ebay訂單編號</label>
                                            <input class="form-control" />
                                            <br />
                                            <label>運費</label>
                                            <input class="form-control" />
                                        </div><br />

                                        <div class="col-lg-12">
                                            物流配送方式：
                                            <input type="radio" /> EMS 
                                            <input type="radio" /> Fedex 
                                            <input type="radio" /> TNT
                                            <input type="radio" />掛號小包
                                            <input type="radio" /> 國際包裹
                                            <input type="radio" /> 其他
                                            <input type="radio" /> 7-11取貨付款
                                            <input type="radio" /> 全家取貨付款
                                            <input type="radio" /> 郵局快捷貨到付款
                                            <input type="radio" /> USPS(美國郵政)
                                        </div>                                         
                                    </div>
                                    
                                    <div class="form-group col-lg-12 well form-inline" style="height:120px; line-height:35px">
                                        <div class="col-lg-6">
                                            <label>出貨編號</label>
                                            <input class="form-control" />
                                            <br />
                                         
                                            <label>合併訂單</label>
                                            <input type="radio" />已合併訂單
                                            <input type="radio" />合併成的新訂單
                                       </div>

                                       <div class="col-lg-6">
                                            <label>訂單編號</label>
                                            <input class="form-control" />
                                            <br />

                                            <label>Transaction ID</label>
                                            <input class="form-control" />
                                            <br />
                                       </div>        
                                    </div>
                                    <div class="form-group col-lg-12" style="text-align:center" >
                                            <button class="btn btn-primary" type="button"><span class="glyphicon glyphicon-search"></span>搜尋</button>
                                            <button class="btn btn-primary" type="button"><span class="glyphicon glyphicon-erase"></span>清空</button>
                             
                                    </div>
                                </div>
                        </div>
                        <!--搜尋列結束-->

                        <!-- 列表 -->
                        <div class="row panel">
                            <a href="#" class="btn btn-primary">選擇全部</a>
                            <a href="#" class="btn btn-primary">清除勾選</a>
                                <table class="table table-striped custab" >
                                  <thead>
                                        <tr>
                                            <th>選取</th>
                                            <th>訂單編號</th>
                                            <th>ebay Account</th>
                                            <th>客戶帳號</th>
                                            <th>購買日期</th>
                                            <th>付款日期</th>
                                            <th>資料狀態</th>
                                            <th>貨運編號</th>
                                            <th>訂單狀態</th>
                                            <th>總金額</th>
                                            <th>使用者</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td rowspan="2" style="vertical-align:middle"><input type="checkbox" /></td>
                                        <td>請輸入SKU碼</td>
                                        <td>進貨</td>
                                        <td>50</td>
                                        <td>100</td>
                                        <td>高雄</td>
                                        <td>B1</td>
                                        <td>B1</td>
                                        <td>B1</td>
                                        <td>B1</td>
                                        <td rowspan="2" style="vertical-align:middle">無</td>
                                    </tr>
                                       
                                    <tr>
                                        <td colspan="7">B12MNT0000008WH NEW MANITOU MARVEL PRO 29ER FORK( MILO , DISC ONLY, TAPERED , 2 COLOR OPTIONS ) 1 SHIPPING COST 1</td>
                                        <td colspan="2"><span>出貨日期：<strong>2016-8-22</strong></span></td>
                                    </tr>
                                    
                                    <tr>
                                        <td rowspan="2" style="vertical-align:middle"><input type="checkbox" /></td>
                                        <td>請輸入SKU碼</td>
                                        <td>進貨</td>
                                        <td>65</td>
                                        <td>150</td>
                                        <td>高雄</td>
                                        <td>C1</td>
                                        <td>C1</td>
                                        <td>C1</td>
                                        <td>C1</td>
                                        <td rowspan="2" style="vertical-align:middle">無</td>
                                    </tr>
                                    <tr>
                                       <td colspan="7">B12MNT0000008WH NEW MANITOU MARVEL PRO 29ER FORK( MILO , DISC ONLY, TAPERED , 2 COLOR OPTIONS ) 1 SHIPPING COST 1</td>
                                       <td colspan="2"><span>出貨日期：<strong>2016-2-23</strong>></span></td>
                                    </tr>
                                    <tr>
                                        <td rowspan="2" style="vertical-align:middle"><input type="checkbox" /></td>
                                        <td>請輸入SKU碼</td>
                                        <td>售出</td>
                                        <td>55</td>
                                        <td>150</td>
                                        <td>高雄</td>
                                        <td>D1</td>
                                        <td>D1</td>
                                        <td>D1</td>
                                        <td>D1</td>
                                        <td rowspan="2" style="vertical-align:middle">無</td>
                                    </tr>
                                    <tr>
                                        <td colspan="7">B12MNT0000008WH NEW MANITOU MARVEL PRO 29ER FORK( MILO , DISC ONLY, TAPERED , 2 COLOR OPTIONS ) 1 SHIPPING COST 1 </td>
                                        <td colspan="2"><span>出貨日期：</span><strong>2016-8-23</strong></td>
                                    </tr>
                                    <tr>
                                        <td rowspan="2" style="vertical-align:middle"><input type="checkbox" /></td>
                                        <td>請輸入SKU碼</td>
                                        <td>售出</td>
                                        <td>40</td>
                                        <td>90</td>
                                        <td>高雄</td>
                                        <td>E1</td>
                                        <td>E1</td>
                                        <td>E1</td>
                                        <td>E1</td>
                                        <td rowspan="2" style="vertical-align:middle">無</td>
                                     </tr>
                                        <td colspan="7">B12MNT0000008WH NEW MANITOU MARVEL PRO 29ER FORK( MILO , DISC ONLY, TAPERED , 2 COLOR OPTIONS ) 1 SHIPPING COST 1 </td>
                                        <td colspan="2"><span>出貨日期：</span><strong>2016-8-23</strong></td>
                                     <tr> 
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

    </script> 


</body>

</html>