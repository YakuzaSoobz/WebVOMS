<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeMasterPage.master" AutoEventWireup="true" CodeFile="SupplierManager.aspx.cs" Inherits="EmployeePages_SupplierManager" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

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
           Supplier Manager:
    </h2>
    
    <br />
    <table class="style18">
        <tr>
            <td height="30px" width="80%">
                <asp:DropDownList ID="DropDownListSearch" runat="server" AutoPostBack="True">
                    <asp:ListItem>Supplier Name</asp:ListItem>
                    <asp:ListItem>Representative&#39;s Name</asp:ListItem>
                    <asp:ListItem>City</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="TextBoxSearch" runat="server" Height="30px" Width="200px"></asp:TextBox>
                <asp:Button ID="ButtonSearch" runat="server" BackColor="#5D7B9D" 
                    BorderColor="Black" BorderStyle="Solid" ForeColor="White" Height="30px" 
                    Text="Search" Width="70px" onclick="ButtonSearch_Click" />
                <asp:Button ID="ButtonRefresh" runat="server" BackColor="#5D7B9D" 
                    BorderColor="Black" BorderStyle="Solid" ForeColor="White" Height="30px" 
                    Text="Refresh" Width="70px" onclick="ButtonRefresh_Click" />
            </td>
        </tr>
    </table>
    <br />

    <div style="overflow: scroll">
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Supplier_ID" 
        DataSourceID="SQLSuppliers" ForeColor="#333333" GridLines="None" 
        style="margin-left: 0px" Width="1158px" ShowFooter="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton OnClientClick="return confirm('Are you sure you want to UPDATE this Supplier's details?');"   ID="LinkButtonUpdate" runat="server" CausesValidation="True"
                        CommandName="Update" Text="Update"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                        CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="Edit"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="ID" InsertVisible="False" 
                SortExpression="Supplier_ID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Supplier_ID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Supplier_ID") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:LinkButton ID="ButtonInsert" OnClick="ButtonInsert_Click" OnClientClick="return confirm('Are you sure you want to ADD this Supplier to the Database?');" 
                     runat="server" ValidationGroup="INSERT">ADD New Supplier</asp:LinkButton>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Supplier" SortExpression="Supplier_Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxSupplier" runat="server" Text='<%# Bind("Supplier_Name") %>'></asp:TextBox>
                    <asp:Requiredfieldvalidator  ID = "rfvEditSupplier" runat="server" ErrorMessage="Enter a Supplier Name!" ControlToValidate="TextBoxSupplier" Text="*" ForeColor="Red">
                        
                    </asp:Requiredfieldvalidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Supplier_Name") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBoxNewSupplier" runat="server"></asp:TextBox>
                    <asp:Requiredfieldvalidator ValidationGroup="INSERT" ID = "rfvCreateSupplier" runat="server" ErrorMessage="Enter a Supplier Name!" ControlToValidate="TextBoxNewSupplier" Text="*" ForeColor="Red">
                        
                    </asp:Requiredfieldvalidator>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Street Address 1" 
                SortExpression="Supplier_Street_Addr_1">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxStreet1" runat="server" 
                        Text='<%# Bind("Supplier_Street_Addr_1") %>'></asp:TextBox>
                    <asp:Requiredfieldvalidator  ID = "rfvEditStreet1" runat="server" ErrorMessage="Enter Street Address 1!" ControlToValidate="TextBoxStreet1" Text="*" ForeColor="Red">
                    </asp:Requiredfieldvalidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" 
                        Text='<%# Bind("Supplier_Street_Addr_1") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBoxNewStreet1" runat="server"></asp:TextBox>
                    <asp:Requiredfieldvalidator ValidationGroup="INSERT" ID = "rfvCreateStreet1" ErrorMessage="Enter Street Address 1!" runat="server"  ControlToValidate="TextBoxNewStreet1" Text="*" ForeColor="Red">
                        
                    </asp:Requiredfieldvalidator>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Street Address 2" 
                SortExpression="Supplier_Street_Addr_2">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxStreet2" runat="server" 
                        Text='<%# Bind("Supplier_Street_Addr_2") %>'></asp:TextBox>

                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" 
                        Text='<%# Bind("Supplier_Street_Addr_2") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBoxNewStreet2" runat="server"></asp:TextBox>
                    
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Suburb" SortExpression="Supplier_Suburb">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxSuburb" runat="server" Text='<%# Bind("Supplier_Suburb") %>'></asp:TextBox>
                    <asp:Requiredfieldvalidator  ID = "rfvEditSuburb" runat="server" ErrorMessage="Enter a Suburb!" ControlToValidate="TextBoxSuburb" Text="*" ForeColor="Red">
                    </asp:Requiredfieldvalidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Supplier_Suburb") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBoxNewSuburb" runat="server"></asp:TextBox>
                    <asp:Requiredfieldvalidator ValidationGroup="INSERT" ID = "rfvCreateSuburb" runat="server" ErrorMessage="Enter Suburb!" ControlToValidate="TextBoxNewSuburb" Text="*" ForeColor="Red">
                        
                    </asp:Requiredfieldvalidator>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="City" SortExpression="Supplier_City">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxCity" runat="server" Text='<%# Bind("Supplier_City") %>'></asp:TextBox>
                    <asp:Requiredfieldvalidator  ID = "rfvEditCity" runat="server" ErrorMessage="Enter a City!" ControlToValidate="TextBoxCity" Text="*" ForeColor="Red">
                    </asp:Requiredfieldvalidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Supplier_City") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                    <asp:TextBox ID="TextBoxNewCity" runat="server"></asp:TextBox>
                    <asp:Requiredfieldvalidator ValidationGroup="INSERT" ID = "rfvCreateCity" runat="server" ErrorMessage="Enter a City!" ControlToValidate="TextBoxNewCity" Text="*" ForeColor="Red">
                        
                    </asp:Requiredfieldvalidator>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Province" SortExpression="Supplier_Province">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxProvince" runat="server" 
                        Text='<%# Bind("Supplier_Province") %>'></asp:TextBox>
                    <asp:Requiredfieldvalidator  ID = "rfvEditProvince" runat="server" ErrorMessage="Enter a Province!" ControlToValidate="TextBoxProvince" Text="*" ForeColor="Red">
                    </asp:Requiredfieldvalidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Supplier_Province") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBoxNewProvince" runat="server"></asp:TextBox>
                    <asp:Requiredfieldvalidator ValidationGroup="INSERT" ID = "rfvCreateProvince" runat="server" ErrorMessage="Enter a Province!" ControlToValidate="TextBoxNewProvince" Text="*" ForeColor="Red">
                        
                    </asp:Requiredfieldvalidator>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Postal Code" 
                SortExpression="Supplier_Postal_Code">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxPostalCode" runat="server" 
                        Text='<%# Bind("Supplier_Postal_Code") %>' MaxLength="4"></asp:TextBox>
                    <ajaxToolkit:MaskedEditExtender ID="MaskedEditExtender1" runat="server" TargetControlID="TextBox3" Mask="9999" />
                    <asp:Requiredfieldvalidator  ID = "rfvEditPostalCode" runat="server" ErrorMessage="Enter a 4 digit Postal Code!" ControlToValidate="TextBoxPostalCode" Text="*" ForeColor="Red">
                    </asp:Requiredfieldvalidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" 
                        Text='<%# Bind("Supplier_Postal_Code") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBoxNewPostalCode" runat="server" MaxLength="4"></asp:TextBox>
                    <ajaxToolkit:MaskedEditExtender ID="MaskedEditExtender2" runat="server" TargetControlID="TextBoxNewPostalCode" Mask="9999" />
                    <asp:Requiredfieldvalidator ValidationGroup="INSERT" ID = "rfvCreatePostalCode" runat="server" ErrorMessage="Enter a Postal Code!" ControlToValidate="TextBoxNewPostalCode" Text="*" ForeColor="Red">
                        
                    </asp:Requiredfieldvalidator>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Phone No" SortExpression="Supplier_Phone_No">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxPhoneNo" runat="server" 
                        Text='<%# Bind("Supplier_Phone_No") %>' MaxLength="12"></asp:TextBox>
                        <ajaxToolkit:MaskedEditExtender ID="MaskedEditExtender3" runat="server" TargetControlID="TextBoxPhoneNo" Mask="(999)9999999" />

                    <asp:Requiredfieldvalidator  ID = "rfvEditPhoneNo" runat="server" ErrorMessage="Enter a Phone No!" ControlToValidate="TextBoxPhoneNo" Text="*" ForeColor="Red">
                    </asp:Requiredfieldvalidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("Supplier_Phone_No") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBoxNewPhoneNo" runat="server" MaxLength="12"></asp:TextBox>
                    <ajaxToolkit:MaskedEditExtender ID="MaskedEditExtender4" runat="server" TargetControlID="TextBoxNewPhoneNo" Mask="(999)9999999" />
                    <asp:Requiredfieldvalidator ValidationGroup="INSERT" ID = "rfvCreatePhoneNo" runat="server" ErrorMessage="Enter a Phone No!" ControlToValidate="TextBoxNewPhoneNo" Text="*" ForeColor="Red">
                        
                    </asp:Requiredfieldvalidator>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Alt Phone No" 
                SortExpression="Supplier_Alt_Phone_No">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxAltPhoneNo" runat="server" 
                        Text='<%# Bind("Supplier_Alt_Phone_No") %>' MaxLength="12"></asp:TextBox>
                        <ajaxToolkit:MaskedEditExtender ID="MaskedEditExtender5" runat="server" TargetControlID="TextBoxAltPhoneNo" Mask="(999)9999999" />
                       
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" 
                        Text='<%# Bind("Supplier_Alt_Phone_No") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBoxNewAltPhoneNo" runat="server" MaxLength="12"></asp:TextBox>
                     <ajaxToolkit:MaskedEditExtender ID="MaskedEditExtender6" runat="server" TargetControlID="TextBoxNewAltPhoneNo" Mask="(999)9999999" />
                    
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Email" SortExpression="Supplier_Email">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxEmail" runat="server" Text='<%# Bind("Supplier_Email") %>'></asp:TextBox>
                     <ajaxToolkit:MaskedEditExtender ID="MaskedEditExtender7" runat="server" TargetControlID="TextBoxEmail"  PromptCharacter="@" />
                    <asp:Requiredfieldvalidator  ID = "rfvEditEmail" runat="server" ErrorMessage="Enter an Email Address!" ControlToValidate="TextBoxEmail" Text="*" ForeColor="Red">
                    </asp:Requiredfieldvalidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("Supplier_Email") %>'></asp:Label>
                </ItemTemplate>
                 <FooterTemplate>
                    <asp:TextBox ID="TextBoxNewEmail" runat="server"></asp:TextBox>
                    <asp:Requiredfieldvalidator ValidationGroup="INSERT" ID = "rfvCreateEmail" runat="server" ErrorMessage="Enter an Email Address" ControlToValidate="TextBoxNewEmail" Text="*" ForeColor="Red">
                        
                    </asp:Requiredfieldvalidator>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Password" SortExpression="Supplier_Password">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxPassword" runat="server" 
                        Text='<%# Bind("Supplier_Password") %>' MaxLength="10"></asp:TextBox>
                        
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("Supplier_Password") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBoxNewPassword" runat="server" MaxLength="10"></asp:TextBox>
                    
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Rep First Name" 
                SortExpression="Supplier_Rep_FName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxRepFName" runat="server" 
                        Text='<%# Bind("Supplier_Rep_FName") %>'></asp:TextBox>
                         <asp:Requiredfieldvalidator  ID = "rfvEditRepFName" runat="server" ErrorMessage="Enter a Representatives First Name!" ControlToValidate="TextBoxRepFName" Text="*" ForeColor="Red">
                    </asp:Requiredfieldvalidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label13" runat="server" Text='<%# Bind("Supplier_Rep_FName") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBoxNewRepFName" runat="server"></asp:TextBox>
                    <asp:Requiredfieldvalidator ValidationGroup="INSERT" ID = "rfvCreateRepFName" runat="server" ErrorMessage="Enter a Representatives First Name!" ControlToValidate="TextBoxNewRepFName" Text="*" ForeColor="Red">
                        
                    </asp:Requiredfieldvalidator>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Rep Surname" SortExpression="Supplier_Rep_SName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxRepSName" runat="server" 
                        Text='<%# Bind("Supplier_Rep_SName") %>'></asp:TextBox>
                        <asp:Requiredfieldvalidator  ID = "rfvEditRepSName" runat="server" ErrorMessage="Enter a Representatives Surname!" ControlToValidate="TextBoxRepSName" Text="*" ForeColor="Red">
                    </asp:Requiredfieldvalidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label14" runat="server" Text='<%# Bind("Supplier_Rep_SName") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBoxNewRepSName" runat="server"></asp:TextBox>
                    <asp:Requiredfieldvalidator ValidationGroup="INSERT" ID = "rfvCreateRepSName" runat="server" ErrorMessage="Enter a Representatives Surname!" ControlToValidate="TextBoxNewRepSName" Text="*" ForeColor="Red">
                        
                    </asp:Requiredfieldvalidator>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Rep Email" SortExpression="Supplier_Rep_Email">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxRepEmail" runat="server" 
                        Text='<%# Bind("Supplier_Rep_Email") %>'></asp:TextBox>
                        <asp:Requiredfieldvalidator  ID = "rfvEditRepEmail" runat="server" ErrorMessage="Enter a Representative Email Address!" ControlToValidate="TextBoxRepEmail" Text="*" ForeColor="Red">
                    </asp:Requiredfieldvalidator>
                </EditItemTemplate>

                <ItemTemplate>
                    <asp:Label ID="Label15" runat="server" Text='<%# Bind("Supplier_Rep_Email") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBoxNewRepEmail" runat="server"></asp:TextBox>
                    <asp:Requiredfieldvalidator ValidationGroup="INSERT" ID = "rfvCreateRepEmail" runat="server" ErrorMessage="Enter a Representative Email Address!" ControlToValidate="TextBoxNewRepEmail" Text="*" ForeColor="Red">
                        
                    </asp:Requiredfieldvalidator>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Rep Phone No" 
                SortExpression="Supplier_Rep_Phone_No">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxRepPhoneNo" runat="server" 
                        Text='<%# Bind("Supplier_Rep_Phone_No") %>' MaxLength="12"></asp:TextBox>
                    <asp:Requiredfieldvalidator  ID = "rfvEditRepPhoneNo" runat="server" ErrorMessage="Enter a Representatives Phone Number!" ControlToValidate="TextBoxRepPhoneNo" Text="*" ForeColor="Red">
                    </asp:Requiredfieldvalidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label16" runat="server" 
                        Text='<%# Bind("Supplier_Rep_Phone_No") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBoxNewRepPhoneNo" runat="server" MaxLength="12"></asp:TextBox>
                    <asp:Requiredfieldvalidator ValidationGroup="INSERT" ID = "rfvCreateRepPhoneNo" runat="server" ErrorMessage="Enter a Representatives Phone Number!" ControlToValidate="TextBoxNewRepPhoneNo" Text="*" ForeColor="Red">
                        
                    </asp:Requiredfieldvalidator>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Rep Alt Phone No" 
                SortExpression="Supplier_Rep_Alt_Phone_No">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxRepAltPhoneNo" runat="server" 
                        Text='<%# Bind("Supplier_Rep_Alt_Phone_No") %>' MaxLength="12"></asp:TextBox>

                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label17" runat="server" 
                        Text='<%# Bind("Supplier_Rep_Alt_Phone_No") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TextBoxNewRepAltPhoneNo" runat="server" MaxLength="12"></asp:TextBox>
                   
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Active Status" 
                SortExpression="Supplier_Active_Status">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownListActiveStatus" runat="server" SelectedValue = '<%# Bind("Supplier_Active_Status") %>'>
                        <asp:ListItem>T</asp:ListItem>
                        <asp:ListItem>F</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label18" runat="server" 
                        Text='<%# Bind("Supplier_Active_Status") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:DropDownList ID="DropDownListNewActiveStatus" runat="server" InitialValue="T">
                        <asp:ListItem>T</asp:ListItem>
                        <asp:ListItem>F</asp:ListItem>
                    </asp:DropDownList>
                </FooterTemplate>
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
    </div>

    <br />
    <div>
        <asp:ValidationSummary ValidationGroup="INSERT" ID="ValidationSummaryInsert" 
            runat="server" ForeColor="Red" ShowMessageBox="True" 
            ToolTip="Cannot add Supplier to the database!" />
        <asp:ValidationSummary  ID="ValidationSummaryEdit" runat="server" 
            ForeColor="Red" ShowMessageBox="True" ToolTip="Cannot update Supplier!"/>
    </div>
    
    <asp:SqlDataSource ID="SQLSuppliers" runat="server" 
        ConnectionString="<%$ ConnectionStrings:group16ConnectionString %>" 
        SelectCommand="SELECT * FROM [Supplier]" 
        ConflictDetection="CompareAllValues" 
        DeleteCommand="DELETE FROM [Supplier] WHERE [Supplier_ID] = @original_Supplier_ID AND [Supplier_Name] = @original_Supplier_Name AND [Supplier_Street_Addr_1] = @original_Supplier_Street_Addr_1 AND (([Supplier_Street_Addr_2] = @original_Supplier_Street_Addr_2) OR ([Supplier_Street_Addr_2] IS NULL AND @original_Supplier_Street_Addr_2 IS NULL)) AND [Supplier_Suburb] = @original_Supplier_Suburb AND [Supplier_City] = @original_Supplier_City AND [Supplier_Province] = @original_Supplier_Province AND [Supplier_Postal_Code] = @original_Supplier_Postal_Code AND [Supplier_Phone_No] = @original_Supplier_Phone_No AND (([Supplier_Alt_Phone_No] = @original_Supplier_Alt_Phone_No) OR ([Supplier_Alt_Phone_No] IS NULL AND @original_Supplier_Alt_Phone_No IS NULL)) AND [Supplier_Email] = @original_Supplier_Email AND (([Supplier_Password] = @original_Supplier_Password) OR ([Supplier_Password] IS NULL AND @original_Supplier_Password IS NULL)) AND [Supplier_Rep_FName] = @original_Supplier_Rep_FName AND [Supplier_Rep_SName] = @original_Supplier_Rep_SName AND [Supplier_Rep_Email] = @original_Supplier_Rep_Email AND [Supplier_Rep_Phone_No] = @original_Supplier_Rep_Phone_No AND (([Supplier_Rep_Alt_Phone_No] = @original_Supplier_Rep_Alt_Phone_No) OR ([Supplier_Rep_Alt_Phone_No] IS NULL AND @original_Supplier_Rep_Alt_Phone_No IS NULL)) AND [Supplier_Active_Status] = @original_Supplier_Active_Status" 
        InsertCommand="INSERT INTO [Supplier] ([Supplier_Name], [Supplier_Street_Addr_1], [Supplier_Street_Addr_2], [Supplier_Suburb], [Supplier_City], [Supplier_Province], [Supplier_Postal_Code], [Supplier_Phone_No], [Supplier_Alt_Phone_No], [Supplier_Email], [Supplier_Password], [Supplier_Rep_FName], [Supplier_Rep_SName], [Supplier_Rep_Email], [Supplier_Rep_Phone_No], [Supplier_Rep_Alt_Phone_No], [Supplier_Active_Status]) VALUES (@Supplier_Name, @Supplier_Street_Addr_1, @Supplier_Street_Addr_2, @Supplier_Suburb, @Supplier_City, @Supplier_Province, @Supplier_Postal_Code, @Supplier_Phone_No, @Supplier_Alt_Phone_No, @Supplier_Email, @Supplier_Password, @Supplier_Rep_FName, @Supplier_Rep_SName, @Supplier_Rep_Email, @Supplier_Rep_Phone_No, @Supplier_Rep_Alt_Phone_No, @Supplier_Active_Status)" 
        OldValuesParameterFormatString="original_{0}" 
        UpdateCommand="UPDATE [Supplier] SET [Supplier_Name] = @Supplier_Name, [Supplier_Street_Addr_1] = @Supplier_Street_Addr_1, [Supplier_Street_Addr_2] = @Supplier_Street_Addr_2, [Supplier_Suburb] = @Supplier_Suburb, [Supplier_City] = @Supplier_City, [Supplier_Province] = @Supplier_Province, [Supplier_Postal_Code] = @Supplier_Postal_Code, [Supplier_Phone_No] = @Supplier_Phone_No, [Supplier_Alt_Phone_No] = @Supplier_Alt_Phone_No, [Supplier_Email] = @Supplier_Email, [Supplier_Password] = @Supplier_Password, [Supplier_Rep_FName] = @Supplier_Rep_FName, [Supplier_Rep_SName] = @Supplier_Rep_SName, [Supplier_Rep_Email] = @Supplier_Rep_Email, [Supplier_Rep_Phone_No] = @Supplier_Rep_Phone_No, [Supplier_Rep_Alt_Phone_No] = @Supplier_Rep_Alt_Phone_No, [Supplier_Active_Status] = @Supplier_Active_Status WHERE [Supplier_ID] = @original_Supplier_ID AND [Supplier_Name] = @original_Supplier_Name AND [Supplier_Street_Addr_1] = @original_Supplier_Street_Addr_1 AND (([Supplier_Street_Addr_2] = @original_Supplier_Street_Addr_2) OR ([Supplier_Street_Addr_2] IS NULL AND @original_Supplier_Street_Addr_2 IS NULL)) AND [Supplier_Suburb] = @original_Supplier_Suburb AND [Supplier_City] = @original_Supplier_City AND [Supplier_Province] = @original_Supplier_Province AND [Supplier_Postal_Code] = @original_Supplier_Postal_Code AND [Supplier_Phone_No] = @original_Supplier_Phone_No AND (([Supplier_Alt_Phone_No] = @original_Supplier_Alt_Phone_No) OR ([Supplier_Alt_Phone_No] IS NULL AND @original_Supplier_Alt_Phone_No IS NULL)) AND [Supplier_Email] = @original_Supplier_Email AND (([Supplier_Password] = @original_Supplier_Password) OR ([Supplier_Password] IS NULL AND @original_Supplier_Password IS NULL)) AND [Supplier_Rep_FName] = @original_Supplier_Rep_FName AND [Supplier_Rep_SName] = @original_Supplier_Rep_SName AND [Supplier_Rep_Email] = @original_Supplier_Rep_Email AND [Supplier_Rep_Phone_No] = @original_Supplier_Rep_Phone_No AND (([Supplier_Rep_Alt_Phone_No] = @original_Supplier_Rep_Alt_Phone_No) OR ([Supplier_Rep_Alt_Phone_No] IS NULL AND @original_Supplier_Rep_Alt_Phone_No IS NULL)) AND [Supplier_Active_Status] = @original_Supplier_Active_Status">
        <DeleteParameters>
            <asp:Parameter Name="original_Supplier_ID" Type="Int32" />
            <asp:Parameter Name="original_Supplier_Name" Type="String" />
            <asp:Parameter Name="original_Supplier_Street_Addr_1" Type="String" />
            <asp:Parameter Name="original_Supplier_Street_Addr_2" Type="String" />
            <asp:Parameter Name="original_Supplier_Suburb" Type="String" />
            <asp:Parameter Name="original_Supplier_City" Type="String" />
            <asp:Parameter Name="original_Supplier_Province" Type="String" />
            <asp:Parameter Name="original_Supplier_Postal_Code" Type="Decimal" />
            <asp:Parameter Name="original_Supplier_Phone_No" Type="String" />
            <asp:Parameter Name="original_Supplier_Alt_Phone_No" Type="String" />
            <asp:Parameter Name="original_Supplier_Email" Type="String" />
            <asp:Parameter Name="original_Supplier_Password" Type="String" />
            <asp:Parameter Name="original_Supplier_Rep_FName" Type="String" />
            <asp:Parameter Name="original_Supplier_Rep_SName" Type="String" />
            <asp:Parameter Name="original_Supplier_Rep_Email" Type="String" />
            <asp:Parameter Name="original_Supplier_Rep_Phone_No" Type="String" />
            <asp:Parameter Name="original_Supplier_Rep_Alt_Phone_No" Type="String" />
            <asp:Parameter Name="original_Supplier_Active_Status" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Supplier_Name" Type="String" />
            <asp:Parameter Name="Supplier_Street_Addr_1" Type="String" />
            <asp:Parameter Name="Supplier_Street_Addr_2" Type="String" />
            <asp:Parameter Name="Supplier_Suburb" Type="String" />
            <asp:Parameter Name="Supplier_City" Type="String" />
            <asp:Parameter Name="Supplier_Province" Type="String" />
            <asp:Parameter Name="Supplier_Postal_Code" Type="Decimal" />
            <asp:Parameter Name="Supplier_Phone_No" Type="String" />
            <asp:Parameter Name="Supplier_Alt_Phone_No" Type="String" />
            <asp:Parameter Name="Supplier_Email" Type="String" />
            <asp:Parameter Name="Supplier_Password" Type="String" />
            <asp:Parameter Name="Supplier_Rep_FName" Type="String" />
            <asp:Parameter Name="Supplier_Rep_SName" Type="String" />
            <asp:Parameter Name="Supplier_Rep_Email" Type="String" />
            <asp:Parameter Name="Supplier_Rep_Phone_No" Type="String" />
            <asp:Parameter Name="Supplier_Rep_Alt_Phone_No" Type="String" />
            <asp:Parameter Name="Supplier_Active_Status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Supplier_Name" Type="String" />
            <asp:Parameter Name="Supplier_Street_Addr_1" Type="String" />
            <asp:Parameter Name="Supplier_Street_Addr_2" Type="String" />
            <asp:Parameter Name="Supplier_Suburb" Type="String" />
            <asp:Parameter Name="Supplier_City" Type="String" />
            <asp:Parameter Name="Supplier_Province" Type="String" />
            <asp:Parameter Name="Supplier_Postal_Code" Type="Decimal" />
            <asp:Parameter Name="Supplier_Phone_No" Type="String" />
            <asp:Parameter Name="Supplier_Alt_Phone_No" Type="String" />
            <asp:Parameter Name="Supplier_Email" Type="String" />
            <asp:Parameter Name="Supplier_Password" Type="String" />
            <asp:Parameter Name="Supplier_Rep_FName" Type="String" />
            <asp:Parameter Name="Supplier_Rep_SName" Type="String" />
            <asp:Parameter Name="Supplier_Rep_Email" Type="String" />
            <asp:Parameter Name="Supplier_Rep_Phone_No" Type="String" />
            <asp:Parameter Name="Supplier_Rep_Alt_Phone_No" Type="String" />
            <asp:Parameter Name="Supplier_Active_Status" Type="String" />
            <asp:Parameter Name="original_Supplier_ID" Type="Int32" />
            <asp:Parameter Name="original_Supplier_Name" Type="String" />
            <asp:Parameter Name="original_Supplier_Street_Addr_1" Type="String" />
            <asp:Parameter Name="original_Supplier_Street_Addr_2" Type="String" />
            <asp:Parameter Name="original_Supplier_Suburb" Type="String" />
            <asp:Parameter Name="original_Supplier_City" Type="String" />
            <asp:Parameter Name="original_Supplier_Province" Type="String" />
            <asp:Parameter Name="original_Supplier_Postal_Code" Type="Decimal" />
            <asp:Parameter Name="original_Supplier_Phone_No" Type="String" />
            <asp:Parameter Name="original_Supplier_Alt_Phone_No" Type="String" />
            <asp:Parameter Name="original_Supplier_Email" Type="String" />
            <asp:Parameter Name="original_Supplier_Password" Type="String" />
            <asp:Parameter Name="original_Supplier_Rep_FName" Type="String" />
            <asp:Parameter Name="original_Supplier_Rep_SName" Type="String" />
            <asp:Parameter Name="original_Supplier_Rep_Email" Type="String" />
            <asp:Parameter Name="original_Supplier_Rep_Phone_No" Type="String" />
            <asp:Parameter Name="original_Supplier_Rep_Alt_Phone_No" Type="String" />
            <asp:Parameter Name="original_Supplier_Active_Status" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

