using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeePages_CustomerQuoteManager : System.Web.UI.Page
{
    public Boolean CreateStatus = false;
    public Boolean EditStatus = false;

    protected void Page_Load(object sender, EventArgs e)
    {
        PageMenu.Initialise(Page); 
        
    }

    protected void CustomerQuoteGridView_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void CreateNewQuoteButton_Click(object sender, EventArgs e)
    {
        CreateStatus = true;
        EditStatus = false;
        Response.Redirect("CreateOrEditCustomerQuote.aspx");
    }
    protected void EditQuoteButton_Click(object sender, EventArgs e)
    {
        CreateStatus = false;
        EditStatus = true;
        Response.Redirect("CreateOrEditCustomerQuote.aspx");
    }
}