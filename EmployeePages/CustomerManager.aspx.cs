using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeePages_CustomerManager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        PageMenu.Initialise(Page);
    }

    protected void lbInsert_Click(object sender, EventArgs e)
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
   
}