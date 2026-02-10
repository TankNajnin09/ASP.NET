using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Visitor_Form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Application.Lock();

        if (Application["VisitCount"] == null)
        {
            Application["VisitCount"] = 1;
        }
        else
        {
            Application["VisitCount"] = (int)Application["VisitCount"] + 1;
        }

        lblCount.Text = Application["VisitCount"].ToString();

        Application.UnLock();
    }
    
}