using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Review : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblDetails.Text =
                "<b>Name:</b> " + Session["Name"] + "<br/>" +
                "<b>Email:</b> " + Session["Email"] + "<br/>" +
                "<b>Contact:</b> " + Session["Contact"] + "<br/><br/>" +
                "<b>HSC Board:</b> " + Session["Board"] + "<br/>" +
                "<b>Passing Month-Year:</b> " + Session["Passing"] + "<br/>" +
                "<b>Percentage:</b> " + Session["Percentage"] + "%";
        }
    }
}