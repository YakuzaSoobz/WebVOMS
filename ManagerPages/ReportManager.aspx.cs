using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManagerPages_ReportManager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
        try
        {
            PageMenu.Initialise(Page);
            LabelError.Visible = false;
        }
        catch (Exception exception)
        {
            LabelError.Visible = true;
            LabelError.Text = "Oops, an error was encountered while loading this page. Our team is looking at the issue! Please retry later!";
        }
    }
    protected void DropDownListReportSelect_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
             if (DropDownListReportSelect.SelectedIndex == 0)
            {
                ReportDescription.InnerHtml = "Report Ojndadfsssssssssssssssssssssssss ssssssssssssssss  sdddddddddddddddddddddddddd  ddddddddddd";
            }
            else if (DropDownListReportSelect.SelectedIndex == 0)
            {
                ReportDescription.InnerHtml = "Report Ojndadfsssssssssssssssssssssssss ssssssssssssssss  sdddddddddddddddddddddddddd  ddddddddddd";
            }
        }
        catch (Exception exception)
        {
            LabelError.Visible = true;
            LabelError.Text = "Oops, an error was encountered while loading this page. Our team is looking at the issue! Please retry later!";
        }
    }
}