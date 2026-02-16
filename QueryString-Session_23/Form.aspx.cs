using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Check if QueryString exists
            if (Request.QueryString["Age"] != null)
            {
                string name = Session["UserName"] != null
                              ? Session["UserName"].ToString()
                              : "Unknown";

                string age = Request.QueryString["Age"];

                lblResult.Text = "Name: " + name + "<br/>Age: " + age;

                pnlInput.Visible = false; // Hide input after submit
            }
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // Store Name in Session
        Session["UserName"] = txtName.Text;

        // Redirect to same page using QueryString (Age)
        Response.Redirect("Form.aspx?Age=" + txtAge.Text);
    }

}