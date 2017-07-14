using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.Url.ToString());
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataView dv = (DataView)AccessDataSource1.Select(DataSourceSelectArguments.Empty);

        if (dv.Count == 0)
        {
            Label1.Text = "Username and Password not match!";
            return;
        }
        
        Session["Username"] = dv[0].Row["Username"].ToString();
        Session["UserType"] = dv[0].Row["UserType"].ToString();
        Session["Password"] = dv[0].Row["Password"].ToString();

        if(Session["PID"] != null)
            Response.Redirect("~/Products.aspx");
        if(Session["UserType"].ToString().Equals("admin"))
            Response.Redirect("~/Admin/Default.aspx");
        if(Session["UserType"].ToString().Equals("user"))
            Response.Redirect("~/Member/Default.aspx");

    }
}