using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["expired"] == "1")
        {
            lblMsg.Text = "Session expired. Please login again.";
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (txtUser.Text == "admin" && txtPass.Text == "admin")
        {
            Session["username"] = txtUser.Text;
            Session["loginTime"] = DateTime.Now;
            Response.Redirect("Dashboard.aspx");
        }
        else
        {
            lblMsg.Text = "Invalid Username or Password";
        }
    }

}