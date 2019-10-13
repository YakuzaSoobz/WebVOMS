<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeMasterPage.master" AutoEventWireup="true" CodeFile="EmployeeAccount.aspx.cs" Inherits="EmployeePages_EmployeeAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="Employee_ID" DataSourceID="SQLEmployee" 
        ForeColor="#333333" GridLines="None" Height="104px" Width="1266px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Employee_ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="Employee_ID" />
            <asp:BoundField DataField="Employee_FName" HeaderText="First Name" 
                SortExpression="Employee_FName" />
            <asp:BoundField DataField="Employee_SName" HeaderText="Surname" 
                SortExpression="Employee_SName" />
            <asp:BoundField DataField="Employee_Gender" HeaderText="Gender" 
                SortExpression="Employee_Gender" />
            <asp:BoundField DataField="Employee_DOB" HeaderText="DOB" 
                SortExpression="Employee_DOB" />
            <asp:BoundField DataField="Employee_Email" HeaderText="Email" 
                SortExpression="Employee_Email" />
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
    <asp:SqlDataSource ID="SQLEmployee" runat="server" 
        ConnectionString="<%$ ConnectionStrings:group16ConnectionString %>" 
        SelectCommand="SELECT [Employee_ID], [Employee_FName], [Employee_SName], [Employee_Gender], [Employee_DOB], [Employee_Email] FROM [Employee]">
    </asp:SqlDataSource>
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
    <br />
    <br />
    <br />
</asp:Content>

