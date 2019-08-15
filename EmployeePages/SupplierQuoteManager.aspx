<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SupplierQuoteManager.aspx.cs" Inherits="EmployeePages_SupplierQuoteManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="Supp_Quote_Reference_ID" DataSourceID="SQLSupplierQuote" 
        ForeColor="#333333" GridLines="None" Width="1169px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Supp_Quote_Reference_ID" HeaderText="Reference ID" 
                InsertVisible="False" ReadOnly="True" 
                SortExpression="Supp_Quote_Reference_ID" />
            <asp:BoundField DataField="Supplier_ID" HeaderText="ID" 
                SortExpression="Supplier_ID" />
            <asp:BoundField DataField="Supp_Quote_Total_Price" HeaderText="Total Price" 
                SortExpression="Supp_Quote_Total_Price" />
            <asp:BoundField DataField="Supp_Quote_Date_Recieved" HeaderText="Date Recieved" 
                SortExpression="Supp_Quote_Date_Recieved" />
            <asp:BoundField DataField="Supp_Quote_Acceptance_Status" 
                HeaderText="Acceptance Status" SortExpression="Supp_Quote_Acceptance_Status" />
            <asp:BoundField DataField="Supp_Quote_Date_Acceptance" 
                HeaderText="Date Acceptance" SortExpression="Supp_Quote_Date_Acceptance" />
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
    <asp:SqlDataSource ID="SQLSupplierQuote" runat="server" 
        ConnectionString="<%$ ConnectionStrings:group16ConnectionString %>" 
        SelectCommand="SELECT * FROM [Supplier_Quote]"></asp:SqlDataSource>
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
    <br />
</asp:Content>

