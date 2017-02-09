using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            connection.Open();
            string checkuser = "select count(*) from Users where UserName='"+ UserNameTB.Text +"'";
            SqlCommand command = new SqlCommand(checkuser, connection);
            int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
            connection.Close();
            if (temp == 1)
            {
                Response.Write("User already exists");
            }
        }

    }

    protected void RegisterButton_Click(object sender, EventArgs e)
    {
        try {
            Guid newGuid = Guid.NewGuid();

            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            connection.Open();
            string checkuser = "select count(*) from Users where UserName='" + UserNameTB.Text + "'";
            SqlCommand command = new SqlCommand(checkuser, connection);
            int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
            connection.Close();
            if (temp >= 1)
            {
                Response.Write("User already exists");
            }
            else
            {
                connection.Open();
                string insertQuery = "insert into Users (Id, UserName, Email, Password) values (@id, @username, @email, @passwd)";
                command = new SqlCommand(insertQuery, connection);
                command.Parameters.AddWithValue("@id", newGuid);
                command.Parameters.AddWithValue("@username", UserNameTB.Text);
                command.Parameters.AddWithValue("@email", EmailTB.Text);
                command.Parameters.AddWithValue("@passwd", PasswdTB.Text);
                command.ExecuteNonQuery();
                Response.Redirect("Manager.aspx");
                Response.Write("You are now registered!");
                connection.Close();
            }
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.Message);
        }
    }
}