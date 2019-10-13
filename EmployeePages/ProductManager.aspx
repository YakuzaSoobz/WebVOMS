<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeMasterPage.master" AutoEventWireup="true" CodeFile="ProductManager.aspx.cs" Inherits="EmployeePages_ProductManager" %>

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
           Product Manager:
    </h2>
    
            <table class="style18">
            <tr>
                <td width="80%" height="30px" >
                    <asp:DropDownList ID="DropDownListSearch" runat="server" AutoPostBack="True">
                        <asp:ListItem>Product Name</asp:ListItem>
                        <asp:ListItem>Brand</asp:ListItem>
                    </asp:DropDownList>

                <asp:TextBox ID="TextBoxSearch" runat="server" Width="200px" Height="30px"></asp:TextBox>
                    <asp:Button ID="ButtonSearch" runat="server" BackColor="#5D7B9D" 
                        BorderColor="Black" BorderStyle="Solid" ForeColor="White" Height="30px" 
                        Text="Search" Width="70px" onclick="ButtonSearch_Click" 
                         />
                        
                    <asp:Button ID="ButtonRefresh" runat="server" BackColor="#5D7B9D" 
                        BorderColor="Black" BorderStyle="Solid" ForeColor="White" Height="30px" 
                        Text="Refresh" Width="70px" onclick="ButtonRefresh_Click"  />
                        
                </td>
              
                
            </tr>
        </table>
    

    <div>
    <br />
        <asp:GridView ID="ProductsGridView" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="Product_ID" DataSourceID="SqlDataSourceProducts" 
        ForeColor="#333333" GridLines="None" Width="1106px" 
        HorizontalAlign="Center" AllowPaging="True" ShowFooter="True"  >
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField HeaderText="Product ID" InsertVisible="False" 
                SortExpression="Product_ID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Product_ID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Lbl1" runat="server" Text='<%# Bind("Product_ID") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate> 
                    <asp:LinkButton OnClientClick="return confirm('Are you sure you want to ADD this Product to the Database');" ID="ButtonInsert"  OnClick="ButtonInsert_Click" runat="server" ValidationGroup="INSERT">Create New Product</asp:LinkButton>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Product" SortExpression="Product_Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxProduct" runat="server" Text='<%# Bind("Product_Name") %>'></asp:TextBox>
                    <asp:Requiredfieldvalidator  ID = "rfvEditProduct" runat="server" ErrorMessage="Enter a Product Name!" ControlToValidate="TextBoxProduct" Text="*" ForeColor="Red">
                        
                    </asp:Requiredfieldvalidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelProduct" runat="server" Text='<%# Bind("Product_Name") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBoxNewProduct" runat="server"></asp:TextBox>
                    <asp:Requiredfieldvalidator ValidationGroup="INSERT" ID = "rfvCreateProduct" runat="server" ErrorMessage="Enter a Product Name!" ControlToValidate="TextBoxNewProduct" Text="*" ForeColor="Red">
                        
                    </asp:Requiredfieldvalidator>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Brand" SortExpression="Product_Brand">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxBrand" runat="server" Text='<%# Bind("Product_Brand") %>'></asp:TextBox>
                    <asp:Requiredfieldvalidator  ID = "rfvEditBrand" runat="server" ErrorMessage="Enter a Brand name!" ControlToValidate="TextBoxBrand" Text="*" ForeColor="Red">
                        
                    </asp:Requiredfieldvalidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelBrand" runat="server" Text='<%# Bind("Product_Brand") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox  ID="TextBoxNewBrand" runat="server"></asp:TextBox>
                    <asp:Requiredfieldvalidator ValidationGroup="INSERT"  ID = "rfvCreateBrand" runat="server" ErrorMessage="Enter a Brand name!" ControlToValidate="TextBoxNewBrand" Text="*" ForeColor="Red">
                        
                    </asp:Requiredfieldvalidator>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Description" 
                SortExpression="Product_Description">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxDescription" runat="server" 
                        Text='<%# Bind("Product_Description") %>'></asp:TextBox>
                        <asp:Requiredfieldvalidator  ID = "rfvEditDescription" runat="server" ErrorMessage="Enter a Description for the product!" ControlToValidate="TextBoxDescription" Text="*" ForeColor="Red">
                        
                        </asp:Requiredfieldvalidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelProductDescription" runat="server" Text='<%# Bind("Product_Description") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBoxNewDescription" runat="server"></asp:TextBox>
                    <asp:Requiredfieldvalidator ValidationGroup="INSERT" ID = "rfvCreateDescription" runat="server" ErrorMessage="Enter a Description for the product!" ControlToValidate="TextBoxNewDescription" Text="*" ForeColor="Red">
                        
                    </asp:Requiredfieldvalidator>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Active Status" 
                SortExpression="Product_Active_Status">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownListActiveStatus" runat="server" SelectedValue = '<%# Bind("Product_Active_Status") %>'>
                        <asp:ListItem>T</asp:ListItem>
                        <asp:ListItem>F</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Requiredfieldvalidator  ID = "rfvEditActiveStatus" runat="server" ErrorMessage="Active Status is a required field!" ControlToValidate="DropDownListActiveStatus" Text="*" ForeColor="Red">
                        
                    </asp:Requiredfieldvalidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelActiveStatus" runat="server" 
                        Text='<%# Bind("Product_Active_Status") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:DropDownList ID="DropDownListNewActiveStatus" runat="server" InitialValue="T">
                        <asp:ListItem>T</asp:ListItem>
                        <asp:ListItem>F</asp:ListItem> 
                    </asp:DropDownList>
                     <asp:Requiredfieldvalidator ValidationGroup="INSERT"  ID = "rfvCreateActiveStatus" runat="server" ErrorMessage="Active Status is a required field!" ControlToValidate="DropDownListNewActiveStatus" Text="*" ForeColor="Red">
                        
                    </asp:Requiredfieldvalidator>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField ShowHeader="False">

                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButtonUpdate"  OnClientClick="return confirm('Are you sure you want to update the product details');" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButtonCancel" runat="server" CausesValidation="False" 
                        CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>

                <ItemTemplate>
                    <asp:LinkButton ID="LinkButtonEdit" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="Edit"></asp:LinkButton>
                </ItemTemplate>

            </asp:TemplateField>
            
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
    <div>
        <asp:ValidationSummary ValidationGroup="INSERT" ID="ValidationSummaryInsert" 
            runat="server" ForeColor="Red" ShowMessageBox="True" 
            ToolTip="Cannot add product to databse!" />
        <asp:ValidationSummary  ID="ValidationSummaryEdit" runat="server" 
            ForeColor="Red" ShowMessageBox="True" ToolTip="Cannot update product!"/>
    </div>

        <asp:SqlDataSource ID="SqlDataSourceProducts" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:group16ConnectionString %>" 
            DeleteCommand="DELETE FROM [Product] WHERE [Product_ID] = @original_Product_ID AND [Product_Name] = @original_Product_Name AND [Product_Brand] = @original_Product_Brand AND [Product_Description] = @original_Product_Description AND [Product_Active_Status] = @original_Product_Active_Status" 
            InsertCommand="INSERT INTO [Product] ([Product_Name], [Product_Brand], [Product_Description], [Product_Active_Status]) VALUES (@Product_Name, @Product_Brand, @Product_Description, @Product_Active_Status)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [Product]" 
            UpdateCommand="UPDATE [Product] SET [Product_Name] = @Product_Name, [Product_Brand] = @Product_Brand, [Product_Description] = @Product_Description, [Product_Active_Status] = @Product_Active_Status WHERE [Product_ID] = @original_Product_ID AND [Product_Name] = @original_Product_Name AND [Product_Brand] = @original_Product_Brand AND [Product_Description] = @original_Product_Description AND [Product_Active_Status] = @original_Product_Active_Status">
            <DeleteParameters>
                <asp:Parameter Name="original_Product_ID" Type="Int32" />
                <asp:Parameter Name="original_Product_Name" Type="String" />
                <asp:Parameter Name="original_Product_Brand" Type="String" />
                <asp:Parameter Name="original_Product_Description" Type="String" />
                <asp:Parameter Name="original_Product_Active_Status" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Product_Name" Type="String" />
                <asp:Parameter Name="Product_Brand" Type="String" />
                <asp:Parameter Name="Product_Description" Type="String" />
                <asp:Parameter Name="Product_Active_Status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Product_Name" Type="String" />
                <asp:Parameter Name="Product_Brand" Type="String" />
                <asp:Parameter Name="Product_Description" Type="String" />
                <asp:Parameter Name="Product_Active_Status" Type="String" />
                <asp:Parameter Name="original_Product_ID" Type="Int32" />
                <asp:Parameter Name="original_Product_Name" Type="String" />
                <asp:Parameter Name="original_Product_Brand" Type="String" />
                <asp:Parameter Name="original_Product_Description" Type="String" />
                <asp:Parameter Name="original_Product_Active_Status" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </asp:Content>

