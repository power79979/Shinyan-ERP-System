<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

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

                        <!-- 表單1 -->
                        <form>
                            <div class="row panel panel-primary">
                                <div class="panel-heading">
                                    <h3 class="panel-title">商品基本資料</h3>
                                </div>
                                <div class="panel-body">

                                    <table class="table table-bordered">
                                        <tr>
                                            <td class="title-col active">品名</td>
                                            <td>
                                                <div class="col-lg-6">
                                                    <input class="form-control input-sm" name="name" />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">品名</td>
                                            <td>
                                                <div class="col-lg-6">
                                                    <input class="form-control input-sm" name="name" />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">品名</td>
                                            <td>
                                                <div class="col-lg-6">
                                                    <input class="form-control input-sm" name="name" />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="title-col active">品名</td>
                                            <td>
                                                <div class="col-lg-6">
                                                    <input class="form-control input-sm" name="name" />
                                                </div>
                                            </td>
                                        </tr>
                                    </table>

                                </div>
                            </div>
                            <!-- end of 表單1 -->

                            <!-- 表單2 -->
                            <div class="row panel panel-primary">
                                <div class="panel-heading clickable" data-toggle="collapse" data-target="#advanced-search">
                                    <h3 class="panel-title">商品進階資料</h3>
                                </div>
                                <div class="collapse in" id="advanced-search">
                                    <div class="panel-body ">

                                        <table class="table table-bordered">

                                            <tr>
                                                <td>
                                                    <div class="form-group col-lg-6">
                                                        <label for="inputdefault">Default input</label>
                                                        <input class="form-control" name="inputdefault" type="tel"/>
                                                    </div>
                                                    <div class="form-group col-lg-6">
                                                        <label for="inputdefault">Default input</label>
                                                        <input class="form-control" name="inputdefault" type="number"/>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                
                                                <td>
                                                    <div class="form-group col-lg-4">
                                                        <label for="inputdefault">Default input</label>
                                                        <textarea name="ta" class="form-control"></textarea>
                                                    </div>
                                                    <div class="form-group col-lg-4">
                                                        <label for="inputdefault">Default input</label>
                                                        <select class="form-control">
                                                            <option>dsa</option>
                                                            <option>dsa</option>
                                                        </select>
                                                    </div>
                                                    <div class="form-group col-lg-4">
                                                        <label for="inputdefault">Default input</label>
                                                        <input class="form-control" name="inputdefault" type="text"/>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <label class="col-lg-2">Radio Buttons:</label>
                                                    <div class="col-lg-10">
                                                        <label class="radio-inline">
                                                            <input type="radio" name="optradio" value="" />Option 1</label>
                                                        <label class="radio-inline">
                                                            <input type="radio" name="optradio" value="" />Option 2</label>
                                                        <label class="radio-inline">
                                                            <input type="radio" name="optradio" value="" />Option 3</label>
                                                    </div>
                                                </td>
                                            </tr>

                                        </table>

                                    </div>
                                </div>
                                <!-- end of 表單2 -->
                            </div>

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
