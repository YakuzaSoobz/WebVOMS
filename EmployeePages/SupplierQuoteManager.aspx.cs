using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class EmployeePages_SupplierQuoteManager : System.Web.UI.Page
{
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
                    SqlDataSourceSupplierQuoteJoinSupplier.FilterExpression = "Supp_Quote_Reference_ID  = {0}";
                    SqlDataSourceSupplierQuoteJoinSupplier.FilterParameters.Add(new ControlParameter("Supp_Quote_Reference_ID", "TextBoxSearch", "Text"));
                }


            }
            else if (DropDownListSearch.SelectedIndex == 1)
            {
                SqlDataSourceSupplierQuoteJoinSupplier.FilterExpression = "Supplier_Rep_FName like '{0}%' OR Supplier_Rep_SName LIKE '{1}%'";
                SqlDataSourceSupplierQuoteJoinSupplier.FilterParameters.Add(new ControlParameter("Supplier_Rep_FName", "TextBoxSearch", "Text"));
                SqlDataSourceSupplierQuoteJoinSupplier.FilterParameters.Add(new ControlParameter("Supplier_Rep_SName", "TextBoxSearch", "Text"));
            }
            else if (DropDownListSearch.SelectedIndex == 2)
            {
                SqlDataSourceSupplierQuoteJoinSupplier.FilterExpression = "Supplier_Name like '{0}%'";
                SqlDataSourceSupplierQuoteJoinSupplier.FilterParameters.Add(new ControlParameter("Supplier_Name", "TextBoxSearch", "Text"));
                
            }
        }
        catch (SqlException sqlEx)
        {

            string script = "alert(\"Oops an error occured while trying to connect to the database!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
        }
    }
    protected void ButtonRefresh_Click(object sender, EventArgs e)
    {
        try
        {


            SqlDataSourceSupplierQuoteJoinSupplier.FilterExpression = "Supplier_Name like '%' ";

        }
        catch (SqlException sqlEx)
        {

            string script = "alert(\"Oops an error occured while trying to connect to the database!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);

            TextBoxSearch.Text = "";
        }
    }
}