<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ReportManager.aspx.cs" Inherits="ManagerPages_ReportManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <h2 style="font-size: x-large; font-weight: bold; text-decoration: underline;">
        Report Manager:
    </h2>
    <br />

    <div style="text-align: center">
        <h2 style="font-size: medium; font-weight: lighter; ">
            Select Report:
        </h2>
        <asp:DropDownList ID="DropDownListReportSelect" runat="server" 
            AutoPostBack="True" 
            onselectedindexchanged="DropDownListReportSelect_SelectedIndexChanged" 
            Width="400px">
            <asp:ListItem>Total Product Sales</asp:ListItem>
            <asp:ListItem>Total Value Of Sales Per Item For Select Month</asp:ListItem>
            <asp:ListItem>Total Supplier Cost</asp:ListItem>
            
            <asp:ListItem>Employee Sales Per Product</asp:ListItem>
            <asp:ListItem>Total Sales Per Suburb</asp:ListItem>
            <asp:ListItem>Rolling Year Sales Per Employee</asp:ListItem>
            <asp:ListItem>Products Sold per Month Rolling Year</asp:ListItem>
            <asp:ListItem>Quotations Per Month</asp:ListItem>
            <asp:ListItem>Customer Sales income</asp:ListItem>
            
        </asp:DropDownList>

                            <asp:Button ID="ViewReportButton" runat="server" BackColor="#5D7B9D" 
                        BorderColor="Black" BorderStyle="Solid" ForeColor="White" Height="40px" 
                        Text="View Report" Width="200px" 
            onclick="ViewReportButton_Click" />
                
    </div>

    <br />
    <h2 style="font-size: medium; font-weight: lighter; ">
            Report Description:
    </h2>

    <p id="ReportDescription" runat="server" style="font-size: medium; font-weight: lighter;" >
        
    </p>

    <asp:Label ID="LabelError" runat="server" Text="" ForeColor="Red"></asp:Label>
    <br />
</asp:Content>

