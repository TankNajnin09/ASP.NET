using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class UserPreferences : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // If ViewState has saved preferences, apply them on page load
        if (ViewState["Color"] != null && ViewState["Font"] != null)
        {
            ApplyPreferences();
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        // Save user preferences in ViewState
        ViewState["Color"] = ddlColor.SelectedValue;
        ViewState["Font"] = ddlFont.SelectedValue;

        lblMessage.Text = "Preferences saved in ViewState!";
    }

    protected void btnApply_Click(object sender, EventArgs e)
    {
        if (ViewState["Color"] != null && ViewState["Font"] != null)
        {
            ApplyPreferences();
            lblMessage.Text = "Preferences applied from ViewState!";
        }
        else
        {
            lblMessage.Text = "No preferences saved yet!";
        }
    }

    private void ApplyPreferences()
    {
        string color = ViewState["Color"].ToString();
        string font = ViewState["Font"].ToString();

        lblPreview.ForeColor = Color.FromName(color);
        lblPreview.Font.Name = font;
    }
}   