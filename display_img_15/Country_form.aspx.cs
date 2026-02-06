using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Country_form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        lbl_txt.Text = "Flag Of " + rblcon.SelectedValue;

        if (rblcon.SelectedValue == "India")
        {
            imgFlag.ImageUrl = "~/Images/india.jpg";
        }
        else if (rblcon.SelectedValue == "US")
        {
            imgFlag.ImageUrl = "~/Images/us.png";
        }
        else if (rblcon.SelectedValue == "NewZealand")
        {
            imgFlag.ImageUrl = "~/Images/newzealand.png";
        }
    }
}