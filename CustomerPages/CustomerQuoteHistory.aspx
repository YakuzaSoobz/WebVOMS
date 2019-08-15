<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CustomerQuoteHistory.aspx.cs" Inherits="CustomerPages_CustomerQuoteHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <asp:SqlDataSource ID="SQLCustomerQuote" runat="server" 
        ConnectionString="<%$ ConnectionStrings:group16ConnectionString %>" 
        SelectCommand="SELECT [Cust_Quote_Reference_ID], [Customer_ID], [Employee_ID], [Cust__Quote_Total_Price] AS Cust_Quote_Total_Price, [Cust_Quote_Date_Issued], [Cust_Quote_Acceptance_Status], [Cust_Quote_Date_Accepted] FROM [Customer_Quote]">
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Cust_Quote_Reference_ID" DataSourceID="SQLCustomerQuote" 
        Height="290px" Width="1255px" AllowSorting="True" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Cust_Quote_Reference_ID" HeaderText="Reference ID" 
                ReadOnly="True" SortExpression="Cust_Quote_Reference_ID" />
            <asp:BoundField DataField="Customer_ID" HeaderText="Customer ID" 
                SortExpression="Customer_ID" />
            <asp:BoundField DataField="Employee_ID" HeaderText="Employee  ID" 
                SortExpression="Employee_ID" />
            <asp:BoundField DataField="Cust_Quote_Total_Price" HeaderText="Total Price" 
                SortExpression="Cust_Quote_Total_Price" />
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
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

