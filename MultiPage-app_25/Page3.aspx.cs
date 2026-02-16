using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Get Session values safely
            string name = "Guest";
            string age = "unknown";

            if (Session["UserName"] != null)
            {
                name = Session["UserName"].ToString();
            }

            if (Session["UserAge"] != null)
            {
                age = Session["UserAge"].ToString();
            }

            // Increment Application-level counter
            if (Application["VisitCount"] == null)
            {
                Application["VisitCount"] = 1;
            }
            else
            {
                Application["VisitCount"] = (int)Application["VisitCount"] + 1;
            }

            // Display message
            lblMessage.Text = "Hello " + name + ", Age: " + age +
                ". Total visitors (Application State): " + Application["VisitCount"].ToString();
        }
    }

    protected void btnVisit_Click(object sender, EventArgs e)
    {
        // Refresh page to update Application State
        Response.Redirect("Page3.aspx");
    }
}