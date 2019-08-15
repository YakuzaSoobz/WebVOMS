<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CustomerAccount.aspx.cs" Inherits="CustomerPages_CustomerAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SQLCustomerDetails" runat="server" 
        ConnectionString="<%$ ConnectionStrings:group16ConnectionString %>" 
        SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="Customer_ID" DataSourceID="SQLCustomerDetails" 
        ForeColor="#333333" GridLines="None" Width="1224px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Customer_ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="Customer_ID" />
            <asp:BoundField DataField="Cust_FName" HeaderText="First Name" 
                SortExpression="Cust_FName" />
            <asp:BoundField DataField="Cust_SName" HeaderText="Surname" 
                SortExpression="Cust_SName" />
            <asp:BoundField DataField="Cust_DOB" HeaderText="DOB" 
                SortExpression="Cust_DOB" />
            <asp:BoundField DataField="Cust_Phone_No" HeaderText="Phone No" 
                SortExpression="Cust_Phone_No" />
            <asp:BoundField DataField="Cust_Alt_Phone_No" HeaderText="Alt Phone No" 
                SortExpression="Cust_Alt_Phone_No" />
            <asp:BoundField DataField="Cust_Email" HeaderText="Email" 
                SortExpression="Cust_Email" />
            <asp:BoundField DataField="Cust_Password" HeaderText="Password" 
                SortExpression="Cust_Password" />
            <asp:BoundField DataField="Cust_Street_Addr_1" HeaderText="Street Addr 1" 
                SortExpression="Cust_Street_Addr_1" />
            <asp:BoundField DataField="Cust_Street_Addr_2" HeaderText="Street Addr 2" 
                SortExpression="Cust_Street_Addr_2" />
            <asp:BoundField DataField="Cust_Suburb" HeaderText="Suburb" 
                SortExpression="Cust_Suburb" />
            <asp:BoundField DataField="Cust_City" HeaderText="City" 
                SortExpression="Cust_City" />
            <asp:BoundField DataField="Cust_Province" HeaderText="Province" 
                SortExpression="Cust_Province" />
            <asp:BoundField DataField="Cust_Postal_Code" HeaderText="Postal Code" 
                SortExpression="Cust_Postal_Code" />
            <asp:BoundField DataField="Cust_Active_Status" HeaderText="Active Status" 
                SortExpression="Cust_Active_Status" />
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
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

