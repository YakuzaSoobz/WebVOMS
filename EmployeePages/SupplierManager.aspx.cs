using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class EmployeePages_SupplierManager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        PageMenu.Initialise(Page);
       
    }

    protected void ButtonInsert_Click(object sender, EventArgs e)
    {
       try
        {
            SQLSuppliers.InsertParameters["Supplier_Name"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxNewSupplier")).Text;
            SQLSuppliers.InsertParameters["Supplier_Street_Addr_1"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxNewStreet1")).Text;
            SQLSuppliers.InsertParameters["Supplier_Street_Addr_2"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxNewStreet2")).Text;
            SQLSuppliers.InsertParameters["Supplier_Suburb"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxNewSuburb")).Text;
            SQLSuppliers.InsertParameters["Supplier_City"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxNewCity")).Text;
            SQLSuppliers.InsertParameters["Supplier_Province"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxNewProvince")).Text;
            SQLSuppliers.InsertParameters["Supplier_Postal_Code"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxNewPostalCode")).Text;
            SQLSuppliers.InsertParameters["Supplier_Phone_No"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxNewPhoneNo")).Text;
            SQLSuppliers.InsertParameters["Supplier_Alt_Phone_No"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxNewAltPhoneNo")).Text;
            SQLSuppliers.InsertParameters["Supplier_Email"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxNewEmail")).Text;
            SQLSuppliers.InsertParameters["Supplier_Password"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxNewPassword")).Text;
            SQLSuppliers.InsertParameters["Supplier_Alt_Phone_No"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxNewAltPhoneNo")).Text;
            SQLSuppliers.InsertParameters["Supplier_Rep_FName"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxNewRepFName")).Text;
            SQLSuppliers.InsertParameters["Supplier_Rep_SName"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxNewRepSName")).Text;
            SQLSuppliers.InsertParameters["Supplier_Rep_Email"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxNewRepEmail")).Text;
            SQLSuppliers.InsertParameters["Supplier_Rep_Phone_No"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxNewRepPhoneNo")).Text;
            SQLSuppliers.InsertParameters["Supplier_Rep_Alt_Phone_No"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxNewRepAltPhoneNo")).Text;
            SQLSuppliers.InsertParameters["Supplier_Active_Status"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("DropDownListNewActiveStatus")).SelectedValue;



            SQLSuppliers.Insert();

        }
        catch (SqlException ex)
        {

            string script = "alert(\"Unable to add the Supplier to the databse! Please use the correct formats!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
        }
    }

    protected void ButtonSearch_Click(object sender, EventArgs e)
    {
        try
        {
            if (DropDownListSearch.SelectedIndex == 0)
            {
                 SQLSuppliers.FilterExpression = "Supplier_Name like '{0}%'";
                 SQLSuppliers.FilterParameters.Add(new ControlParameter("Supplier_Name", "TextBoxSearch", "Text"));
            }
            else if (DropDownListSearch.SelectedIndex == 1)
            {
                SQLSuppliers.FilterExpression = "Supplier_Rep_FName like '{0}%' or Supplier_Rep_SName like '{1}%'";
                SQLSuppliers.FilterParameters.Add(new ControlParameter("Supplier_Rep_FName", "TextBoxSearch", "Text"));
                SQLSuppliers.FilterParameters.Add(new ControlParameter("Supplier_Rep_SName", "TextBoxSearch", "Text"));

            }
            else if (DropDownListSearch.SelectedIndex == 2)
            {
                SQLSuppliers.FilterExpression = "Supplier_City like '{0}%'";
                SQLSuppliers.FilterParameters.Add(new ControlParameter("Supplier_City", "TextBoxSearch", "Text"));
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


            SQLSuppliers.FilterExpression = "Supplier_Name like '%'";

        }
        catch (SqlException sqlEx)
        {

            string script = "alert(\"Oops an error occured while trying to connect to the database!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);

            TextBoxSearch.Text = "";
        }
    }
}