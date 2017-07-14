using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangePWD : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserType"] == null || !Session["UserType"].ToString().Equals("user"))
            Response.Redirect("~/Login.aspx");
        Label2.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["Password"].ToString() == TextBox1.Text)
        {
            Label3.Visible = false;
            Button1.Visible = false;
            Button2.Visible = false;
            TextBox1.Visible = false;
            GridView1.Visible = true;
        }
        else
        {
            Label2.Visible = true;
            TextBox1.Text = "";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.Url.ToString());
    }
}