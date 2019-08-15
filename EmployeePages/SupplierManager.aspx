<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SupplierManager.aspx.cs" Inherits="EmployeePages_SupplierManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Supplier_ID" 
        DataSourceID="SQLSuppliers" ForeColor="#333333" GridLines="None" 
        style="margin-left: 0px" Width="1158px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Supplier_ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="Supplier_ID" />
            <asp:BoundField DataField="Supplier_Name" HeaderText="Name" 
                SortExpression="Supplier_Name" />
            <asp:BoundField DataField="Supplier_Street_Addr_1" HeaderText="Street Addr 1" 
                SortExpression="Supplier_Street_Addr_1" />
            <asp:BoundField DataField="Supplier_Street_Addr_2" HeaderText="Street Addr 2" 
                SortExpression="Supplier_Street_Addr_2" />
            <asp:BoundField DataField="Supplier_Suburb" HeaderText="Suburb" 
                SortExpression="Supplier_Suburb" />
            <asp:BoundField DataField="Supplier_City" HeaderText="City" 
                SortExpression="Supplier_City" />
            <asp:BoundField DataField="Supplier_Province" HeaderText="Province" 
                SortExpression="Supplier_Province" />
            <asp:BoundField DataField="Supplier_Postal_Code" HeaderText="Postal Code" 
                SortExpression="Supplier_Postal_Code" />
            <asp:BoundField DataField="Supplier_Phone_No" HeaderText="Phone No" 
                SortExpression="Supplier_Phone_No" />
            <asp:BoundField DataField="Supplier_Alt_Phone_No" HeaderText="Alt Phone No" 
                SortExpression="Supplier_Alt_Phone_No" />
            <asp:BoundField DataField="Supplier_Email" HeaderText="Email" 
                SortExpression="Supplier_Email" />
            <asp:BoundField DataField="Supplier_Password" HeaderText="Password" 
                SortExpression="Supplier_Password" />
            <asp:BoundField DataField="Supplier_Active_Status" HeaderText="Active Status" 
                SortExpression="Supplier_Active_Status" />
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
    <asp:SqlDataSource ID="SQLSuppliers" runat="server" 
        ConnectionString="<%$ ConnectionStrings:group16ConnectionString %>" 
        SelectCommand="SELECT * FROM [Supplier]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

