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
             if (DropDownListReportSelect.SelectedIndex == 1)
            {
                
                ReportDescription.InnerHtml = "The Total Sales per Product for a selected Time period";
            }
             if (DropDownListReportSelect.SelectedIndex == 2)
             {

                 ReportDescription.InnerHtml = "Total sales per item for a select month";
             }

             if (DropDownListReportSelect.SelectedIndex == 3)
             {

                 ReportDescription.InnerHtml = "Total cost per supplier based on quotations, for a selected time period";
             }

             if (DropDownListReportSelect.SelectedIndex == 4)
             {

                 ReportDescription.InnerHtml = "How much employees have sold per product";
             }

             if (DropDownListReportSelect.SelectedIndex == 5)
             {

                 ReportDescription.InnerHtml = "The total sales amount per Suburb ";
             }

             if (DropDownListReportSelect.SelectedIndex == 6)
             {

                 ReportDescription.InnerHtml = "Shows the products sold per employee for each month for the last year(12 months)";
             }

             if (DropDownListReportSelect.SelectedIndex == 7)
             {

                 ReportDescription.InnerHtml = "Shows the products sold for each month for the last year(12 months)";
             }

             if (DropDownListReportSelect.SelectedIndex == 8)
             {

                 ReportDescription.InnerHtml = "Shows the Quotations accepted for each month";
             }

             if (DropDownListReportSelect.SelectedIndex == 9)
             {

                 ReportDescription.InnerHtml = "Show Value of accepted Customer quotes per customer";
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
            if (DropDownListReportSelect.SelectedIndex == 1)
            {

                Response.Redirect("~/TotalProductSalesForm.aspx");
            }
            

            if (DropDownListReportSelect.SelectedIndex == 2)
            {

                Response.Redirect("~/TotalValueOfSalesForSelectMonth.aspx");
            }
            

            if (DropDownListReportSelect.SelectedIndex == 3)
            {

                Response.Redirect("~/TotalSupplierCostPerSupplierForm.aspx");
            }
            
            if (DropDownListReportSelect.SelectedIndex == 4)
            {

                Response.Redirect("~/EmployeeSalesPerProduct.aspx");
            }
            

            if (DropDownListReportSelect.SelectedIndex == 5)
            {

                Response.Redirect("~/TotalSalesPerSuburbForm.aspx");
            }
            

            if (DropDownListReportSelect.SelectedIndex == 6)
            {

                Response.Redirect("~/AmountOfProductsSoldPerEmployeeForLastYearForm.aspx");
            }
           

            if (DropDownListReportSelect.SelectedIndex == 7)
            {

                Response.Redirect("~/ProductsSoldPerMonthForLastYearForm.aspx");
            }
           

            if (DropDownListReportSelect.SelectedIndex == 8)
            {

                Response.Redirect("~/QuotationsPerMonth.aspx");
            }
           

            if (DropDownListReportSelect.SelectedIndex == 9)
            {

                Response.Redirect("~/CustomerIncome.aspx");
            }
            
        }
        catch (Exception exception)
        {
            LabelError.Visible = true;
            LabelError.Text = "Oops, an error was encountered while loading this page. Our team is looking at the issue! Please retry later!";
        }
    }
}