using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Tech_Form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        lbl_txt.Text = rbltech.SelectedValue;
    }
}