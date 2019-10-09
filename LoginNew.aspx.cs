using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class LoginNew : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LabelError.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        

        try
        {
            SqlConnection conn = new SqlConnection("Server=146.230.177.46\\ist3;Database=group16;User ID=group16;Password=78fgg");
            conn.Open();
            string checkuser = "Select count(*) from Customer where Cust_Email='" + TextBoxUserName.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "SELECT Cust_Password FROM Customer where Cust_Email='" + TextBoxUserName.Text + "'";
                SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
                string password = passComm.ExecuteScalar().ToString().Trim();
                if (password == TextBoxPassword.Text.Trim())
                {
                    Session["New"] = TextBoxUserName.Text;   
                    Response.Redirect("~/Default.aspx");

                }
                else
                {

                    Response.Write("Password is not correct");
                }

            }
            else
            {
                Response.Write("Username is not present");
            }
        }
        catch (SqlException exception)
        {
            LabelError.Visible = true;
            LabelError.Text = "Oops, an error was encountered while connecting to the server :( Our team is looking at the issue! Please retry later!";
        }
        catch (Exception exception)
        {
            LabelError.Visible = true;
            LabelError.Text = "Oops, an error was encountered while loading this page :( Our team is looking at the issue! Please retry later!";
        }
    }
}