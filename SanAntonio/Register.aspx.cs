using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataView dv = (DataView)AccessDataSource1.Select(DataSourceSelectArguments.Empty);

        if (dv.Count == 1)
        {
            Label2.Visible = true;
            return;
        }
        else
        {  
            AccessDataSource1.Insert();
            Response.Redirect("~/Login.aspx");
        }
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.Url.ToString());
    }
}