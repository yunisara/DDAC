using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["PID"] != null)
        {
            Label2.Text = Session["PID"].ToString();
            Label3.Text = Session["PName"].ToString();
            Label4.Text = Session["PPrice"].ToString();
            DropDownList1.Text = Session["Qty"].ToString();
            Label5.Text = Session["Total"].ToString();
            Panel1.Visible = true;
        }
        // Clear selected item
        Session["PID"] = null;
        Session["PName"] = null;
        Session["PPrice"] = null;
        Session["Qty"] = null;
        Session["Total"] = null;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label2.Text = GridView1.SelectedRow.Cells[0].Text;
        Label3.Text = GridView1.SelectedRow.Cells[1].Text;
        // Template field
        Label label1 = (Label)GridView1.SelectedRow.FindControl("Label1");
        Label4.Text = label1.Text;
        Label5.Text = Label4.Text;
        Panel1.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        double result = 0.0;
        result = Convert.ToDouble(Label4.Text) * Convert.ToInt16(DropDownList1.Text);
        Label5.Text = result.ToString("0.00");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["PID"] = Label2.Text;
        Session["PName"] = Label3.Text;
        Session["PPrice"] = Label4.Text;
        Session["Qty"] = DropDownList1.Text;
        Session["Total"] = Label5.Text;

        if (Session["UserType"] == null || !Session["UserType"].ToString().Equals("user"))
            Response.Redirect("~/Login.aspx");

        Session["Now"] = DateTime.Now.ToString();
        AccessDataSource2.Insert();
        Response.Redirect("~/Member/ViewCart.aspx");
    }
}