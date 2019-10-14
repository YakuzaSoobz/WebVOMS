<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="CustomerQuoteHistory.aspx.cs" Inherits="CustomerPages_CustomerQuoteHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <h2 style="font-size: x-large; text-decoration: underline;">
            MY
            Quotation History:
        </h2>
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
    <asp:TextBox ID="txtGetUser" runat="server" Visible="False" 
       ></asp:TextBox>

    <div style="overflow: scroll; text-align: center; width: 100%">
        <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" 
        DataKeyNames="Cust_Quote_Reference_ID" DataSourceID="SQLCustomerQuote" 
        Height="290px" Width="1255px" AllowSorting="True" CellPadding="4" 
        ForeColor="#333333" GridLines="None" style="margin-top: 0px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Cust_Quote_Reference_ID" HeaderText="Reference ID" 
                ReadOnly="True" SortExpression="Cust_Quote_Reference_ID" />
            <asp:BoundField DataField="Customer_ID" HeaderText="Customer ID" 
                SortExpression="Customer_ID" />
            <asp:BoundField DataField="Employee_ID" HeaderText="Employee ID" 
                SortExpression="Employee_ID" />
            <asp:BoundField DataField="Cust__Quote_Total_Price" HeaderText="Total Price" 
                SortExpression="Cust__Quote_Total_Price" />
            <asp:BoundField DataField="Cust_Quote_Date_Issued" HeaderText="Date Issued" 
                SortExpression="Cust_Quote_Date_Issued" DataFormatString="{0:d}" />
            <asp:BoundField DataField="Cust_Quote_Acceptance_Status" 
                HeaderText="Acceptance Status" SortExpression="Cust_Quote_Acceptance_Status" />
            <asp:BoundField DataField="Cust_Quote_Date_Accepted" HeaderText="Date Accepted" 
                SortExpression="Cust_Quote_Date_Accepted" DataFormatString="{0:d}" />
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
    </div>
    <br />

    <div style="overflow: scroll; text-align: center; width: 100%">
        <asp:GridView ID="GridView2" HorizontalAlign="Center" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Cust_Quote_Reference_ID,Supplier_ID,Product_ID" DataSourceID="SqlDataSourceLineItems" 
        Height="290px" Width="1255px" AllowSorting="True" CellPadding="4" 
        ForeColor="#333333" GridLines="None" style="margin-top: 0px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Cust_Quote_Reference_ID" HeaderText="Quote Reference ID" 
                ReadOnly="True" SortExpression="Cust_Quote_Reference_ID" />
            <asp:BoundField DataField="Product_Name" HeaderText="Product" 
                SortExpression="Product_Name" />
            <asp:BoundField DataField="Product_Brand" HeaderText="Brand" 
                SortExpression="Product_Brand" />
            <asp:BoundField DataField="Product_Description" HeaderText="Description" 
                SortExpression="Product_Description" />
            <asp:BoundField DataField="Cust_Line_Item_Cost_Price" HeaderText="Cost Price" 
                SortExpression="Cust_Line_Item_Cost_Price" />
            <asp:BoundField DataField="Cust_Line_Item_Markup_Percentage" 
                HeaderText="Item Markup Percentage" 
                SortExpression="Cust_Line_Item_Markup_Percentage" />
            <asp:BoundField DataField="Cust_Line_Item_Discount_Percentage" HeaderText="Item Discount Percentage" 
                SortExpression="Cust_Line_Item_Discount_Percentage" />
            <asp:BoundField DataField="Cust_Line_Item_Sale_incl_VAT" 
                HeaderText="Item Sale incl VAT" SortExpression="Cust_Line_Item_Sale_incl_VAT" />
            <asp:BoundField DataField="Cust_Line_Item_Sale_excl_VAT" 
                HeaderText="Item Sale excl VAT" SortExpression="Cust_Line_Item_Sale_excl_VAT" />
            <asp:BoundField DataField="Cust_Line_Item_Quantity" HeaderText="Item Quantity" 
                SortExpression="Cust_Line_Item_Quantity" />
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
        <asp:SqlDataSource ID="SqlDataSourceLineItems" runat="server" 
            ConnectionString="<%$ ConnectionStrings:group16ConnectionString %>" 
            SelectCommand="SELECT Customer_Quote_Line_Item.Cust_Quote_Reference_ID, Customer_Quote_Line_Item.Cust_Line_Item_Cost_Price, Customer_Quote_Line_Item.Cust_Line_Item_Sale_incl_VAT, Customer_Quote_Line_Item.Cust_Line_Item_Sale_excl_VAT, Customer_Quote_Line_Item.Cust_Line_Item_Markup_Percentage, Customer_Quote_Line_Item.Cust_Line_Item_Discount_Percentage, Customer_Quote_Line_Item.Cust_Line_Item_Quantity, Product.Product_Name, Product.Product_Brand, Product.Product_Description, Customer_Quote_Line_Item.Supplier_ID, Customer_Quote_Line_Item.Product_ID, Product.Product_Active_Status FROM Customer_Quote_Line_Item INNER JOIN Product ON Customer_Quote_Line_Item.Product_ID = Product.Product_ID WHERE (Customer_Quote_Line_Item.Cust_Quote_Reference_ID = @QuoteID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="QuoteID" 
                    PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

