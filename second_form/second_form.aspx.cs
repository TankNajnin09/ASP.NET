using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

public partial class second_form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }
    // (1) Single Click
    protected void btnShow_Click(object sender, EventArgs e)
    {
        lblResult.Text = txtInput.Text;
    }

    // (2) Double Click
    protected void btnDoubleClick_Server(object sender, EventArgs e)
    {
        TextInfo textInfo = CultureInfo.CurrentCulture.TextInfo;
        string properText = textInfo.ToTitleCase(txtInput.Text.ToLower());
        lblResult.Text = properText;
    }
}