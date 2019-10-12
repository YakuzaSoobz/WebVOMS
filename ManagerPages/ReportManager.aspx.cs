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
    protected void ViewReportButton_Click(object sender, EventArgs e)
    {
        try
        {
            if (DropDownListReportSelect.SelectedIndex == 0)
            {

                Response.Redirect("~/TotalProductSalesForm.aspx");
            }
            else if (DropDownListReportSelect.SelectedIndex == 0)
            {
                ReportDescription.InnerHtml = "Report Ojndadfsssssssssssssssssssssssss ssssssssssssssss  sdddddddddddddddddddddddddd  ddddddddddd";
            }

            if (DropDownListReportSelect.SelectedIndex == 1)
            {

                Response.Redirect("~/TotalValueOfSalesForSelectMonth.aspx");
            }
            else if (DropDownListReportSelect.SelectedIndex == 1)
            {
                ReportDescription.InnerHtml = "Report Ojndadfsssssssssssssssssssssssss ssssssssssssssss  sdddddddddddddddddddddddddd  ddddddddddd";
            }

            if (DropDownListReportSelect.SelectedIndex == 2)
            {

                Response.Redirect("~/TotalSupplierCostPerSupplierForm.aspx");
            }
            else if (DropDownListReportSelect.SelectedIndex == 2)
            {
                ReportDescription.InnerHtml = "Report Ojndadfsssssssssssssssssssssssss ssssssssssssssss  sdddddddddddddddddddddddddd  ddddddddddd";
            }

            if (DropDownListReportSelect.SelectedIndex == 3)
            {

                Response.Redirect("~/EmployeeSalesPerProduct.aspx");
            }
            else if (DropDownListReportSelect.SelectedIndex == 3)
            {
                ReportDescription.InnerHtml = "Report Ojndadfsssssssssssssssssssssssss ssssssssssssssss  sdddddddddddddddddddddddddd  ddddddddddd";
            }

            if (DropDownListReportSelect.SelectedIndex == 4)
            {

                Response.Redirect("~/TotalSalesPerSuburbForm.aspx");
            }
            else if (DropDownListReportSelect.SelectedIndex == 4)
            {
                ReportDescription.InnerHtml = "Report Ojndadfsssssssssssssssssssssssss ssssssssssssssss  sdddddddddddddddddddddddddd  ddddddddddd";
            }

            if (DropDownListReportSelect.SelectedIndex == 5)
            {

                Response.Redirect("~/AmountOfProductsSoldPerEmployeeForLastYearForm.aspx");
            }
            else if (DropDownListReportSelect.SelectedIndex == 5)
            {
                ReportDescription.InnerHtml = "Report Ojndadfsssssssssssssssssssssssss ssssssssssssssss  sdddddddddddddddddddddddddd  ddddddddddd";
            }

            if (DropDownListReportSelect.SelectedIndex == 6)
            {

                Response.Redirect("~/ProductsSoldPerMonthForLastYearForm.aspx");
            }
            else if (DropDownListReportSelect.SelectedIndex == 6)
            {
                ReportDescription.InnerHtml = "Report Ojndadfsssssssssssssssssssssssss ssssssssssssssss  sdddddddddddddddddddddddddd  ddddddddddd";
            }

            if (DropDownListReportSelect.SelectedIndex == 7)
            {

                Response.Redirect("~/QuotationsPerMonth.aspx");
            }
            else if (DropDownListReportSelect.SelectedIndex == 7)
            {
                ReportDescription.InnerHtml = "Report Ojndadfsssssssssssssssssssssssss ssssssssssssssss  sdddddddddddddddddddddddddd  ddddddddddd";
            }

            if (DropDownListReportSelect.SelectedIndex == 8)
            {

                Response.Redirect("~/CustomerIncome.aspx");
            }
            else if (DropDownListReportSelect.SelectedIndex == 8)
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