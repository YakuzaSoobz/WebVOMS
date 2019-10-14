﻿<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeMasterPage.master" AutoEventWireup="true"
    CodeFile="CustomerManager.aspx.cs" Inherits="EmployeePages_CustomerManager" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">

    <br />
    <h2 style="font-size: x-large; text-decoration: underline;">
           Customer Manager:
    </h2>
    <br />
    <br />
    <table class="style18">
            <tr>
                <td width="80%" height="30px" >
                    <asp:DropDownList ID="DropDownListSearch" runat="server" AutoPostBack="True">
                        <asp:ListItem>Customer Name</asp:ListItem>
                        <asp:ListItem>City</asp:ListItem>
                    </asp:DropDownList>

                <asp:TextBox ID="TextBoxSearch" runat="server" Width="200px" Height="30px"></asp:TextBox>
                    <asp:Button ID="ButtonSearch" runat="server" BackColor="#5D7B9D" 
                        BorderColor="Black" BorderStyle="Solid" ForeColor="White" Height="30px" 
                        Text="Search" Width="70px" onclick="ButtonSearch_Click"
                         />
                        
                    <asp:Button ID="ButtonRefresh" runat="server" BackColor="#5D7B9D" 
                        BorderColor="Black" BorderStyle="Solid" ForeColor="White" Height="30px" 
                        Text="Refresh" Width="70px" onclick="ButtonRefresh_Click"   />
                        
                </td>
              
                
            </tr>
     </table>
             
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>  
   <div style="overflow: scroll">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Customer_ID" DataSourceID="SQLCustomerManager"
        ForeColor="#333333" GridLines="None" Width="1173px" ShowFooter="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>

            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton OnClientClick="return confirm('Are you sure you want to update the product details');" ID="LinkButton1"  runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update"></asp:LinkButton>

                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                        CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="Edit"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Customer ID" InsertVisible="False" 
                SortExpression="Customer_ID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Customer_ID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Customer_ID") %>'></asp:Label>
                </ItemTemplate>

                <FooterTemplate>
                    <asp:LinkButton ValidationGroup="INSERT" OnClick="lbInsert_Click" OnClientClick="return confirm('Are you sure you want to add a new Customer to the Database?');"  ID="lbInsert"  runat="server" Text="Insert">Insert</asp:LinkButton>
                </FooterTemplate>

            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name" SortExpression="Cust_FName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Cust_FName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditName" runat="server" ErrorMessage="Name is a required field" ControlToValidate = "TextBox1" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Cust_FName") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertName" ValidationGroup="INSERT" runat="server" ErrorMessage="Name is a required field" ControlToValidate = "txtFName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Surname" SortExpression="Cust_SName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Cust_SName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditSurame" runat="server" ErrorMessage="Surname is a required field" ControlToValidate = "TextBox2" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Cust_SName") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtSurname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertSurname" ValidationGroup="INSERT" runat="server" ErrorMessage="Surname is a required field" ControlToValidate = "txtSurname" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DOB" SortExpression="Cust_DOB">
                <EditItemTemplate>
                
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Cust_DOB") %>' ></asp:TextBox>

                       
                     <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox3" />
                      
                    <asp:RequiredFieldValidator ID="rfvEditDOB" runat="server" ErrorMessage="DOB is a required field" ControlToValidate = "TextBox3" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Cust_DOB") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtDOB"  runat="server"></asp:TextBox>

                         <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtDOB" />
                    <asp:RequiredFieldValidator ID="rfvInsertDOB" ValidationGroup="INSERT" runat="server" ErrorMessage="DOB is a required field" ControlToValidate = "txtDOB" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Phone No" SortExpression="Cust_Phone_No">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Cust_Phone_No") %>' MaxLength="12"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditPhoneNo" runat="server" ErrorMessage="Phone No. is a required field" ControlToValidate = "TextBox4" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Cust_Phone_No") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtCustPhone" runat="server" MaxLength="12"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertPhoneNo" ValidationGroup="INSERT" runat="server" ErrorMessage="Phone No. is a required field" ControlToValidate = "txtCustPhone" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Alt Phone No" SortExpression="Cust_Alt_Phone_No">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Cust_Alt_Phone_No") %>' MaxLength="12"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Cust_Alt_Phone_No") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtCustAltPhone" runat="server" MaxLength="12"> </asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="Cust_Email">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Cust_Email") %>' ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditEmail" runat="server" ErrorMessage="Email is a required field" ControlToValidate = "TextBox6" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Cust_Email") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtEmail" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertEmail" ValidationGroup="INSERT" runat="server" ErrorMessage="Email is a required field" ControlToValidate = "txtEmail" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Password" SortExpression="Cust_Password">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7"  runat="server" Text='<%# Bind("Cust_Password") %>'  MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditPassword" runat="server" ErrorMessage="Password is a required field"  ControlToValidate = "TextBox7" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server"  Text='<%# Bind("Cust_Password") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtPassword"   runat="server"   MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertPassword" ValidationGroup="INSERT" runat="server"  ErrorMessage="Password is a required field" ControlToValidate = "txtPassword" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address " SortExpression="Cust_Street_Addr_1">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Cust_Street_Addr_1") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditStrAdd" runat="server" ErrorMessage="Street Address is a required field" ControlToValidate = "TextBox8" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("Cust_Street_Addr_1") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtCustStrAddress" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertStrAdd" ValidationGroup="INSERT" runat="server" ErrorMessage="Street Address is a required field" ControlToValidate = "txtCustStrAddress" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Alternate Address" 
                SortExpression="Cust_Street_Addr_2">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Cust_Street_Addr_2") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("Cust_Street_Addr_2") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtCustStrAddress2" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Suburb" SortExpression="Cust_Suburb">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("Cust_Suburb") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditSuburb" runat="server" ErrorMessage="Suburb is a required field" ControlToValidate = "TextBox10" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("Cust_Suburb") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtSuburb" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertSuburb" ValidationGroup="INSERT" runat="server" ErrorMessage="Suburb is a required field" ControlToValidate = "txtSuburb" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="City" SortExpression="Cust_City">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Cust_City") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditCity" runat="server" ErrorMessage="City is a required field" ControlToValidate = "TextBox11" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("Cust_City") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertCity" ValidationGroup="INSERT" runat="server" ErrorMessage="City is a required field" ControlToValidate = "txtCity" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Province" SortExpression="Cust_Province">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("Cust_Province") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditProvince" runat="server" ErrorMessage="Province is a required field" ControlToValidate = "TextBox12" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label13" runat="server" Text='<%# Bind("Cust_Province") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtProvince" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertProvince" ValidationGroup="INSERT" runat="server" ErrorMessage="Province is a required field" ControlToValidate = "txtProvince" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Postal Code" SortExpression="Cust_Postal_Code">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("Cust_Postal_Code") %>' MaxLength="4"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditPostCode" runat="server" ErrorMessage="Postal Code is a required field" ControlToValidate = "TextBox13" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label14" runat="server" Text='<%# Bind("Cust_Postal_Code") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtPostalCode" runat="server" MaxLength="4"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertPostCode" ValidationGroup="INSERT" runat="server" ErrorMessage="Postal Code is a required field" ControlToValidate = "txtPostalCode" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Active Status" 
                SortExpression="Cust_Active_Status">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("Cust_Active_Status") %>'>
                        <asp:ListItem>Select Active Status</asp:ListItem>
                        <asp:ListItem>T</asp:ListItem>
                        <asp:ListItem>F</asp:ListItem>
                    </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvEditActStat" runat="server" ErrorMessage="Active Status is a required field" ControlToValidate = "DropDownList1" Text="*" ForeColor="Red" InitialValue="Select Active Status"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label15" runat="server" Text='<%# Bind("Cust_Active_Status") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:DropDownList ID="ddlActStat" runat="server">
                        <asp:ListItem>Select Active Status</asp:ListItem>
                        <asp:ListItem>T</asp:ListItem>
                        <asp:ListItem>F</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvInsertActStat" ValidationGroup="INSERT" runat="server" ErrorMessage="Active Status is a required field" ControlToValidate = "ddlActStat" Text="*" ForeColor="Red" InitialValue="Select Active Status"></asp:RequiredFieldValidator>
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

    
    <asp:ValidationSummary ValidationGroup="INSERT" ID="ValidationSummary1" 
        ForeColor="Red" runat="server" ShowMessageBox="True" />
    <asp:ValidationSummary ID="ValidationSummary2" runat="server" 
        ShowMessageBox="True" />
    <asp:SqlDataSource ID="SQLCustomerManager" runat="server" ConnectionString="<%$ ConnectionStrings:group16ConnectionString %>"
        SelectCommand="SELECT * FROM [Customer]" ConflictDetection="CompareAllValues"
        DeleteCommand="DELETE FROM [Customer] WHERE [Customer_ID] = @original_Customer_ID AND [Cust_FName] = @original_Cust_FName AND [Cust_SName] = @original_Cust_SName AND [Cust_DOB] = @original_Cust_DOB AND [Cust_Phone_No] = @original_Cust_Phone_No AND (([Cust_Alt_Phone_No] = @original_Cust_Alt_Phone_No) OR ([Cust_Alt_Phone_No] IS NULL AND @original_Cust_Alt_Phone_No IS NULL)) AND [Cust_Email] = @original_Cust_Email AND (([Cust_Password] = @original_Cust_Password) OR ([Cust_Password] IS NULL AND @original_Cust_Password IS NULL)) AND [Cust_Street_Addr_1] = @original_Cust_Street_Addr_1 AND (([Cust_Street_Addr_2] = @original_Cust_Street_Addr_2) OR ([Cust_Street_Addr_2] IS NULL AND @original_Cust_Street_Addr_2 IS NULL)) AND [Cust_Suburb] = @original_Cust_Suburb AND [Cust_City] = @original_Cust_City AND [Cust_Province] = @original_Cust_Province AND [Cust_Postal_Code] = @original_Cust_Postal_Code AND [Cust_Active_Status] = @original_Cust_Active_Status"
        InsertCommand="INSERT INTO [Customer] ([Cust_FName], [Cust_SName], [Cust_DOB], [Cust_Phone_No], [Cust_Alt_Phone_No], [Cust_Email], [Cust_Password], [Cust_Street_Addr_1], [Cust_Street_Addr_2], [Cust_Suburb], [Cust_City], [Cust_Province], [Cust_Postal_Code], [Cust_Active_Status]) VALUES (@Cust_FName, @Cust_SName, @Cust_DOB, @Cust_Phone_No, @Cust_Alt_Phone_No, @Cust_Email, @Cust_Password, @Cust_Street_Addr_1, @Cust_Street_Addr_2, @Cust_Suburb, @Cust_City, @Cust_Province, @Cust_Postal_Code, @Cust_Active_Status)"
        OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Customer] SET [Cust_FName] = @Cust_FName, [Cust_SName] = @Cust_SName, [Cust_DOB] = @Cust_DOB, [Cust_Phone_No] = @Cust_Phone_No, [Cust_Alt_Phone_No] = @Cust_Alt_Phone_No, [Cust_Email] = @Cust_Email, [Cust_Password] = @Cust_Password, [Cust_Street_Addr_1] = @Cust_Street_Addr_1, [Cust_Street_Addr_2] = @Cust_Street_Addr_2, [Cust_Suburb] = @Cust_Suburb, [Cust_City] = @Cust_City, [Cust_Province] = @Cust_Province, [Cust_Postal_Code] = @Cust_Postal_Code, [Cust_Active_Status] = @Cust_Active_Status WHERE [Customer_ID] = @original_Customer_ID AND [Cust_FName] = @original_Cust_FName AND [Cust_SName] = @original_Cust_SName AND [Cust_DOB] = @original_Cust_DOB AND [Cust_Phone_No] = @original_Cust_Phone_No AND (([Cust_Alt_Phone_No] = @original_Cust_Alt_Phone_No) OR ([Cust_Alt_Phone_No] IS NULL AND @original_Cust_Alt_Phone_No IS NULL)) AND [Cust_Email] = @original_Cust_Email AND (([Cust_Password] = @original_Cust_Password) OR ([Cust_Password] IS NULL AND @original_Cust_Password IS NULL)) AND [Cust_Street_Addr_1] = @original_Cust_Street_Addr_1 AND (([Cust_Street_Addr_2] = @original_Cust_Street_Addr_2) OR ([Cust_Street_Addr_2] IS NULL AND @original_Cust_Street_Addr_2 IS NULL)) AND [Cust_Suburb] = @original_Cust_Suburb AND [Cust_City] = @original_Cust_City AND [Cust_Province] = @original_Cust_Province AND [Cust_Postal_Code] = @original_Cust_Postal_Code AND [Cust_Active_Status] = @original_Cust_Active_Status">
        <DeleteParameters>
            <asp:Parameter Name="original_Customer_ID" Type="Int32" />
            <asp:Parameter Name="original_Cust_FName" Type="String" />
            <asp:Parameter Name="original_Cust_SName" Type="String" />
            <asp:Parameter DbType="Date" Name="original_Cust_DOB" />
            <asp:Parameter Name="original_Cust_Phone_No" Type="String" />
            <asp:Parameter Name="original_Cust_Alt_Phone_No" Type="String" />
            <asp:Parameter Name="original_Cust_Email" Type="String" />
            <asp:Parameter Name="original_Cust_Password" Type="String" />
            <asp:Parameter Name="original_Cust_Street_Addr_1" Type="String" />
            <asp:Parameter Name="original_Cust_Street_Addr_2" Type="String" />
            <asp:Parameter Name="original_Cust_Suburb" Type="String" />
            <asp:Parameter Name="original_Cust_City" Type="String" />
            <asp:Parameter Name="original_Cust_Province" Type="String" />
            <asp:Parameter Name="original_Cust_Postal_Code" Type="Decimal" />
            <asp:Parameter Name="original_Cust_Active_Status" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Cust_FName" Type="String" />
            <asp:Parameter Name="Cust_SName" Type="String" />
            <asp:Parameter DbType="Date" Name="Cust_DOB" />
            <asp:Parameter Name="Cust_Phone_No" Type="String" />
            <asp:Parameter Name="Cust_Alt_Phone_No" Type="String" />
            <asp:Parameter Name="Cust_Email" Type="String" />
            <asp:Parameter Name="Cust_Password" Type="String" />
            <asp:Parameter Name="Cust_Street_Addr_1" Type="String" />
            <asp:Parameter Name="Cust_Street_Addr_2" Type="String" />
            <asp:Parameter Name="Cust_Suburb" Type="String" />
            <asp:Parameter Name="Cust_City" Type="String" />
            <asp:Parameter Name="Cust_Province" Type="String" />
            <asp:Parameter Name="Cust_Postal_Code" Type="Decimal" />
            <asp:Parameter Name="Cust_Active_Status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Cust_FName" Type="String" />
            <asp:Parameter Name="Cust_SName" Type="String" />
            <asp:Parameter DbType="Date" Name="Cust_DOB" />
            <asp:Parameter Name="Cust_Phone_No" Type="String" />
            <asp:Parameter Name="Cust_Alt_Phone_No" Type="String" />
            <asp:Parameter Name="Cust_Email" Type="String" />
            <asp:Parameter Name="Cust_Password" Type="String" />
            <asp:Parameter Name="Cust_Street_Addr_1" Type="String" />
            <asp:Parameter Name="Cust_Street_Addr_2" Type="String" />
            <asp:Parameter Name="Cust_Suburb" Type="String" />
            <asp:Parameter Name="Cust_City" Type="String" />
            <asp:Parameter Name="Cust_Province" Type="String" />
            <asp:Parameter Name="Cust_Postal_Code" Type="Decimal" />
            <asp:Parameter Name="Cust_Active_Status" Type="String" />
            <asp:Parameter Name="original_Customer_ID" Type="Int32" />
            <asp:Parameter Name="original_Cust_FName" Type="String" />
            <asp:Parameter Name="original_Cust_SName" Type="String" />
            <asp:Parameter DbType="Date" Name="original_Cust_DOB" />
            <asp:Parameter Name="original_Cust_Phone_No" Type="String" />
            <asp:Parameter Name="original_Cust_Alt_Phone_No" Type="String" />
            <asp:Parameter Name="original_Cust_Email" Type="String" />
            <asp:Parameter Name="original_Cust_Password" Type="String" />
            <asp:Parameter Name="original_Cust_Street_Addr_1" Type="String" />
            <asp:Parameter Name="original_Cust_Street_Addr_2" Type="String" />
            <asp:Parameter Name="original_Cust_Suburb" Type="String" />
            <asp:Parameter Name="original_Cust_City" Type="String" />
            <asp:Parameter Name="original_Cust_Province" Type="String" />
            <asp:Parameter Name="original_Cust_Postal_Code" Type="Decimal" />
            <asp:Parameter Name="original_Cust_Active_Status" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>
