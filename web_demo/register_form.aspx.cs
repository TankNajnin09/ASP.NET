using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class register_form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        String cs = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=G:\ASP.NET_program\web_demo\App_Data\Database.mdf;Integrated Security=True";
        SqlConnection con = new  SqlConnection(cs);

        string query = "INSERT INTO Users(name,email,gender) VALUES ('" + txtFirstName.Text + "' ,'" + txtEmail.Text + "' ,'" + rblGender.SelectedValue + "')";
        SqlCommand cmd = new SqlCommand(query, con);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

    }
}