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
            // Check if the cookie exists and display the saved color
            HttpCookie colorCookie = Request.Cookies["FavoriteColor"];
            if (colorCookie != null)
            {
                lblPreference.Text = "Your saved color preference is: " + colorCookie.Value;
                ddlColors.SelectedValue = colorCookie.Value; // Optional: pre-select in dropdown
            }
        }
    }

    protected void btnSetColor_Click(object sender, EventArgs e)
    {
        string selectedColor = ddlColors.SelectedValue;

        // Create a cookie
        HttpCookie colorCookie = new HttpCookie("FavoriteColor");
        colorCookie.Value = selectedColor;
        colorCookie.Expires = DateTime.Now.AddDays(30); // Cookie expires in 30 days

        Response.Cookies.Add(colorCookie);

        lblPreference.Text = "Your color preference has been saved: " + selectedColor;
    }
}