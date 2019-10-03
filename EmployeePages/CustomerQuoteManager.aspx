<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CustomerQuoteManager.aspx.cs" Inherits="EmployeePages_CustomerQuoteManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
   
    <asp:GridView ID="CustomerQuoteGridView" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="Cust_Quote_Reference_ID" DataSourceID="SQLQuote" 
        ForeColor="#333333" GridLines="None" Width="1106px" 
        HorizontalAlign="Center" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Cust_Quote_Reference_ID" HeaderText="Reference ID" 
                ReadOnly="True" SortExpression="Cust_Quote_Reference_ID" />
            <asp:BoundField DataField="Customer_ID" HeaderText="Customer ID" 
                SortExpression="Customer_ID" />
            <asp:BoundField DataField="Employee_ID" HeaderText="Employee ID" 
                SortExpression="Employee_ID" />
            <asp:BoundField DataField="Cust__Quote_Total_Price" HeaderText="Total Price" 
                SortExpression="Cust__Quote_Total_Price" />
            <asp:BoundField DataField="Cust_Quote_Date_Issued" HeaderText="Date Issued" 
                SortExpression="Cust_Quote_Date_Issued" />
            <asp:BoundField DataField="Cust_Quote_Acceptance_Status" 
                HeaderText="Acceptance Status" SortExpression="Cust_Quote_Acceptance_Status" />
            <asp:BoundField DataField="Cust_Quote_Date_Accepted" HeaderText="Date Accepted" 
                SortExpression="Cust_Quote_Date_Accepted" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SQLQuote" runat="server" 
        ConnectionString="<%$ ConnectionStrings:group16ConnectionString %>" 
        SelectCommand="SELECT * FROM [Customer_Quote]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

