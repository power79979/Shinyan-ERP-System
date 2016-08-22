using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Product 的摘要描述
/// </summary>
public class Product
{
    public string p_id { get; set; }
    public string name { get; set; }
    public string spec { get; set; }
    public string product_type { get; set; }
    public string color { get; set; }
    public string owner { get; set; }
    public string category_l { get; set; }
    public string category_m { get; set; }
    public string category_s { get; set; }
    public double price { get; set; }
    public string invoice_name { get; set; }
    public double invoice_price { get; set; }
    public float min_qty { get; set; }
    public bool status { get; set; }
    public string brand { get; set; }
    public string sub_brand { get; set; }
    public string EAN { get; set; }
    public string product_code { get; set; }
    public string comment { get; set; }
    public string weight { get; set; }
    public string wrapping_material { get; set; }
    public double volume { get; set; }
    public double volume_weight { get; set; }
    public int stock_qty { get; set; }

    public Product(DataRow row)
    {
        this.p_id = (string)row["p_id"];
        this.name = (string)row["name"];
        this.spec = (string)row["spec"];
        this.product_type = (string)row["product_type"];
        this.color = (string)row["color"];
        this.owner = (string)row["owner"];
        try
        {
            this.category_l = (string)row["category_l"];
            this.category_m = (string)row["category_m"];
            this.category_s = (string)row["category_s"];
        }
        catch (Exception e)
        {
            Console.WriteLine(e);
        }
        this.price = (double)row["price"];
        this.invoice_name = (string)row["invoice_name"];
        this.invoice_price = (double)row["invoice_price"];
        this.min_qty = (int)row["min_qty"];
        this.status = (bool)row["status"];
        this.brand = (string)row["brand"];
        this.sub_brand = (string)row["sub_brand"];
        this.EAN = (string)row["EAN"];
        this.product_code = (string)row["product_code"];
        this.comment = (string)row["comment"];
        this.weight = (string)row["weight"];
        this.wrapping_material = (string)row["wrapping_material"];
        this.volume = (double)row["volume"];
        this.volume_weight = (double)row["volume_weight"];
        this.stock_qty = (int)row["stock_qty"];
    }
}

public class ProductFactory
{
    public static Product[] getAll()
    {
        DataFactory df = new DataFactory();
        DataView dv = df.get("select * from product p join category c on p.category_id = c.c_id");

        Product[] result = new Product[dv.Table.Rows.Count];
        int i = 0;
        foreach (DataRow row in dv.Table.Rows)
        {
            Product p = new Product(row);
            result[i] = p;
            i++;
        }

        return result;
    }

    public static Product getSingle(string p_id)
    {
        DataFactory df = new DataFactory();
        DataView dv = df.get("select * from product where p_id = '" + p_id +"'");

        Product result = null;
        foreach (DataRow row in dv.Table.Rows)
        {
            result = new Product(row);
        }

        return result;
    }

    public static Product[] getRange(int from, int count)
    {
        DataFactory df = new DataFactory();
        DataView dv = df.get("select * from product p left join category c on p.category_id = c.c_id " +
            "order by name offset " + from + " rows fetch next " + count + " rows only");

        Product[] result = new Product[dv.Table.Rows.Count];
        int i = 0;
        foreach (DataRow row in dv.Table.Rows)
        {
            Product p = new Product(row);
            result[i] = p;
            i++;
        }

        return result;
    }

    public static Product[] get(int from, int count, string condition)
    {
        DataFactory df = new DataFactory();
        DataView dv = df.get("select * from product p left join category c on p.category_id = c.c_id " + condition +
            "order by name offset " + from + " rows fetch next " + count + " rows only");

        Product[] result = new Product[dv.Table.Rows.Count];
        int i = 0;
        foreach (DataRow row in dv.Table.Rows)
        {
            Product p = new Product(row);
            result[i] = p;
            i++;
        }

        return result;
    }

    public static int count()
    {
        DataFactory df = new DataFactory();
        DataView dv = df.get("select count(*) from product");
        return (int)dv.Table.Rows[0][0];
    }
}