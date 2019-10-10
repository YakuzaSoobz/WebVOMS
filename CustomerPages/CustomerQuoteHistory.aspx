<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="CustomerQuoteHistory.aspx.cs" Inherits="CustomerPages_CustomerQuoteHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <asp:SqlDataSource ID="SQLCustomerQuote" runat="server" 
        ConnectionString="<%$ ConnectionStrings:group16ConnectionString %>" 
        
        SelectCommand="SELECT * FROM [Customer_Quote] WHERE ([Customer_ID] = @Customer_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtGetUser" Name="Customer_ID" 
                PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SQLGetUserCusID" runat="server" 
        ConnectionString="<%$ ConnectionStrings:group16ConnectionString %>" 
        SelectCommand="SELECT [Customer_ID] FROM [Customer] WHERE ([Cust_Email] = @Cust_Email)">
        <SelectParameters>
            <asp:SessionParameter Name="Cust_Email" SessionField="New" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:TextBox ID="txtGetUser" runat="server" Visible="False"></asp:TextBox>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Cust_Quote_Reference_ID" DataSourceID="SQLCustomerQuote" 
        Height="290px" Width="1255px" AllowSorting="True" CellPadding="4" 
        ForeColor="#333333" GridLines="None" style="margin-top: 0px">
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
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

