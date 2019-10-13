<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="CustomerAccount.aspx.cs" Inherits="CustomerPages_CustomerAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <h2 style="font-size: x-large; text-decoration: underline;">
           My Account:
    </h2>
    <br />
    <br />
    <asp:SqlDataSource ID="SQLCustomerDetails" runat="server" 
        ConnectionString="<%$ ConnectionStrings:group16ConnectionString %>" 
        
        
        
        SelectCommand="SELECT * FROM [Customer] WHERE ([Cust_Email] = @Cust_Email)" 
        ConflictDetection="CompareAllValues" 
        DeleteCommand="DELETE FROM [Customer] WHERE [Customer_ID] = @original_Customer_ID AND [Cust_FName] = @original_Cust_FName AND [Cust_SName] = @original_Cust_SName AND [Cust_DOB] = @original_Cust_DOB AND [Cust_Phone_No] = @original_Cust_Phone_No AND (([Cust_Alt_Phone_No] = @original_Cust_Alt_Phone_No) OR ([Cust_Alt_Phone_No] IS NULL AND @original_Cust_Alt_Phone_No IS NULL)) AND [Cust_Email] = @original_Cust_Email AND (([Cust_Password] = @original_Cust_Password) OR ([Cust_Password] IS NULL AND @original_Cust_Password IS NULL)) AND [Cust_Street_Addr_1] = @original_Cust_Street_Addr_1 AND (([Cust_Street_Addr_2] = @original_Cust_Street_Addr_2) OR ([Cust_Street_Addr_2] IS NULL AND @original_Cust_Street_Addr_2 IS NULL)) AND [Cust_Suburb] = @original_Cust_Suburb AND [Cust_City] = @original_Cust_City AND [Cust_Province] = @original_Cust_Province AND [Cust_Postal_Code] = @original_Cust_Postal_Code AND [Cust_Active_Status] = @original_Cust_Active_Status" 
        InsertCommand="INSERT INTO [Customer] ([Cust_FName], [Cust_SName], [Cust_DOB], [Cust_Phone_No], [Cust_Alt_Phone_No], [Cust_Email], [Cust_Password], [Cust_Street_Addr_1], [Cust_Street_Addr_2], [Cust_Suburb], [Cust_City], [Cust_Province], [Cust_Postal_Code], [Cust_Active_Status]) VALUES (@Cust_FName, @Cust_SName, @Cust_DOB, @Cust_Phone_No, @Cust_Alt_Phone_No, @Cust_Email, @Cust_Password, @Cust_Street_Addr_1, @Cust_Street_Addr_2, @Cust_Suburb, @Cust_City, @Cust_Province, @Cust_Postal_Code, @Cust_Active_Status)" 
        OldValuesParameterFormatString="original_{0}" 
        UpdateCommand="UPDATE [Customer] SET [Cust_FName] = @Cust_FName, [Cust_SName] = @Cust_SName, [Cust_DOB] = @Cust_DOB, [Cust_Phone_No] = @Cust_Phone_No, [Cust_Alt_Phone_No] = @Cust_Alt_Phone_No, [Cust_Email] = @Cust_Email, [Cust_Password] = @Cust_Password, [Cust_Street_Addr_1] = @Cust_Street_Addr_1, [Cust_Street_Addr_2] = @Cust_Street_Addr_2, [Cust_Suburb] = @Cust_Suburb, [Cust_City] = @Cust_City, [Cust_Province] = @Cust_Province, [Cust_Postal_Code] = @Cust_Postal_Code, [Cust_Active_Status] = @Cust_Active_Status WHERE [Customer_ID] = @original_Customer_ID AND [Cust_FName] = @original_Cust_FName AND [Cust_SName] = @original_Cust_SName AND [Cust_DOB] = @original_Cust_DOB AND [Cust_Phone_No] = @original_Cust_Phone_No AND (([Cust_Alt_Phone_No] = @original_Cust_Alt_Phone_No) OR ([Cust_Alt_Phone_No] IS NULL AND @original_Cust_Alt_Phone_No IS NULL)) AND [Cust_Email] = @original_Cust_Email AND (([Cust_Password] = @original_Cust_Password) OR ([Cust_Password] IS NULL AND @original_Cust_Password IS NULL)) AND [Cust_Street_Addr_1] = @original_Cust_Street_Addr_1 AND (([Cust_Street_Addr_2] = @original_Cust_Street_Addr_2) OR ([Cust_Street_Addr_2] IS NULL AND @original_Cust_Street_Addr_2 IS NULL)) AND [Cust_Suburb] = @original_Cust_Suburb AND [Cust_City] = @original_Cust_City AND [Cust_Province] = @original_Cust_Province AND [Cust_Postal_Code] = @original_Cust_Postal_Code AND [Cust_Active_Status] = @original_Cust_Active_Status">
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
        <SelectParameters>
            <asp:SessionParameter Name="Cust_Email" SessionField="New" Type="String" />
        </SelectParameters>
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
    <br />
    <br />
    <br />
    <br />
    <div align="center">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataSourceID="SQLCustomerDetails" Height="50px" 
        Width="458px" DataKeyNames="Customer_ID" CellPadding="4" ForeColor="#333333" 
            GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:TemplateField HeaderText="ID" InsertVisible="False" 
                SortExpression="Customer_ID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Customer_ID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Customer_ID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Firstname" SortExpression="Cust_FName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Cust_FName") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Cust_FName") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Cust_FName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Surname" SortExpression="Cust_SName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Cust_SName") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Cust_SName") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Cust_SName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DOB" SortExpression="Cust_DOB">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Cust_DOB") %>' Enabled="False"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Cust_DOB") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Cust_DOB") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Phone No" SortExpression="Cust_Phone_No">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Cust_Phone_No") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Cust_Phone_No") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Cust_Phone_No") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Alt Phone No" SortExpression="Cust_Alt_Phone_No">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" 
                        Text='<%# Bind("Cust_Alt_Phone_No") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" 
                        Text='<%# Bind("Cust_Alt_Phone_No") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Cust_Alt_Phone_No") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="Cust_Email">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Cust_Email") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Cust_Email") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Cust_Email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Password" SortExpression="Cust_Password">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Cust_Password") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Cust_Password") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("Cust_Password") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Street Address 1" 
                SortExpression="Cust_Street_Addr_1">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" 
                        Text='<%# Bind("Cust_Street_Addr_1") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" 
                        Text='<%# Bind("Cust_Street_Addr_1") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("Cust_Street_Addr_1") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Street Address 2" 
                SortExpression="Cust_Street_Addr_2">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" 
                        Text='<%# Bind("Cust_Street_Addr_2") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" 
                        Text='<%# Bind("Cust_Street_Addr_2") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("Cust_Street_Addr_2") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Suburb" SortExpression="Cust_Suburb">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("Cust_Suburb") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("Cust_Suburb") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("Cust_Suburb") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="City" SortExpression="Cust_City">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Cust_City") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Cust_City") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("Cust_City") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Province" SortExpression="Cust_Province">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("Cust_Province") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("Cust_Province") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label13" runat="server" Text='<%# Bind("Cust_Province") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Postal Code" SortExpression="Cust_Postal_Code">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox13" runat="server" 
                        Text='<%# Bind("Cust_Postal_Code") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox13" runat="server" 
                        Text='<%# Bind("Cust_Postal_Code") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label14" runat="server" Text='<%# Bind("Cust_Postal_Code") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Active Status" 
                SortExpression="Cust_Active_Status">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox14" runat="server" 
                        Text='<%# Bind("Cust_Active_Status") %>' Enabled="False"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox14" runat="server" 
                        Text='<%# Bind("Cust_Active_Status") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label15" runat="server" Text='<%# Bind("Cust_Active_Status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

