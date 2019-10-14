using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class CustomerPages_CustomerQuoteHistory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            PageMenu.Initialise(Page);
            txtGetUser.Text = Session["New"].ToString();
            try
            {
                SqlConnection conn = new SqlConnection("Server=146.230.177.46\\ist3;Database=group16;User ID=group16;Password=78fgg");
                conn.Open();
                string checkuser = "Select Customer_ID from Customer where Cust_Email='" + txtGetUser.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                conn.Close();
                txtGetUser.Text = temp.ToString();
            }
            catch (SqlException exception)
            {
                txtGetUser.Visible = true;
                txtGetUser.Text = "Oops, an error was encountered while connecting to the server :( Our team is looking at the issue! Please retry later!";
            }
            catch (Exception exception)
            {
                txtGetUser.Visible = true;
                txtGetUser.Text = "Oops, an error was encountered while loading this page :( Our team is looking at the issue! Please retry later!";
            }
        }
        catch (Exception)
        {
            txtGetUser.Text = "Oops, an error was encountered while loading this page :( Our team is looking at the issue! Please retry later!";
            
        }
        
    }
   
}