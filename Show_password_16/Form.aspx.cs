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
    protected void change_pass_show(object sender, EventArgs e)
    {
        if (chkshow.Checked)
        {
            txtpass.TextMode = TextBoxMode.SingleLine;
        }
        else 
        {
            txtpass.TextMode = TextBoxMode.Password;
        }
    }
}