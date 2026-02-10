using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_Form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["User"] != null)
        {
            lblLoginMsg.ForeColor = System.Drawing.Color.Green;
            lblLoginMsg.Text = "Logged in as: " + Session["User"].ToString();
        }
    }
     protected void btnLogin_Click(object sender, EventArgs e)
    {
        // Simple authentication (for demo only)
        if (txtUser.Text == "admin" && txtPass.Text == "admin")
        {
            Session["User"] = txtUser.Text;   // Store login in Session
            lblLoginMsg.ForeColor = System.Drawing.Color.Green;
            lblLoginMsg.Text = "Login Successful! Welcome " + Session["User"];
        }
        else
        {
            lblLoginMsg.ForeColor = System.Drawing.Color.Red;
            lblLoginMsg.Text = "Invalid Username or Password!";
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // ViewState automatically preserves txtData value
        lblResult.Text = "You entered: " + txtData.Text;
    }
}