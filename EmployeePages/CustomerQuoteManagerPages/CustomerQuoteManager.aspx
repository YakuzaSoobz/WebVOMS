<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeMasterPage.master" AutoEventWireup="true" CodeFile="CustomerQuoteManager.aspx.cs" Inherits="EmployeePages_CustomerQuoteManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style18
        {
            width: 100%;
            border-style: solid;
            border-width: 1px;
            background-color: #DDE4EC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
   
    <h2 style="font-size: x-large; text-decoration: underline;">
           Customer Quote Manager:
    </h2>
    
            <table class="style18">
            <tr>
                <td width="80%" height="30px" >
                    <asp:DropDownList ID="DropDownListSearch" runat="server" AutoPostBack="True">
                        <asp:ListItem>Quote Reference ID</asp:ListItem>
                        <asp:ListItem>Customer  Name</asp:ListItem>
                        <asp:ListItem>Employee Name</asp:ListItem>
                    </asp:DropDownList>

                <asp:TextBox ID="TextBoxSearch" runat="server" Width="200px" Height="30px"></asp:TextBox>
                    <asp:Button ID="ButtonSearch" runat="server" BackColor="#5D7B9D" 
                        BorderColor="Black" BorderStyle="Solid" ForeColor="White" Height="30px" 
                        Text="Search" Width="70px" onclick="ButtonSearch_Click" 
                         />
                        
                    <asp:Button ID="ButtonRefresh" runat="server" BackColor="#5D7B9D" 
                        BorderColor="Black" BorderStyle="Solid" ForeColor="White" Height="30px" 
                        Text="Refresh" Width="70px" onclick="ButtonRefresh_Click" />
                        
                </td>
              
                
            </tr>
        </table>
    

    <h2 style="font-size: medium; ">
          Select a Customer Quote:
    </h2>

    <div>
        <asp:GridView ID="CustomerQuoteGridView" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="Cust_Quote_Reference_ID" DataSourceID="SqlDataSourceCustomerQuoteJoinCustomer" 
        ForeColor="#333333" GridLines="None" Width="1106px" 
        HorizontalAlign="Center" AllowPaging="True" 
        >
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Cust_Quote_Reference_ID" HeaderText="Reference ID" 
                ReadOnly="True" SortExpression="Cust_Quote_Reference_ID" />
            <asp:BoundField DataField="Cust__Quote_Total_Price" HeaderText="Total Price" 
                SortExpression="Cust__Quote_Total_Price" />
            <asp:BoundField DataField="Cust_Quote_Date_Issued" HeaderText="Date Issued" 
                SortExpression="Cust_Quote_Date_Issued" DataFormatString="{0:d}" />
            <asp:BoundField DataField="Cust_Quote_Acceptance_Status" 
                HeaderText="Acceptance Status" SortExpression="Cust_Quote_Acceptance_Status" />
            <asp:BoundField DataField="Cust_Quote_Date_Accepted" HeaderText="Date Accepted" 
                SortExpression="Cust_Quote_Date_Accepted" DataFormatString="{0:d}" />
            <asp:BoundField DataField="Cust_FName" HeaderText="Customer First Name" 
                SortExpression="Cust_FName" />
            <asp:BoundField DataField="Cust_SName" HeaderText="Customer Surname" 
                SortExpression="Cust_SName" />
            <asp:BoundField DataField="Employee_FName" HeaderText="Employee First Name" 
                SortExpression="Employee_FName" />
            <asp:BoundField DataField="Employee_SName" HeaderText="Employee Surname" 
                SortExpression="Employee_SName" />
            <asp:CommandField ShowSelectButton="True" />
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
    <asp:SqlDataSource ID="SqlDataSourceCustomerQuoteJoinCustomer" runat="server" 
        ConnectionString="<%$ ConnectionStrings:group16ConnectionString %>" 
        SelectCommand="SELECT Customer_Quote.Cust_Quote_Reference_ID, Customer_Quote.Customer_ID, Customer_Quote.Employee_ID, Customer_Quote.Cust__Quote_Total_Price, Customer_Quote.Cust_Quote_Date_Issued, Customer_Quote.Cust_Quote_Acceptance_Status, Customer_Quote.Cust_Quote_Date_Accepted, Customer.Cust_FName, Customer.Cust_SName, Employee.Employee_FName, Employee.Employee_SName FROM Customer_Quote INNER JOIN Customer ON Customer_Quote.Customer_ID = Customer.Customer_ID INNER JOIN Employee ON Customer_Quote.Employee_ID = Employee.Employee_ID ORDER BY Customer_Quote.Cust_Quote_Date_Issued DESC">
    </asp:SqlDataSource>
    </div>
    
    <br />

    <h2 style="font-size: medium; ">
          List of Quoted Items:
    </h2>

    <div>
        
        <asp:GridView ID="CustomerQuoteLineItemsGridView" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="Product_ID,Cust_Quote_Reference_ID,Supplier_ID" DataSourceID="SqlDataSourceCustLineItemsJoinProducts" 
        ForeColor="#333333" GridLines="None" Width="1106px" 
        HorizontalAlign="Center" AllowPaging="True" 
       >
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Cust_Quote_Reference_ID" HeaderText="Reference ID" 
                ReadOnly="True" SortExpression="Cust_Quote_Reference_ID" />
            <asp:BoundField DataField="Product_Name" HeaderText="Product" 
                SortExpression="Product_Name" />
            <asp:BoundField DataField="Product_Brand" HeaderText="Brand" 
                SortExpression="Product_Brand" />
            <asp:BoundField DataField="Product_Description" 
                HeaderText="Description" SortExpression="Product_Description" />
            <asp:BoundField DataField="Product_Active_Status" HeaderText="Active Status" 
                SortExpression="Product_Active_Status" />
            <asp:BoundField DataField="Supplier_Name" HeaderText="Supplier" 
                SortExpression="Supplier_Name" />
            <asp:BoundField DataField="Cust_Line_Item_Cost_Price" HeaderText="Cost Price" 
                SortExpression="Cust_Line_Item_Cost_Price" />
            <asp:BoundField DataField="Cust_Line_Item_Markup_Percentage" HeaderText="Markup %" 
                SortExpression="Cust_Line_Item_Markup_Percentage" />
            <asp:BoundField DataField="Cust_Line_Item_Discount_Percentage" HeaderText="Discount %" 
                SortExpression="Cust_Line_Item_Discount_Percentage" />
            <asp:BoundField DataField="Cust_Line_Item_Quantity" HeaderText="Quantity" 
                SortExpression="Cust_Line_Item_Quantity" />
            <asp:BoundField DataField="Cust_Line_Item_Sale_excl_VAT" HeaderText="Sale excl VAT" 
                SortExpression="Cust_Line_Item_Sale_excl_VAT" />
            <asp:BoundField DataField="Cust_Line_Item_Sale_incl_VAT" 
                HeaderText="Sale incl VAT" SortExpression="Cust_Line_Item_Sale_incl_VAT" />
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
        <asp:SqlDataSource ID="SqlDataSourceCustLineItemsJoinProducts" runat="server" 
            ConnectionString="<%$ ConnectionStrings:group16ConnectionString %>" 
            SelectCommand="SELECT Product.Product_Name, Product.Product_Brand, Product.Product_Description, Product.Product_Active_Status, Customer_Quote_Line_Item.Cust_Line_Item_Cost_Price, Customer_Quote_Line_Item.Cust_Line_Item_Markup_Percentage, Customer_Quote_Line_Item.Cust_Line_Item_Discount_Percentage, Customer_Quote_Line_Item.Cust_Line_Item_Quantity, Customer_Quote_Line_Item.Cust_Line_Item_Sale_excl_VAT, Customer_Quote_Line_Item.Cust_Line_Item_Sale_incl_VAT, Supplier.Supplier_Name, Customer_Quote_Line_Item.Product_ID, Customer_Quote_Line_Item.Cust_Quote_Reference_ID, Customer_Quote_Line_Item.Supplier_ID FROM Customer_Quote_Line_Item INNER JOIN Product ON Customer_Quote_Line_Item.Product_ID = Product.Product_ID INNER JOIN Supplier ON Customer_Quote_Line_Item.Supplier_ID = Supplier.Supplier_ID WHERE (Customer_Quote_Line_Item.Cust_Quote_Reference_ID = @CustQuoteID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="CustomerQuoteGridView" Name="CustQuoteID" 
                    PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        
        <br />
        
    </div>

    <div>   
    </div>
    
</asp:Content>

