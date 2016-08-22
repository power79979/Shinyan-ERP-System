using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/// <summary>
/// DataFactory
/// </summary>
public class DataFactory
{
    SqlDataSource sds = new SqlDataSource();

    public DataFactory()
    {
        sds.ConnectionString = @"Data Source=124.218.91.9;Persist Security Info=True;User ID=cr3;Password=cr3";
    }

    public DataView getAll(string table)
    {
        sds.SelectCommand = "SELECT * FROM @table";
        sds.SelectParameters.Add("table", table);
        DataView result = sds.Select(DataSourceSelectArguments.Empty) as DataView;

        return result;
    }
    public DataView get(string sql)
    {
        sds.SelectCommand = sql;

        DataView result = sds.Select(DataSourceSelectArguments.Empty) as DataView;

        return result;
    }
    public DataView get(string table, string condition)
    {
        sds.SelectCommand = "SELECT * FROM @table WHERE @condition";
        sds.SelectParameters.Add("table", table);
        sds.SelectParameters.Add("condition", condition);

        DataView result = sds.Select(DataSourceSelectArguments.Empty) as DataView;

        return result;
    }
    public void insert(string sqlstr)
    {
        sds.InsertCommand = sqlstr;
        sds.Insert();
    }
    public void update(string sqlstr)
    {
        sds.UpdateCommand = sqlstr;
        sds.Update();
    }
    public void delete(string table, string column, string val)
    {
        sds.DeleteCommand = "DELETE FROM @table WHERE @column = @val";
        sds.DeleteParameters.Add("table", table);
        sds.DeleteParameters.Add("column", column);
        sds.DeleteParameters.Add("val", val);
    }
}