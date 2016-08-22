using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class product_list : System.Web.UI.Page
{
    DataFactory df = new DataFactory();
    Product[] products;

    int pageIdx = 1;
    string name = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        //頁數
        if (Request.Params["page"] != null)
        {
            pageIdx = Convert.ToInt32(Request.Params["page"]);
        }

        //搜尋條件
        if (Request.Params["name"] != null)
        {
            string condition = "where ";
            condition += "name = " + name;
            products = ProductFactory.get((pageIdx - 1) * 10, 10, condition);
        }
        else
        {
            products = ProductFactory.getRange((pageIdx-1) * 10, 10);
        }
    }
    public void printProductList()
    {
        string result = "";

        if (products.Length == 0)
        {
            result += "<tr>";
            result += "<td> 搜尋到0筆資料。 </td>";
            result += "<td></td>";
            result += "<td></td>";
            result += "<td></td>";
            result += "<td></td>";
            result += "<td></td>";
            result += "</tr>";
        }
        else
        {
            foreach (Product p in products)
            {
                result += "<tr>";
                result += "<td>" + p.p_id + "</td>";
                result += "<td>" + p.name + "</td>";
                result += "<td>" + p.category_s + "</td>";
                result += "<td>" + p.price + "</td>";
                result += "<td>" + p.stock_qty + "</td>";
                result += "<td class=\"text-center\"><a class='btn btn-info btn-xs' href=\"/product_content.aspx?id="+ p.p_id +" \"><span class=\"glyphicon glyphicon-edit\"></span>"+
                    " 編輯</a> <a href=\"#\" onclick=\"Selectimport('" + p.p_id + "')\" class=\"btn btn-danger btn-xs\"><span class=\"glyphicon glyphicon-import\"></span> 進貨</a></td>";
                result += "</tr>";
            }
        }

        Response.Write(result);
    }

    public void PrintPagination()
    {
        int pageNum = ProductFactory.count()/10;  //this one is wrong
        string result = "";
        result += "<ul class=\"pagination\">";

        for (int i = 1; i <= pageNum; i++)
        {
            if (i == pageIdx)
            {
                result += "<li class=\"active\">" + "<a href=\"#\">"+i+"</a>" + "</li>";
            }
            else
            {
                result += "<li><a href=\"/product_list.aspx?page=" + i + "\">" + i + "</a></li>";
            }
        }

        result += "</ul>";
        Response.Write(result);
    }
}