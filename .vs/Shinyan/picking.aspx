<%@ Page Language="C#" AutoEventWireup="true" CodeFile="picking.aspx.cs" Inherits="picking" %>

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
        .well {
            height: 320px;
        }
        .auto-style1       
        {

        }

        .table-color tr td {
            border: thin solid #C4E3F3;
            padding: 5px;
        }
        .table-color  th
        {
            border: medium solid #C4E3F3;
        }
        .pull-right
        {
            margin-left:5px;
            margin-bottom:10px;
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
                                                <span id="search_concept">訂單編號</span> <span class="caret"></span>
                                            </button>
                                            <ul class="dropdown-menu" role="menu">
                                                <li><a href="#name">客戶帳號</a></li>                                               
                                                <li><a href="#brand">出貨編號</a></li>
                                                <li><a href="#brand">Transaction ID:</a></li>
                                                
                                            </ul>
                                        </div>
                                        <input type="hidden" name="search_param" value="all" id="search_param"/>
                                        <input type="text" class="form-control" name="x" placeholder="請輸入關鍵字"/>
                                        <span class="input-group-btn">
                                            <button class="btn btn-primary" type="button"><span class="glyphicon glyphicon-search"></span>搜尋</button>
                                        </span>
                                    </div>
                                </div>
                            </div>                            
                            
                            <!-- 進階搜尋 -->
                            <button class="btn btn-link" data-toggle="collapse" data-target="#advanced-search">進階搜尋</button>

                            <div id="advanced-search" class="collapse container">                            
                                    <div class="form-group col-lg-4 well">
                                        <label>進貨日期:</label><br />
                                        從<input type="date" class="form-control"/>
                                        到<input type="date" class="form-control"/>
                                        <label>付款日期:</label><br />
                                        從<input type="date" class="form-control"/>
                                        到<input type="date" class="form-control"/>
                                    </div>
                                    <div class="form-group col-lg-4 well">
                                        <label>物流配送方式</label><br />
                                        <select>
                                            <option>EMS</option>
                                            <option>FEDEX</option>
                                            <option>DHL</option>
                                            <option>掛號小包</option>
                                            <option>國際包裹</option>
                                            <option>TNT</option>
                                            <option>7-11</option>
                                            <option>全家取貨付款</option>
                                            <option>郵局快捷</option>
                                            <option>USPS美國郵政</option>
                                            <option>其他</option>
                                        </select><br />
                                        <label>EBAY帳號</label><br />
                                        <select>
                                            <option>ABBS1005</option>
                                            <option>jAck3310</option>
                                            <option>AntiMan</option>
                                            <option>Hello World</option>                                                                                    
                                        </select><br /><br />
                                         <label>合併訂單</label><br />
                                        <select>
                                            <option>已合併訂單</option>
                                            <option>合併成的新訂單</option>                                                                                                                         
                                        </select><br />
                                       
                                    </div>
                                    <div class="form-group col-lg-4 well">
                                        <label>運費:</label><br />
                                      <input type="text" /><br /><br />                                       
                                        <label>商品名稱:</label><br />
                                      <input type="text" /><br /><br />
                                      <label>客戶姓名:</label><br />
                                      <input type="text" /><br /><br /><br />
                                    
                                   
                               </div>
                                
                         
                            </div>

                        </div>
                        <!--搜尋列結束-->

                        <!-- 列表 -->
                       <div class="row panel">
                            <a href="#" class="btn btn-primary">選擇全部</a>
                            <a href="#" class="btn btn-primary">清除勾選</a>

                            <a href="#" class="btn btn-primary pull-right">回到處理中</a>
                            <a href="#" class="btn btn-primary pull-right">下載揀貨單</a>
                            <a href="#" class="btn btn-primary pull-right">下載集貨單</a>

                            <div class="custyle">
                                
                                <table class="nav-justified table-color">
                                    <tr>
                                        <th>選取:</th>
                                        <th>編輯:</th>
                                        <th colspan="2">訂單編號:</th>
                                        <th>ebay Account:</th>
                                        <th>客戶帳號:</th>
                                        <th>購買日期:</th>
                                        <th>付款日期:</th>
                                        <th>資料狀態:</th>
                                        <th>貨運編號:</th>
                                        <th>訂單狀態:</th>
                                        <th>總金額:</th>
                                        <th>使用者:</th>
                                    </tr>
                                    <tr>
                                        
                                        <td class="auto-style1"  rowspan="2">                                                                             
                                        <input type ="checkbox" />                                       
                                        </td>
                                        
                                        <td class="auto-style1">
                                            <a href="#"> <img src="img/edit.png" /></a>

                                        </td>
                                        <td class="auto-style1">541</td>
                                        <td class="auto-style1">EF0730N0031</td>
                                        <td class="auto-style1">&nbsp;AntMAN&nbsp;</td>
                                        <td class="auto-style1">ironMan</td>
                                        <td class="auto-style1">2016-07-29</td>
                                        <td class="auto-style1">2016-08-01</td>
                                        <td class="auto-style1">
                                            <img src="img/icon_air.png" /></td>
                                        <td class="auto-style1">
                                            &nbsp;</td>
                                        <td class="auto-style1">揀貨中</td>
                                        <td class="auto-style1">&nbsp;8787 USD</td>
                                        <td rowspan="2">Ray</td>
                                    </tr>

                                    <tr>
                                        <td colspan="9">B12MNT0000008WH NEW MANITOU MARVEL PRO 29ER FORK( MILO , DISC ONLY, TAPERED , 2 COLOR OPTIONS ) 1 SHIPPING COST 1</td>
                                        <td colspan="2"><span class="auto-style3">出貨日期</span><span class="auto-style2">:</span><strong>2016-08-10</strong></td>
                                    </tr>
                                     <tr>
                                        <td class="auto-style1" rowspan="2">
                                            <input type ="checkbox" />  </td>
                                        <td class="auto-style1">
                                              <a href="#"> <img src="img/edit.png" /></a>
                                        </td>
                                        <td class="auto-style1">541</td>
                                        <td class="auto-style1">EF0730N0031</td>
                                        <td class="auto-style1">&nbsp;AntMAN&nbsp;</td>
                                        <td class="auto-style1">ironMan</td>
                                        <td class="auto-style1">2016-07-29</td>
                                        <td class="auto-style1">2016-08-01</td>
                                        <td class="auto-style1">
                                            <img src="img/icon_air.png" /></td>
                                        <td class="auto-style1">
                                            &nbsp;</td>
                                        <td class="auto-style1">揀貨中</td>
                                        <td class="auto-style1">&nbsp;8787 USD</td>
                                        <td rowspan="2">Ray</td>
                                    </tr>

                                    <tr>
                                        <td colspan="9">B12MNT0000008WH NEW MANITOU MARVEL PRO 29ER FORK( MILO , DISC ONLY, TAPERED , 2 COLOR OPTIONS ) 1 SHIPPING COST 1</td>
                                        <td colspan="2"><span class="auto-style3">出貨日期</span><span class="auto-style2">:</span><strong>2016-08-10</strong></td>
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
