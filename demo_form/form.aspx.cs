using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        
        if (!Page.IsValid)
            return;

        lblnm.Text = txtLastName.Text + " " + txtFirstName.Text;
        
        lblhb.Text = "";

        foreach (ListItem item in chkhb.Items)
        {
            if (item.Selected)
            {
                lblhb.Text += item.Text + " ";
            }
        }

        lblfile.Text = FileUpload1.FileName;
    }

}