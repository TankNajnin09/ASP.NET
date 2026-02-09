using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class State_Form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    // ViewState button
    protected void Button1_Click(object sender, EventArgs e)
    {
        ViewState["Message"] = TextBox1.Text;
        Label1.Text = "ViewState Message: " + ViewState["Message"].ToString();
    }

    // Create cookie
    protected void Button2_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = new HttpCookie("Greeting");
        cookie.Value = "Hello! Welcome to ASP.NET";
        cookie.Expires = DateTime.Now.AddDays(1);
        Response.Cookies.Add(cookie);

        Label2.Text = "Greeting cookie stored.";
    }

    // Read cookie
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Request.Cookies["Greeting"] != null)
        {
            Label2.Text = "Greeting from Cookie: " +
                          Request.Cookies["Greeting"].Value;
        }
        else
        {
            Label2.Text = "Cookie not found.";
        }
    }

}