using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class insertData : System.Web.UI.Page
{
    


    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = @"Data Source=.;Initial Catalog=shinyan;Integrated Security=True";
        sds.InsertCommand = insertDatabase(Convert.ToInt32(TextBox1.Text));
        sds.Insert();
    }


    private string insertDatabase(int count)
    {
        string strvalues = "insert into product values ";       

        for (int i = 1; i <= count; i++)
        {
            strvalues += "('A01DS" + stringformat(i) + 
                "ZZ','4 COLOR PINK EYE SHADOW (4g)','420MM x 100MM','Blue/White/Red','Eric','寄賣品',4410,'test_invoice_name',3000,500,default,'SRAM','Red22','testEAN','Y8J79802A','這產品太正點啦','636g','wrapping material','test volume','500g',001,100),";
        }

        strvalues = strvalues.Substring(0,strvalues.Length-1);
        return strvalues;
    }

    private string stringformat(int sss)
    {
        string str = string.Format("{0:0000000}",sss);
        return str;
    }
}