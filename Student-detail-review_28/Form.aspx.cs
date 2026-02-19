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

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // Store Basic Details
        Session["Name"] = txtName.Text;
        Session["Email"] = txtEmail.Text;
        Session["Contact"] = txtContact.Text;

        // Store Educational Details
        Session["Board"] = txtBoard.Text;
        Session["Passing"] = txtPassing.Text;
        Session["Percentage"] = txtPercentage.Text;

        Response.Redirect("Review.aspx");
    }
}