using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Menu2.Visible = false;  // Member menu
        Menu3.Visible = false;  // Admin meni
        LinkButton1.Visible = true; // Login button
        LinkButton2.Visible = true; // Register button
        LinkButton3.Visible = false;// Logout button
        LinkButton4.Visible = false;// ChangePSW button

        if (Session["UserType"] != null)
        {
            LinkButton1.Visible = false; // Login button
            LinkButton2.Visible = false; // Register button
            LinkButton3.Visible = true;  // Logout button
            LinkButton4.Visible = true;  // ChangePSW button

            if(Session["UserType"].ToString().Equals("user"))
                Menu2.Visible = true;  // Member menu
            if (Session["UserType"].ToString().Equals("admin"))
                Menu3.Visible = true;  // Admin menu
        }

        if (Session["Username"] != null)
            Label1.Text = Session["Username"].ToString();
        else
            Label1.Text = "Guest";


    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/Login.aspx");
    }

 
}
