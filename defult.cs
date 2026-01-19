using System;
using System.Globalization;

public partial class _Default : System.Web.UI.Page
{
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
