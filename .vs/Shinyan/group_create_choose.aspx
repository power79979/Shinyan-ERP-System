<%@ Page Language="C#" AutoEventWireup="true" CodeFile="group_create_choose.aspx.cs" Inherits="group_create_choose" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>選擇子商品</title>

    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/custom.css" rel="stylesheet" />

    <style>
        button {
            margin: 5px;
        }

        .title-col {
            width: 250px;
            color: black;
            text-align: right;
        }

        select {
            margin-left: 15px;
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
    <form id="form1" runat="server">

        <div class="container">
            <div class="row">

                <div class="panel-body">

                    <div class="row panel panel-primary ">
                        <div class="panel-heading">
                            <h3 class="panel-title">搜尋</h3>
                        </div>
                        <div class="panel-body">
                            <!-- 搜尋列內容 -->
                            <div class="col-xs-12 col-xs-offset-3">

                                <label>
                                    <input type="text" class="form-control" name="x" placeholder="請輸入商品名稱" />
                                </label>
                                <label>
                                    <input type="text" class="form-control " name="x" placeholder="請輸入關商品編號" />
                                </label>
                                <span class="input-group-btn">

                                    <button class="btn btn-primary" type="button"><span class="glyphicon glyphicon-search"></span>搜尋</button>

                                    <button class="btn btn-primary" type="button"><span class="glyphicon glyphicon-erase"></span>清空</button>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!---下面--->

        <div class="container">
            <div class="row">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                          

                            <th>選取</th>
                            <th>商品編號</th>
                            <th>商品名稱</th>
                            
                          
                            <th>商品分類</th>
                            <th>總庫存數</th>
                            <th>平均成本</th>
                            <th>最近成本</th>

                        </tr>
                    </thead>
                    <tr>
                        <td>選取<a href="#"<span class="glyphicon glyphicon-plus"></span></a></td>
                        <td>B03EA70000001BL</td>
                        <td>NEW EASTON EA70 +/- 6 DEGREE ROAD STEM(100 MM TRAVEL)</td>
                        <td>未分類</td>
                        <td>100</td>
                        <td>40000</td>
                        <td>55600</td>
                    </tr>

                     <tr>
                        <td>選取<a href="#"<span class="glyphicon glyphicon-plus"></span></a></td>
                        <td>B03EA70000001BL</td>
                        <td>NEW EASTON EA70 +/- 6 DEGREE ROAD STEM(100 MM TRAVEL)</td>
                        <td>未分類</td>
                        <td>100</td>
                        <td>40000</td>
                        <td>55600</td>
                    </tr>
                    

                </table>
            </div>
        </div>

    </form>
</body>
</html>
