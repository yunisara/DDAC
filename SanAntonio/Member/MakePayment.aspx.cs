using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Member_MakePayment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserType"] == null || !Session["UserType"].ToString().Equals("user"))
            Response.Redirect("~/Login.aspx");

        if (Session["Username"] == null)
            return;
        
        DataView dv = (DataView)AccessDataSource2.Select(DataSourceSelectArguments.Empty);
        
        if (dv.Count == 0)
            return;

        TextBox2.Text = dv[0].Row["FullName"].ToString();
        TextBox3.Text = dv[0].Row["Email"].ToString();
        TextBox4.Text = dv[0].Row["ContactNo"].ToString();
        TextBox5.Text = dv[0].Row["Address"].ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Member/ViewCart.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["Now"] = DateTime.Now.ToString();
        AccessDataSource3.Insert();
        AccessDataSource1.Update();
        Response.Redirect("~/Member/ViewHistory.aspx");
    }
}