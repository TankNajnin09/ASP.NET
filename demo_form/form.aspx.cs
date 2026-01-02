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
        rngbdt.MaximumValue = DateTime.Now.ToShortDateString();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        
        if (!Page.IsValid)
            return;

        lblnm.Text = "Name = " + txtLastName.Text + " " + txtFirstName.Text;

        lblcrs.Text = "Course = " + crslst.Text;

        lblhb.Text = "Hobbies = " + "";

        foreach (ListItem item in chkhb.Items)
        {
            if (item.Selected)
            {
                lblhb.Text += item.Text + " ";
            }
        }

        lblfile.Text = "File Name = " + FileUpload1.FileName;
    }

}