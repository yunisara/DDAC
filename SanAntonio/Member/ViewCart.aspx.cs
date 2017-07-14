using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Member_ViewCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserType"] == null || !Session["UserType"].ToString().Equals("user"))
            Response.Redirect("~/Login.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["OID"] = GridView1.SelectedRow.Cells[0].Text;
        Response.Redirect("~/Member/MakePayment.aspx");
    }
}