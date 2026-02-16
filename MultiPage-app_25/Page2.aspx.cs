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
        if (!IsPostBack)
        {
            // Get name from QueryString
            string name = Request.QueryString["name"];
            if (!string.IsNullOrEmpty(name))
            {
                lblName.Text = Server.UrlDecode(name);
                // Store name in Session
                Session["UserName"] = name;
            }
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // Store age in Session
        Session["UserAge"] = txtAge.Text.Trim();
        Response.Redirect("Page3.aspx");
    }
}