using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class List_Form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        for (int i = ListBoxAvailable.Items.Count - 1; i >= 0; i--)
        {
            if (ListBoxAvailable.Items[i].Selected)
            {
                ListBoxSelected.Items.Add(ListBoxAvailable.Items[i]);
                ListBoxAvailable.Items.RemoveAt(i);
            }
        }
    }

    protected void btnRemove_Click(object sender, EventArgs e)
    {
        for (int i = ListBoxSelected.Items.Count - 1; i >= 0; i--)
        {
            if (ListBoxSelected.Items[i].Selected)
            {
                ListBoxAvailable.Items.Add(ListBoxSelected.Items[i]);
                ListBoxSelected.Items.RemoveAt(i);
            }
        }
    }
}