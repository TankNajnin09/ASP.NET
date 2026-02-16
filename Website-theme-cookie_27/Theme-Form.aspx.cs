using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Theme_Form : System.Web.UI.Page
{
    public string CurrentTheme = "light-mode"; // Default theme

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Check if theme cookie exists
            HttpCookie themeCookie = Request.Cookies["theme"];
            if (themeCookie != null)
            {
                string savedTheme = themeCookie.Value;
                if (savedTheme == "dark")
                    CurrentTheme = "dark-mode";
                else
                    CurrentTheme = "light-mode";

                ddlTheme.SelectedValue = savedTheme;
            }
        }
    }

    protected void ddlTheme_SelectedIndexChanged(object sender, EventArgs e)
    {
        string selectedTheme = ddlTheme.SelectedValue;

        // Set the cookie for 30 days
        HttpCookie themeCookie = new HttpCookie("theme", selectedTheme);
        themeCookie.Expires = DateTime.Now.AddDays(30);
        Response.Cookies.Add(themeCookie);

        // Apply the theme immediately
        if (selectedTheme == "dark")
            CurrentTheme = "dark-mode";
        else
            CurrentTheme = "light-mode";
    }
}