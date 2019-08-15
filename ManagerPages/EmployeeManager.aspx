<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EmployeeManager.aspx.cs" Inherits="ManagerPages_EmployeeManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="Employee_ID" DataSourceID="SQLEmployees" 
        ForeColor="#333333" GridLines="None" Width="1162px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Employee_ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="Employee_ID" />
            <asp:BoundField DataField="Employee_SName" HeaderText="Surname" 
                SortExpression="Employee_SName" />
            <asp:BoundField DataField="Employee_Phone_No" HeaderText="Phone No" 
                SortExpression="Employee_Phone_No" />
            <asp:BoundField DataField="Employee_Email" HeaderText="Email" 
                SortExpression="Employee_Email" />
            <asp:BoundField DataField="Employee_SA_ID_No" HeaderText="SA ID No" 
                SortExpression="Employee_SA_ID_No" />
            <asp:BoundField DataField="Employee_Street_Addr_1" HeaderText="Street Addr 1" 
                SortExpression="Employee_Street_Addr_1" />
            <asp:BoundField DataField="Employee_Suburb" HeaderText="Suburb" 
                SortExpression="Employee_Suburb" />
            <asp:BoundField DataField="Employee_Postal_Code" HeaderText="Postal Code" 
                SortExpression="Employee_Postal_Code" />
            <asp:BoundField DataField="Employee_Position" HeaderText="Position" 
                SortExpression="Employee_Position" />
            <asp:BoundField DataField="Employee_Admin_Level" HeaderText="Admin Level" 
                SortExpression="Employee_Admin_Level" />
            <asp:BoundField DataField="Employee_Active_Status" HeaderText="Active Status" 
                SortExpression="Employee_Active_Status" />
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
    <asp:SqlDataSource ID="SQLEmployees" runat="server" 
        ConnectionString="<%$ ConnectionStrings:group16ConnectionString %>" 
        SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>
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

