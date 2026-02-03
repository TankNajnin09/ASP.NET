using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Form : System.Web.UI.Page
{
    string cs = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=G:\ASP.NET_program\cascading_drodown\App_Data\Database.mdf;Integrated Security=True";

    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            LoadCountries();
            ddlState.Items.Insert(0, "--Select State--");
        }
    }

    private void LoadCountries()
    {
        
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("SELECT CountryID, CountryName FROM Country", con);
            con.Open();

            ddlCountry.DataSource = cmd.ExecuteReader();
            ddlCountry.DataTextField = "CountryName";
            ddlCountry.DataValueField = "CountryID";
            ddlCountry.DataBind();
        }

        ddlCountry.Items.Insert(0, "--Select Country--");
    }

    protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlState.Items.Clear();

        if (ddlCountry.SelectedIndex == 0)
        {
            ddlState.Items.Insert(0, "--Select State--");
            return;
        }

        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand(
                "SELECT StateID, StateName FROM State WHERE CountryID=@CountryID", con);

            cmd.Parameters.AddWithValue("@CountryID", ddlCountry.SelectedValue);
            con.Open();

            ddlState.DataSource = cmd.ExecuteReader();
            ddlState.DataTextField = "StateName";
            ddlState.DataValueField = "StateID";
            ddlState.DataBind();
        }

        ddlState.Items.Insert(0, "--Select State--");
    }
}