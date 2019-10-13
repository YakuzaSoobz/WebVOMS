using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class EmployeePages_CustomerManager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        PageMenu.Initialise(Page);
        


    }

    protected void lbInsert_Click(object sender, EventArgs e)
    {

        try
        {
            SQLCustomerManager.InsertParameters["Cust_FName"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtFName")).Text;
            SQLCustomerManager.InsertParameters["Cust_SName"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtSurname")).Text;
            SQLCustomerManager.InsertParameters["Cust_DOB"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtDOB")).Text;
            SQLCustomerManager.InsertParameters["Cust_Phone_No"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtCustPhone")).Text;
            SQLCustomerManager.InsertParameters["Cust_Alt_Phone_No"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtCustAltPhone")).Text;
            SQLCustomerManager.InsertParameters["Cust_Email"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtEmail")).Text;
            SQLCustomerManager.InsertParameters["Cust_Password"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtPassword")).Text;
            SQLCustomerManager.InsertParameters["Cust_Street_Addr_1"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtCustStrAddress")).Text;
            SQLCustomerManager.InsertParameters["Cust_Street_Addr_2"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtCustStrAddress2")).Text;
            SQLCustomerManager.InsertParameters["Cust_Suburb"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtSuburb")).Text;
            SQLCustomerManager.InsertParameters["Cust_City"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtCity")).Text;
            SQLCustomerManager.InsertParameters["Cust_Province"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtProvince")).Text;
            SQLCustomerManager.InsertParameters["Cust_Postal_Code"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtPostalCode")).Text;
            SQLCustomerManager.InsertParameters["Cust_Active_Status"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("ddlActStat")).SelectedValue;

            SQLCustomerManager.Insert();

        }
        catch (SqlException ex)
        {

            string script = "alert(\"Oops, an error occured while trying to connect to the database!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
        }

        
   }


    protected void ButtonSearch_Click(object sender, EventArgs e)
    {
        try
        {
            if (DropDownListSearch.SelectedIndex == 0)
            {
                SQLCustomerManager.FilterExpression = "Cust_FName like '{0}%' or Cust_SName like '{1}%'";
                SQLCustomerManager.FilterParameters.Add(new ControlParameter("Cust_FName", "TextBoxSearch", "Text"));
                SQLCustomerManager.FilterParameters.Add(new ControlParameter("Cust_SName", "TextBoxSearch", "Text"));

            }
            else if (DropDownListSearch.SelectedIndex == 1)
            {
                SQLCustomerManager.FilterExpression = "Cust_City like '{0}%'";
                SQLCustomerManager.FilterParameters.Add(new ControlParameter("Cust_City", "TextBoxSearch", "Text"));
            }
        }
        catch (SqlException sqlEx)
        {

            string script = "alert(\"Oops, an error occured while trying to connect to the database!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
        }
    }
}