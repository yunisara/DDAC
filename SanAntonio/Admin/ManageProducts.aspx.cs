using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ManageProducts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserType"] == null || !Session["UserType"].ToString().Equals("admin"))
            Response.Redirect("~/Login.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
            FileUpload1.SaveAs(Server.MapPath(Request.ApplicationPath.ToString())
                + "//Images//" 
                + FileUpload1.FileName);

        Session["PImagePath"] = "~/Images/" + FileUpload1.FileName;

        AccessDataSource1.Insert();

    }
}