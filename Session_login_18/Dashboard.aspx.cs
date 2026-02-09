using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("Login.aspx?expired=1");
        }

        // Session timeout check (10 seconds for demo)
        TimeSpan duration = DateTime.Now - Convert.ToDateTime(Session["loginTime"]);

        if (duration.TotalSeconds > 10)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx?expired=1");
        }

        lblUser.Text = "Hello " + Session["username"];
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }
}