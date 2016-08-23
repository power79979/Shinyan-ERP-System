﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AccountAdmin.aspx.cs" Inherits="AccountAdmin" %>

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
     

        #advanced-info td {
            text-align:center;
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
                                                                    
                          <!-- 權限等級 -->
                          <form>
                            <div class="row panel panel-primary">
                                <div class="panel-heading">
                                    <h3 class="panel-title">權限等級</h3>
                                </div>
                                <div class="panel-body">

                                    <table class="table table-bordered">
                                        <tr>
                                            <td class="title-col active">權限等級</td>
                                            <td>
                                                <div class="form-group col-lg-4">
                                                      <select class="form-control">
                                                            <option>A</option>
                                                            <option>B</option>
                                                            <option>C</option>
                                                        </select>
                                                </div>
                                            </td>
                                        </tr>                                
                                    </table>
                                </div>
                            </div>
                            <!-- end of 權限等級 -->                    
                        
                        
                           <!-- 表單 權限設定-->
                            <div class="row panel panel-primary">
                                <div class="panel-heading clickable" data-toggle="collapse" data-target="#advanced-search3">
                                    <h3 class="panel-title">權限內容設定???尚未確定</h3>
                                </div>
                                <div class="collapse in" id="advanced-search3">
                                    <div class="panel-body ">

                                        <table class="table table-bordered">

                                             <tr>
                                            <td class="title-col active">權限設定</td>
                                            <td>
                                                <div class="form-group col-lg-4">
                                                      <select class="form-control">
                                                            <option>A</option>
                                                            <option>B</option>
                                                            <option>c</option>
                                                        </select>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">*物流配送方式</td>
                                            <td>
                                                <div class="col-lg-8">
                                                        <label class="radio-inline">
                                                            <input type="radio" name="optradio" value="" />EMS</label>
                                                        <label class="radio-inline">
                                                            <input type="radio" name="optradio" value="" />Fedex</label>
                                                        <label class="radio-inline">
                                                            <input type="radio" name="optradio" value="" />DHL</label>
                                                       <label class="radio-inline">
                                                            <input type="radio" name="optradio" value="" />TNT</label>
                                                       <label class="radio-inline">
                                                            <input type="radio" name="optradio" value="" />掛號小包</label>
                                                       <label class="radio-inline">
                                                            <input type="radio" name="optradio" value="" />國際包裹</label>
                                                       <label class="radio-inline">
                                                            <input type="radio" name="optradio" value="" />其他</label>
                                                       <label class="radio-inline">
                                                            <input type="radio" name="optradio" value="" />USPS(集貨)高雄</label>
                                                       <label class="radio-inline">
                                                            <input type="radio" name="optradio" value="" />USPS(集貨)扣美國倉</label>
                                                    </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">*平台</td>
                                            <td>
                                               <div class="col-lg-10">
                                                        <label class="radio-inline">
                                                            <input type="radio" name="optradio" value="" />Order</label>
                                                        <label class="radio-inline">
                                                            <input type="radio" name="optradio" value="" />官網</label>
                                                        <label class="radio-inline">
                                                            <input type="radio" name="optradio" value="" />ebay</label>
                                                       <label class="radio-inline">
                                                            <input type="radio" name="optradio" value="" />Yahoo拍賣</label>
                                                       <label class="radio-inline">
                                                            <input type="radio" name="optradio" value="" />露天拍賣</label>
                                                       <label class="radio-inline">
                                                            <input type="radio" name="optradio" value="" />PCHOME商店街</label>
                                                     </div>
                                            </td>
                                        </tr>                                 
                                         <tr>
                                            <td class="title-col active">ebay帳號</td>
                                            <td>
                                                <div class="col-lg-4">
                                                    <input class="form-control input-sm" name="name" />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">paypal交易帳號</td>
                                            <td>
                                                <div class="col-lg-4">
                                                    <input class="form-control input-sm" name="name" />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">*購買日期</td>
                                            <td>
                                                 <div class="form-group col-lg-4">                                        
                                                     <input type="date" class="form-control"/>                                       
                                                 </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">出貨日期</td>
                                            <td>
                                                 <div class="form-group col-lg-4">                                        
                                                     <input type="date" class="form-control"/>                                       
                                                 </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">*付款方式</td>
                                            <td>
                                              <div class="col-lg-10">
                                                        <label class="radio-inline">
                                                            <input type="radio" name="optradio" value="" />PayPal</label>
                                                        <label class="radio-inline">
                                                            <input type="radio" name="optradio" value="" />TT</label>
                                                        <label class="radio-inline">
                                                            <input type="radio" name="optradio" value="" />西聯</label>
                                                       <label class="radio-inline">
                                                            <input type="radio" name="optradio" value="" />取貨付款</label>
                                                       <label class="radio-inline">
                                                            <input type="radio" name="optradio" value="" />貨到付款</label>
                                                       <label class="radio-inline">
                                                            <input type="radio" name="optradio" value="" />ATM轉帳</label>
                                                     </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">運費</td>
                                            <td>
                                                  <div class="form-group col-lg-4">
                                                      <select class="form-control">
                                                          <option>--請選擇--</option>
                                                          <option>TWD(台幣)</option>
                                                          <option>USD(美金)</option>
                                                          <option>GBP(英鎊)</option>
                                                          <option>AUD(澳幣)</option>
                                                          <option>EUR(歐元)</option>
                                                          <option>CHF(瑞士法郎)</option>
                                                          <option>CAD(加拿大幣)</option>
                                                          <option>RMB(人民幣)</option> 
                                                        </select>
                                                </div>

                                                <div class="col-lg-3">
                                                   <input class="form-control input-sm" name="name" />
                                                </div>
                                               
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">退運費</td>
                                            <td>
                                                <div class="col-lg-4">
                                                    <input class="form-control input-sm" name="name" />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">其他費用</td>
                                            <td>
                                                 <div class="form-group col-lg-3">
                                                      <select class="form-control">
                                                          <option>--請選擇--</option>
                                                          <option>TWD(台幣)</option>
                                                          <option>USD(美金)</option>
                                                          <option>GBP(英鎊)</option>
                                                          <option>AUD(澳幣)</option>
                                                          <option>EUR(歐元)</option>
                                                          <option>CHF(瑞士法郎)</option>
                                                          <option>CAD(加拿大幣)</option>
                                                          <option>RMB(人民幣)</option> 
                                                        </select>
                                                </div>

                                                <div class="col-lg-3">
                                                   <input class="form-control input-sm" name="name" />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">其他費用備註</td>
                                            <td>
                                                 <div class="form-group col-lg-4">
                                                  <textarea name="ta" class="form-control"></textarea>
                                                </div>
                                            </td>
                                        </tr>
                                           <tr>
                                            <td class="title-col active">其他收入</td>
                                            <td>
                                                <div class="form-group col-lg-3">
                                                      <select class="form-control">
                                                          <option>--請選擇--</option>
                                                          <option>TWD(台幣)</option>
                                                          <option>USD(美金)</option>
                                                          <option>GBP(英鎊)</option>
                                                          <option>AUD(澳幣)</option>
                                                          <option>EUR(歐元)</option>
                                                          <option>CHF(瑞士法郎)</option>
                                                          <option>CAD(加拿大幣)</option>
                                                          <option>RMB(人民幣)</option> 
                                                        </select>
                                                </div>

                                                <div class="col-lg-3">
                                                   <input class="form-control input-sm" name="name" />
                                                </div>
                                            </td>
                                        </tr>
                                           <tr>
                                            <td class="title-col active">其他收入備註</td>
                                            <td>
                                                 <div class="form-group col-lg-4">
                                                  <textarea name="ta" class="form-control"></textarea>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">ebay成交費</td>
                                            <td>
                                                <div class="form-group col-lg-3">
                                                      <select class="form-control">
                                                          <option>--請選擇--</option>
                                                          <option>TWD(台幣)</option>
                                                          <option>USD(美金)</option>
                                                          <option>GBP(英鎊)</option>
                                                          <option>AUD(澳幣)</option>
                                                          <option>EUR(歐元)</option>
                                                          <option>CHF(瑞士法郎)</option>
                                                          <option>CAD(加拿大幣)</option>
                                                          <option>RMB(人民幣)</option> 
                                                        </select>
                                                </div>

                                                <div class="col-lg-3">
                                                   <input class="form-control input-sm" name="name" />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">保價</td>
                                            <td>
                                                <div class="form-group col-lg-3">
                                                      <select class="form-control">
                                                          <option>--請選擇--</option>
                                                          <option>TWD(台幣)</option>
                                                          <option>USD(美金)</option>
                                                          <option>GBP(英鎊)</option>
                                                          <option>AUD(澳幣)</option>
                                                          <option>EUR(歐元)</option>
                                                          <option>CHF(瑞士法郎)</option>
                                                          <option>CAD(加拿大幣)</option>
                                                          <option>RMB(人民幣)</option> 
                                                        </select>
                                                </div>

                                                <div class="col-lg-3">
                                                   <input class="form-control input-sm" name="name" />
                                                </div>
                                            </td>
                                        </tr>
                                           <tr>
                                            <td class="title-col active">保價金額</td>
                                            <td>
                                                <div class="col-lg-4">
                                                    <input class="form-control input-sm" name="name" />
                                                </div>
                                            </td>
                                        </tr>
                                           <tr>
                                            <td class="title-col active">淨重(公克)</td>
                                            <td>
                                                <div class="col-lg-4">
                                                    <input class="form-control input-sm" name="name" />
                                                </div>
                                            </td>
                                        </tr>
                                           <tr>
                                            <td class="title-col active">毛重(公克)加上包裝的重量</td>
                                            <td>
                                               <div class="form-group col-lg-4">
                                                  <textarea name="ta" class="form-control"></textarea>
                                                </div>
                                            </td>
                                        </tr>
                                           <tr>
                                            <td class="title-col active">Fedex服務</td>
                                            <td>
                                               <div class="form-group col-lg-4">
                                                      <select class="form-control">
                                                          <option>--請選擇--</option>
                                                          <option>International Economy</option>
                                                          <option>International Priority</option>
                                                        </select>
                                                </div>
                                            </td>
                                        </tr>
                                           <tr>
                                            <td class="title-col active">Fedex包裝</td>
                                            <td>
                                               <div class="form-group col-lg-4">
                                                      <select class="form-control">
                                                          <option>--請選擇--</option>
                                                          <option>自價包裝</option>
                                                          <option>FedEx Pak</option>
                                                          <option>FedEx Box</option>
                                                          <option>FedEx Tube</option>
                                                          <option>FedEx Envelope</option>
                                                          <option>FedEx 10KG Box</option>
                                                          <option>FedEx 25KG Box</option>
                                                       </select>
                                                </div>
                                            </td>
                                        </tr>
                                           <tr>
                                            <td class="title-col active">長/寛/高</td>
                                            <td>
                                                <div class="form-inline">
                                                    長(cm)<input class="form-control input-sm" name="name" />
                                                    寬(cm)<input class="form-control input-sm" name="name" />
                                                    高(cm)<input class="form-control input-sm" name="name" />
                                                </div>
                                            </td>
                                        </tr>
                                           <tr>
                                            <td class="title-col active">備註</td>
                                            <td>
                                                  <div class="form-group col-lg-8">                                                        
                                                        <textarea name="ta" class="form-control"></textarea>
                                                   </div>
                                            </td>
                                        </tr>
                                         <tr>
                                            <td class="title-col active">訂單滙率</td>
                                            <td>
                                                <div class="col-lg-4">
                                                    <input class="form-control input-sm" name="name" />
                                                </div>
                                            </td>
                                        </tr>                                    
                                                     

                                        </table>

                                    </div>
                                </div>                                
                            </div>
                            <!-- end of 表單3 訂單資料 -->

                                                  

                            <div class="row" align="center">
                                <input type="submit" value="送出" class="btn btn-primary btn-lg" />
                            </div>

                        </form>
                        <!--form 結束-->

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
