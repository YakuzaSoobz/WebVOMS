<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMasterPage.master" AutoEventWireup="true" CodeFile="TotalProductSalesForm.aspx.cs" Inherits="TotalProductSalesForm" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
        <Report FileName="ManagerPages\TotalProductSales.rpt">
        </Report>
    </CR:CrystalReportSource>
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
        AutoDataBind="true" EnableDatabaseLogonPrompt="False" 
        oninit="CrystalReportViewer1_Init" ReportSourceID="CrystalReportSource1" />
</asp:Content>

