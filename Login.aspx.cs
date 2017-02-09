using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        connection.Open();
        string checkuser = "select count(*) from Users where UserName='" + TextBox1.Text + "'";
        SqlCommand command = new SqlCommand(checkuser, connection);
        int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
        connection.Close();
        if (temp == 1)
        {
            connection.Open();
            string passwordQuery = "select Password from Users where UserName='" + TextBox1.Text + "'";
            SqlCommand pass = new SqlCommand(passwordQuery, connection);
            string password = pass.ExecuteScalar().ToString().Replace(" ", "");
            if (password.Equals(TextBox2.Text))
            {
                Session["New"] = TextBox1.Text;
                string roleQuery = "select Role from Users where UserName='" + Session["New"] + "'";
                SqlCommand getRole = new SqlCommand(roleQuery, connection);
                string role = getRole.ExecuteScalar().ToString().Replace(" ", "");
                if(role.Equals("A"))
                {
                    Response.Redirect("Manager.aspx");
                }
                else if(role.Equals("U"))
                {
                    Response.Redirect("User.aspx");
                }
                else
                {
                    Response.Write("Login Failed");
                }
            }
            else
            {
                Response.Write("Password is not correct");
            }
        }
        else
        {
            Response.Write("User " + TextBox1.Text + " does not exist");
        }
        
    }
}