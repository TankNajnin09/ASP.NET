using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string name = Request.QueryString["name"];
        string role = Session["Role"] != null ? Session["Role"].ToString() : "";

        lblResult.Text = "Name: " + name + "<br/>Role: " + role;
    }
}