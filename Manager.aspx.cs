using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Manager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] == null)
        {
            Response.Redirect("Login.aspx");
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("Login.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Guid guid = Guid.NewGuid();
            SqlConnection connection = new SqlConnection(ConfigurationManager.
                ConnectionStrings["ConnectionString"].ConnectionString);
            connection.Open();
            string query = "insert into Questions (Id, Question, A1, A2, A3, A4) values (@id, @q, @a1, @a2, @a3, @a4)";
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@id", guid);
            command.Parameters.AddWithValue("@q", TextBox1.Text);
            command.Parameters.AddWithValue("@a1", TextBox2.Text);
            command.Parameters.AddWithValue("@a2", TextBox3.Text);
            command.Parameters.AddWithValue("@a3", TextBox4.Text);
            command.Parameters.AddWithValue("@a4", TextBox5.Text);
            int queryExecutedSuccessfully = command.ExecuteNonQuery();
            if(queryExecutedSuccessfully > 0)
            {
                Response.Write("Question saved");
            }
            else
            {
                Response.Write("Failed to save question");
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}