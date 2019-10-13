﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LabelError.Visible = false;
    }
    protected void btnLogin_Click(object sender, EventArgs e)
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
                if (password.Equals(TextBoxPassword.Text))
                {
                    Session["New"] = TextBoxUserName.Text;
                    Session["Role"] = "Customer";
                    Response.Redirect("~/CustomerPages/CustomerAccount.aspx");

                }
                else
                {
                    string script = "alert(\"Password is not correct!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                    Response.Write("Password is not correct");
                }

            }
            else if (temp != 1)
            {
                conn.Open();
                checkuser = "Select count(*) from Employee where Employee_Email='" + TextBoxUserName.Text + "'";
                com = new SqlCommand(checkuser, conn);
                temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                conn.Close();
                if (temp == 1)
                {
                    conn.Open();
                    string checkPasswordQuery = "SELECT Employee_Password FROM Employee where Employee_Email='" + TextBoxUserName.Text + "'";
                    SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
                    string password = passComm.ExecuteScalar().ToString().Trim();
                    if (password == TextBoxPassword.Text.Trim())
                    {
                        string getEmpRole = "SELECT Employee_Position FROM Employee where Employee_Email='" + TextBoxUserName.Text + "'";
                        SqlCommand empCom = new SqlCommand(getEmpRole, conn);
                        string empRole = empCom.ExecuteScalar().ToString().Trim();
                        if (empRole.Equals("Manager"))
                        {
                            Session["New"] = TextBoxUserName.Text;
                            Session["Role"] = "Manager";
                            Response.Redirect("~/ManagerPages/EmployeeManager.aspx");
                        }
                        else
                        {
                            Session["New"] = TextBoxUserName.Text;
                            Session["Role"] = "Employee";
                            Response.Redirect("~/EmployeePages/CustomerManager.aspx");
                        }



                    }
                    else
                    {

                        Response.Write("Password is not correct");
                    }
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
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        if (TextBoxPassword.TextMode.CompareTo(TextBoxMode.Password) != 0)
        {
            String temp = TextBoxPassword.Text;
            TextBoxPassword.TextMode = TextBoxMode.SingleLine;
            TextBoxPassword.Text = temp;
        }
        else
        {
            String temp = TextBoxPassword.Text;
            TextBoxPassword.TextMode = TextBoxMode.Password;
            TextBoxPassword.Text = temp;
        }

        
    }
}