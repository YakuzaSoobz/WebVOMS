using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {

        int check = 0;
        try
        {
            if ((txtFName.Text.Trim()).Equals(""))
            {
                check++;
            }
            else if ((txtSurname.Text.Trim()).Equals(""))
            {
                check++;
            }
            else if ((txtDOB.Text.Trim()).Equals(""))
            {
                check++;
            }
            else if ((txtPhoneNo.Text.Trim()).Equals(""))
            {
                check++;
            }
            else if ((txtEmail.Text.Trim()).Equals(""))
            {
                check++;
            }
            else if ((txtPassword.Text.Trim()).Equals(""))
            {
                check++;
            }
            else if ((txtStrAddress.Text.Trim()).Equals(""))
            {
                check++;
            }
            else if ((txtSuburb.Text.Trim()).Equals(""))
            {
                check++;
            }
            else if ((txtCity.Text.Trim()).Equals(""))
            {
                check++;
            }
            else if ((txtProvince.Text.Trim()).Equals(""))
            {
                check++;
            }
            else if ((txtPostCode.Text.Trim()).Equals(""))
            {
                check++;
            }

            if (check == 0)
            {
                SQLDSAddCust.InsertParameters["Cust_FName"].DefaultValue = txtFName.Text;
                SQLDSAddCust.InsertParameters["Cust_SName"].DefaultValue = txtSurname.Text;
                SQLDSAddCust.InsertParameters["Cust_DOB"].DefaultValue = txtDOB.Text;
                SQLDSAddCust.InsertParameters["Cust_Phone_No"].DefaultValue = txtPhoneNo.Text;
                SQLDSAddCust.InsertParameters["Cust_Alt_Phone_No"].DefaultValue = txtAltPhoneNo.Text;
                SQLDSAddCust.InsertParameters["Cust_Email"].DefaultValue = txtEmail.Text;
                SQLDSAddCust.InsertParameters["Cust_Password"].DefaultValue = txtPassword.Text;
                SQLDSAddCust.InsertParameters["Cust_Street_Addr_1"].DefaultValue = txtStrAddress.Text;
                SQLDSAddCust.InsertParameters["Cust_Street_Addr_2"].DefaultValue = txtStrAddress2.Text;
                SQLDSAddCust.InsertParameters["Cust_Suburb"].DefaultValue = txtSuburb.Text;
                SQLDSAddCust.InsertParameters["Cust_City"].DefaultValue = txtCity.Text;
                SQLDSAddCust.InsertParameters["Cust_Province"].DefaultValue = txtProvince.Text;
                SQLDSAddCust.InsertParameters["Cust_Postal_Code"].DefaultValue = txtPostCode.Text;
                SQLDSAddCust.InsertParameters["Cust_Active_Status"].DefaultValue = DropDownList1.SelectedValue.ToString();
                //@, @, @, 
                //@, @, @, 
                //@, @, @, 
                //@, @, @, 
                //@, @ 
                SQLDSAddCust.Insert();
            }
            else
            {
                string script = "alert(\"Please make sure all fields are filled in (not neccesarily Alternate Phone Num and Address 2!)\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }
        }
        catch (Exception a)
        {
            string script = "alert(\"Oops, an error occured while trying to connect to the database!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
        }
    }
}