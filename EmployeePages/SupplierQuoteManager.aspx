<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SupplierQuoteManager.aspx.cs" Inherits="EmployeePages_SupplierQuoteManager" %>

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
    <br />
    <h2 style="font-size: x-large; text-decoration: underline;">
&nbsp;Supplier Quote Manager:
    </h2>

   <table class="style18">
            <tr>
                <td width="80%" height="30px" >
                    <asp:DropDownList ID="DropDownListSearch" runat="server" AutoPostBack="True">
                        <asp:ListItem>Quote Reference ID</asp:ListItem>
                        <asp:ListItem>Supplier Rep Name</asp:ListItem>
                        <asp:ListItem>Supplier Name</asp:ListItem>
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
        Select a Supplier Quote:
    </h2>
    <div>
        <asp:GridView ID="SupplierQuoteGridView" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="Supp_Quote_Reference_ID" 
            DataSourceID="SqlDataSourceSupplierQuoteJoinSupplier" ForeColor="#333333" 
            GridLines="None" HorizontalAlign="Center" 
            
            Width="1106px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Supp_Quote_Reference_ID" HeaderText="Quote ID" 
                    InsertVisible="False" ReadOnly="True" 
                    SortExpression="Supp_Quote_Reference_ID" />
                <asp:BoundField DataField="Supplier_Name" HeaderText="Supplier Name" 
                    SortExpression="Supplier_Name" />
                <asp:BoundField DataField="Supp_Quote_Total_Price" HeaderText="Total Price" 
                    SortExpression="Supp_Quote_Total_Price" />
                <asp:BoundField DataField="Supp_Quote_Date_Recieved" DataFormatString="{0:d}" 
                    HeaderText="Date Recieved" SortExpression="Supp_Quote_Date_Recieved" />
                <asp:BoundField DataField="Supp_Quote_Acceptance_Status" 
                    HeaderText="Acceptance Status" SortExpression="Supp_Quote_Acceptance_Status" />
                <asp:BoundField DataField="Supp_Quote_Date_Acceptance" DataFormatString="{0:d}" 
                    HeaderText="Date Acceptance" SortExpression="Supp_Quote_Date_Acceptance" />
                <asp:BoundField DataField="Supplier_Phone_No" HeaderText="Supplier Phone No" 
                    SortExpression="Supplier_Phone_No" />
                <asp:BoundField DataField="Supplier_Email" HeaderText="Supplier Email" 
                    SortExpression="Supplier_Email" />
                <asp:BoundField DataField="Supplier_Rep_FName" HeaderText="Rep First Name" 
                    SortExpression="Supplier_Rep_FName" />
                <asp:BoundField DataField="Supplier_Rep_SName" HeaderText="Rep Surname" 
                    SortExpression="Supplier_Rep_SName" />
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
        <asp:SqlDataSource ID="SqlDataSourceSupplierQuoteJoinSupplier" runat="server" 
            ConnectionString="<%$ ConnectionStrings:group16ConnectionString %>" 
            SelectCommand="SELECT Supplier_Quote.Supp_Quote_Total_Price, Supplier_Quote.Supp_Quote_Reference_ID, Supplier_Quote.Supp_Quote_Date_Recieved, Supplier_Quote.Supp_Quote_Acceptance_Status, Supplier_Quote.Supp_Quote_Date_Acceptance, Supplier_Quote.Supplier_ID, Supplier.Supplier_Name, Supplier.Supplier_Phone_No, Supplier.Supplier_Email, Supplier.Supplier_Rep_FName, Supplier.Supplier_Rep_SName FROM Supplier_Quote INNER JOIN Supplier ON Supplier_Quote.Supplier_ID = Supplier.Supplier_ID">
        </asp:SqlDataSource>
    </div>
    <br />
    <h2 style="font-size: medium; ">
        List of Quoted Items:
    </h2>
    <div>
        <asp:GridView ID="SupplierQuoteLineItemsGridView" runat="server" 
            AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="Supp_Quote_Reference_ID,Product_ID" 
            DataSourceID="SqlDataSourceSuppLineItemsJoinProducts" ForeColor="#333333" 
            GridLines="None" HorizontalAlign="Center" 
            
            Width="1106px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Supp_Quote_Reference_ID" HeaderText="Quote ID" 
                    ReadOnly="True" SortExpression="Supp_Quote_Reference_ID" />
                <asp:BoundField DataField="Product_Name" HeaderText="Product" 
                    SortExpression="Product_Name" />
                <asp:BoundField DataField="Product_Brand" HeaderText="Brand" 
                    SortExpression="Product_Brand" />
                <asp:BoundField DataField="Product_Description" HeaderText="Description" 
                    SortExpression="Product_Description" />
                <asp:BoundField DataField="Supp_Line_Item_Cost_Price" HeaderText="Cost Price" 
                    SortExpression="Supp_Line_Item_Cost_Price" />
                <asp:BoundField DataField="Supp_Line_Item_Quantity" HeaderText="Quantity" 
                    SortExpression="Supp_Line_Item_Quantity" />
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
        <asp:SqlDataSource ID="SqlDataSourceSuppLineItemsJoinProducts" runat="server" 
            ConnectionString="<%$ ConnectionStrings:group16ConnectionString %>" 
            SelectCommand="SELECT Supplier_Quote_Line_Item.Supp_Quote_Reference_ID, Supplier_Quote_Line_Item.Product_ID, Product.Product_Name, Product.Product_Brand, Product.Product_Description, Supplier_Quote_Line_Item.Supp_Line_Item_Cost_Price, Supplier_Quote_Line_Item.Supp_Line_Item_Quantity FROM Product INNER JOIN Supplier_Quote_Line_Item ON Product.Product_ID = Supplier_Quote_Line_Item.Product_ID WHERE (Supplier_Quote_Line_Item.Supp_Quote_Reference_ID = @QuoteID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="SupplierQuoteGridView" Name="QuoteID" 
                    PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </div>
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

