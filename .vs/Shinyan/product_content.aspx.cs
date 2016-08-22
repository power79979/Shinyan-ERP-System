using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class product_content : System.Web.UI.Page
{
    DataFactory df = new DataFactory();
    public Product p;
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.Params["id"];
        p = ProductFactory.getSingle(id);
    }
}