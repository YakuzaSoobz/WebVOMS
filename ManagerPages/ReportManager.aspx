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
            <asp:ListItem>Report One</asp:ListItem>
            <asp:ListItem>Report Two</asp:ListItem>
            <asp:ListItem>Report Three</asp:ListItem>
            
        </asp:DropDownList>
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

