using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class EmployeePages_CustomerQuoteManager : System.Web.UI.Page
{
    public Boolean CreateStatus = false;
    public Boolean EditStatus = false;

    protected void Page_Load(object sender, EventArgs e)
    {
        PageMenu.Initialise(Page); 
        
    }





    protected void ButtonSearch_Click(object sender, EventArgs e)
    {
        try
        {
            if (DropDownListSearch.SelectedIndex == 0)
            {
                int parsedValue;
                if (!int.TryParse(TextBoxSearch.Text, out parsedValue))
                {
                    string script = "alert(\"Only integers can be searched!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                }
                else
                {
                    SqlDataSourceCustomerQuoteJoinCustomer.FilterExpression = "Cust_Quote_Reference_ID  = {0}";
                    SqlDataSourceCustomerQuoteJoinCustomer.FilterParameters.Add(new ControlParameter("Cust_Quote_Reference_ID", "TextBoxSearch", "Text"));
                }


            }
            else if (DropDownListSearch.SelectedIndex == 1)
            {
                SqlDataSourceCustomerQuoteJoinCustomer.FilterExpression = "Cust_FName like '{0}%' OR Cust_SName LIKE '{1}%'";
                SqlDataSourceCustomerQuoteJoinCustomer.FilterParameters.Add(new ControlParameter("Cust_FName", "TextBoxSearch", "Text"));
                SqlDataSourceCustomerQuoteJoinCustomer.FilterParameters.Add(new ControlParameter("Cust_SName", "TextBoxSearch", "Text"));
            }
            else if (DropDownListSearch.SelectedIndex == 2)
            {
                SqlDataSourceCustomerQuoteJoinCustomer.FilterExpression = "Employee_FName like '{0}%' OR Employee_SName like '{1}%'";
                SqlDataSourceCustomerQuoteJoinCustomer.FilterParameters.Add(new ControlParameter("Employee_FName", "TextBoxSearch", "Text"));
                SqlDataSourceCustomerQuoteJoinCustomer.FilterParameters.Add(new ControlParameter("Employee_SName", "TextBoxSearch", "Text"));
            }
        }
        catch (SqlException sqlEx)
        {

            string script = "alert(\"oops an error occured while trying to connect to the database!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
        }

        
    }
    protected void ButtonRefresh_Click(object sender, EventArgs e)
    {
        try
        {
            

            SqlDataSourceCustomerQuoteJoinCustomer.FilterExpression = "Cust_FName like '%' ";
           
        }
        catch (SqlException sqlEx)
        {

            string script = "alert(\"Oops an error occured while trying to connect to the database!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);

            TextBoxSearch.Text = "";
        }
    }
}