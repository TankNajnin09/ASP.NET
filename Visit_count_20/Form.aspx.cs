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
    protected void btnSave_Click(object sender, EventArgs e)
    {
        ViewState["UserName"] = txtName.Text;
        lblResult.Text = "Value saved in ViewState";
    }

    protected void btnLoad_Click(object sender, EventArgs e)
    {
        if (ViewState["UserName"] != null)
        {
            txtName.Text = ViewState["UserName"].ToString();
            lblResult.Text = "Value loaded from ViewState";
        }
    }

}