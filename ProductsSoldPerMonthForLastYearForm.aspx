<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerMasterPage.master" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        TestDataSetShankar DS = new TestDataSetShankar();
        TestDataSetShankarTableAdapters.CustomerTableAdapter CustTA = new TestDataSetShankarTableAdapters.CustomerTableAdapter();
        TestDataSetShankarTableAdapters.ProductTableAdapter ProdTA = new TestDataSetShankarTableAdapters.ProductTableAdapter();
        TestDataSetShankarTableAdapters.Customer_QuoteTableAdapter CusQTA = new TestDataSetShankarTableAdapters.Customer_QuoteTableAdapter();
        TestDataSetShankarTableAdapters.Customer_Quote_Line_ItemTableAdapter CustQlTA = new TestDataSetShankarTableAdapters.Customer_Quote_Line_ItemTableAdapter();
        TestDataSetShankarTableAdapters.EmployeeTableAdapter EmpTA = new TestDataSetShankarTableAdapters.EmployeeTableAdapter();



        CustQlTA.Fill(DS.Customer_Quote_Line_Item);
        CusQTA.Fill(DS.Customer_Quote);
        ProdTA.Fill(DS.Product);
        EmpTA.Fill(DS.Employee);

        CrystalReportSource1.ReportDocument.SetDataSource(DS);

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
        <Report FileName="ManagerPages\QuantityOfProductsSoldPerMonthForTheLastYear.rpt">
        </Report>
    </CR:CrystalReportSource>
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
        AutoDataBind="true" ReportSourceID="CrystalReportSource1" />
</asp:Content>

