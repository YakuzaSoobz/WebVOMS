using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class EmployeePages_ProductManager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        PageMenu.Initialise(Page);
        
    }

    protected void ButtonInsert_Click(object sender, EventArgs e)
    {
        

        try
        {
            

            SqlDataSourceProducts.InsertParameters["Product_Name"].DefaultValue = ((TextBox)ProductsGridView.FooterRow.FindControl("TextBoxNewProduct")).Text;
            SqlDataSourceProducts.InsertParameters["Product_Brand"].DefaultValue = ((TextBox)ProductsGridView.FooterRow.FindControl("TextBoxNewBrand")).Text;
            SqlDataSourceProducts.InsertParameters["Product_Description"].DefaultValue = ((TextBox)ProductsGridView.FooterRow.FindControl("TextBoxNewDescription")).Text;
            SqlDataSourceProducts.InsertParameters["Product_Active_Status"].DefaultValue = ((DropDownList)ProductsGridView.FooterRow.FindControl("DropDownListNewActiveStatus")).SelectedValue;

            SqlDataSourceProducts.Insert();
        }
        catch (SqlException ex)
        {
            
            throw;
        }
    }



    protected void ButtonSearch_Click(object sender, EventArgs e)
    {
        try
        {
             if (DropDownListSearch.SelectedIndex == 0)
            {
                SqlDataSourceProducts.FilterExpression = "Product_Name like '{0}%'";
                SqlDataSourceProducts.FilterParameters.Add(new ControlParameter("Product_Name", "TextBoxSearch", "Text"));
                
            }
            else if (DropDownListSearch.SelectedIndex == 1)
            {
                SqlDataSourceProducts.FilterExpression = "Product_Brand like '{0}%'";
                SqlDataSourceProducts.FilterParameters.Add(new ControlParameter("Product_Brand", "TextBoxSearch", "Text"));
            }
        }
        catch (SqlException sqlEx)
        {

            string script = "alert(\"Oops, an error occured while trying to connect to the database!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
        }
    }
    protected void ButtonRefresh_Click(object sender, EventArgs e)
    {
        try
        {


            SqlDataSourceProducts.FilterExpression = "Product_Name like '%'";

        }
        catch (SqlException sqlEx)
        {

            string script = "alert(\"Oops an error occured while trying to connect to the database!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);

            TextBoxSearch.Text = "";
        }
    }
}