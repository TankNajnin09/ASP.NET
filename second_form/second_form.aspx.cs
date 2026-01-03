using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class second_form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        btnsub.Attributes.Add("ondblclick", "return double_click();");
    }

    protected void data_sub(object sender, EventArgs e)
    {
        lbltxt.Text = "Normal Text : " + txtnm.Text;
    }
}