using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class User : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Zliczanie ilości pytań w bazie
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        connection.Open();
        string checkuser = "select count(*) from Questions";
        SqlCommand command = new SqlCommand(checkuser, connection);
        int HowManyQuestions = Convert.ToInt32(command.ExecuteScalar().ToString());
        connection.Close();
        //Response.Write(HowManyQuestions);

        if (Session["New"] != null)
        {
            Label1.Text = "Welcome " + Session["New"].ToString();
            Populate();
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("Login.aspx");
    }

    public void Populate()
    {
        SqlCommand cmd = new SqlCommand("SELECT * FROM Questions", new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString));
        cmd.Connection.Open();
        SqlCommand cmd2 = new SqlCommand("SELECT Question FROM Questions", new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString));
        SqlDataReader ddlValues;
        ddlValues = cmd.ExecuteReader();
        cmd2.Connection.Open();
        Question.Text = cmd2.ExecuteScalar().ToString();
        cmd2.Connection.Close();
        DDL1.DataSource = ddlValues;
        DDL1.DataValueField = "A1";
        DDL1.DataTextField = "A2";
        DDL1.DataBind();

        cmd.Connection.Close();
        cmd.Connection.Dispose();
    }
}