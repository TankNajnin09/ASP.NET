using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        // Store hidden field value in Session (so Page2 can access it)
        Session["Role"] = hfRole.Value;

        // Send name using QueryString
        Response.Redirect("Page2.aspx?name=" + txtName.Text);
    }

}