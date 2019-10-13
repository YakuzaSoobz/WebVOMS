<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="CustomerAccount.aspx.cs" Inherits="CustomerPages_CustomerAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SQLCustomerDetails" runat="server" 
        ConnectionString="<%$ ConnectionStrings:group16ConnectionString %>" 
        
        SelectCommand="SELECT * FROM [Customer] WHERE ([Cust_Email] = @Cust_Email)">
        <SelectParameters>
            <asp:SessionParameter Name="Cust_Email" SessionField="New" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="Customer_ID" DataSourceID="SQLCustomerDetails" Height="50px" 
        Width="125px">
        <Fields>
            <asp:BoundField DataField="Customer_ID" HeaderText="Customer_ID" 
                InsertVisible="False" ReadOnly="True" SortExpression="Customer_ID" />
            <asp:BoundField DataField="Cust_FName" HeaderText="Cust_FName" 
                SortExpression="Cust_FName" />
            <asp:BoundField DataField="Cust_SName" HeaderText="Cust_SName" 
                SortExpression="Cust_SName" />
            <asp:BoundField DataField="Cust_DOB" HeaderText="Cust_DOB" 
                SortExpression="Cust_DOB" />
            <asp:BoundField DataField="Cust_Phone_No" HeaderText="Cust_Phone_No" 
                SortExpression="Cust_Phone_No" />
            <asp:BoundField DataField="Cust_Alt_Phone_No" HeaderText="Cust_Alt_Phone_No" 
                SortExpression="Cust_Alt_Phone_No" />
            <asp:BoundField DataField="Cust_Email" HeaderText="Cust_Email" 
                SortExpression="Cust_Email" />
            <asp:BoundField DataField="Cust_Password" HeaderText="Cust_Password" 
                SortExpression="Cust_Password" />
            <asp:BoundField DataField="Cust_Street_Addr_1" HeaderText="Cust_Street_Addr_1" 
                SortExpression="Cust_Street_Addr_1" />
            <asp:BoundField DataField="Cust_Street_Addr_2" HeaderText="Cust_Street_Addr_2" 
                SortExpression="Cust_Street_Addr_2" />
            <asp:BoundField DataField="Cust_Suburb" HeaderText="Cust_Suburb" 
                SortExpression="Cust_Suburb" />
            <asp:BoundField DataField="Cust_City" HeaderText="Cust_City" 
                SortExpression="Cust_City" />
            <asp:BoundField DataField="Cust_Province" HeaderText="Cust_Province" 
                SortExpression="Cust_Province" />
            <asp:BoundField DataField="Cust_Postal_Code" HeaderText="Cust_Postal_Code" 
                SortExpression="Cust_Postal_Code" />
            <asp:BoundField DataField="Cust_Active_Status" HeaderText="Cust_Active_Status" 
                SortExpression="Cust_Active_Status" />
        </Fields>
    </asp:DetailsView>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

