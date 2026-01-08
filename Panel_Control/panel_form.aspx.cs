using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class panel_form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            pnlDetails.Visible = chkShowPanel.Checked;
        }
    }

    protected void chkShowPanel_CheckedChanged(object sender, EventArgs e)
    {
        pnlDetails.Visible = chkShowPanel.Checked;
    }

}