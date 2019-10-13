<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeMasterPage.master" AutoEventWireup="true" CodeFile="EmployeeAccount.aspx.cs" Inherits="EmployeePages_EmployeeAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
 <h2 style="font-size: x-large; text-decoration: underline;">
           Employee Account:
    </h2>
    <br />
    <br />
    <br />
    <div style="vertical-align:middle; margin: 0 auto;">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            CellPadding="4" DataKeyNames="Employee_ID" DataSourceID="SQLEmployee" 
            ForeColor="#333333" GridLines="None" Height="50px" Width="766px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:TemplateField HeaderText="Employee ID" InsertVisible="False" 
                    SortExpression="Employee_ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Employee_ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Employee_ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="First Name" SortExpression="Employee_FName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Employee_FName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Employee_FName") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Employee_FName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Surname" SortExpression="Employee_SName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Employee_SName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Employee_SName") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Employee_SName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DOB" SortExpression="Employee_DOB">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Employee_DOB") %>' Enabled="False"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Employee_DOB") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Employee_DOB") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Gender" SortExpression="Employee_Gender">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Employee_Gender") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Employee_Gender") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Employee_Gender") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Phone No" SortExpression="Employee_Phone_No">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" 
                            Text='<%# Bind("Employee_Phone_No") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" 
                            Text='<%# Bind("Employee_Phone_No") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Employee_Phone_No") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Alternate Phone No" 
                    SortExpression="Employee_Alt_Phone_No">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" 
                            Text='<%# Bind("Employee_Alt_Phone_No") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" 
                            Text='<%# Bind("Employee_Alt_Phone_No") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" 
                            Text='<%# Bind("Employee_Alt_Phone_No") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email" SortExpression="Employee_Email">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Employee_Email") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Employee_Email") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("Employee_Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Password" SortExpression="Employee_Password">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" 
                            Text='<%# Bind("Employee_Password") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" 
                            Text='<%# Bind("Employee_Password") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("Employee_Password") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SA ID No" SortExpression="Employee_SA_ID_No">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox9" runat="server" 
                            Text='<%# Bind("Employee_SA_ID_No") %>' Enabled="False"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox9" runat="server" 
                            Text='<%# Bind("Employee_SA_ID_No") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%# Bind("Employee_SA_ID_No") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Street Address 1" 
                    SortExpression="Employee_Street_Addr_1">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox10" runat="server" 
                            Text='<%# Bind("Employee_Street_Addr_1") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox10" runat="server" 
                            Text='<%# Bind("Employee_Street_Addr_1") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label11" runat="server" 
                            Text='<%# Bind("Employee_Street_Addr_1") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Street Address 2" 
                    SortExpression="Employee_Street_Addr_2">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox11" runat="server" 
                            Text='<%# Bind("Employee_Street_Addr_2") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox11" runat="server" 
                            Text='<%# Bind("Employee_Street_Addr_2") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label12" runat="server" 
                            Text='<%# Bind("Employee_Street_Addr_2") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Suburb" SortExpression="Employee_Suburb">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox12" runat="server" 
                            Text='<%# Bind("Employee_Suburb") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox12" runat="server" 
                            Text='<%# Bind("Employee_Suburb") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label13" runat="server" Text='<%# Bind("Employee_Suburb") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="City" SortExpression="Employee_City">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("Employee_City") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("Employee_City") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label14" runat="server" Text='<%# Bind("Employee_City") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Province" SortExpression="Employee_Province">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox14" runat="server" 
                            Text='<%# Bind("Employee_Province") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox14" runat="server" 
                            Text='<%# Bind("Employee_Province") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label15" runat="server" Text='<%# Bind("Employee_Province") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Postal Code" 
                    SortExpression="Employee_Postal_Code">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox15" runat="server" 
                            Text='<%# Bind("Employee_Postal_Code") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox15" runat="server" 
                            Text='<%# Bind("Employee_Postal_Code") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label16" runat="server" 
                            Text='<%# Bind("Employee_Postal_Code") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Position" SortExpression="Employee_Position">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox16" runat="server" 
                            Text='<%# Bind("Employee_Position") %>' Enabled="False"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox16" runat="server" 
                            Text='<%# Bind("Employee_Position") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label17" runat="server" Text='<%# Bind("Employee_Position") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Admin Level" 
                    SortExpression="Employee_Admin_Level">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox17" runat="server" 
                            Text='<%# Bind("Employee_Admin_Level") %>' Enabled="False"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox17" runat="server" 
                            Text='<%# Bind("Employee_Admin_Level") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label18" runat="server" 
                            Text='<%# Bind("Employee_Admin_Level") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Active Status" 
                    SortExpression="Employee_Active_Status">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox18" runat="server" 
                            Text='<%# Bind("Employee_Active_Status") %>' Enabled="False"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox18" runat="server" 
                            Text='<%# Bind("Employee_Active_Status") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label19" runat="server" 
                            Text='<%# Bind("Employee_Active_Status") %>'></asp:Label>
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
    <asp:SqlDataSource ID="SQLEmployee" runat="server" 
        ConnectionString="<%$ ConnectionStrings:group16ConnectionString %>" 
        
        
        SelectCommand="SELECT * FROM [Employee] WHERE ([Employee_Email] = @Employee_Email)" 
        ConflictDetection="CompareAllValues" 
        DeleteCommand="DELETE FROM [Employee] WHERE [Employee_ID] = @original_Employee_ID AND [Employee_FName] = @original_Employee_FName AND [Employee_SName] = @original_Employee_SName AND [Employee_DOB] = @original_Employee_DOB AND [Employee_Gender] = @original_Employee_Gender AND [Employee_Phone_No] = @original_Employee_Phone_No AND (([Employee_Alt_Phone_No] = @original_Employee_Alt_Phone_No) OR ([Employee_Alt_Phone_No] IS NULL AND @original_Employee_Alt_Phone_No IS NULL)) AND [Employee_Email] = @original_Employee_Email AND [Employee_Password] = @original_Employee_Password AND [Employee_SA_ID_No] = @original_Employee_SA_ID_No AND [Employee_Street_Addr_1] = @original_Employee_Street_Addr_1 AND (([Employee_Street_Addr_2] = @original_Employee_Street_Addr_2) OR ([Employee_Street_Addr_2] IS NULL AND @original_Employee_Street_Addr_2 IS NULL)) AND [Employee_Suburb] = @original_Employee_Suburb AND [Employee_City] = @original_Employee_City AND [Employee_Province] = @original_Employee_Province AND [Employee_Postal_Code] = @original_Employee_Postal_Code AND [Employee_Position] = @original_Employee_Position AND [Employee_Admin_Level] = @original_Employee_Admin_Level AND [Employee_Active_Status] = @original_Employee_Active_Status" 
        InsertCommand="INSERT INTO [Employee] ([Employee_FName], [Employee_SName], [Employee_DOB], [Employee_Gender], [Employee_Phone_No], [Employee_Alt_Phone_No], [Employee_Email], [Employee_Password], [Employee_SA_ID_No], [Employee_Street_Addr_1], [Employee_Street_Addr_2], [Employee_Suburb], [Employee_City], [Employee_Province], [Employee_Postal_Code], [Employee_Position], [Employee_Admin_Level], [Employee_Active_Status]) VALUES (@Employee_FName, @Employee_SName, @Employee_DOB, @Employee_Gender, @Employee_Phone_No, @Employee_Alt_Phone_No, @Employee_Email, @Employee_Password, @Employee_SA_ID_No, @Employee_Street_Addr_1, @Employee_Street_Addr_2, @Employee_Suburb, @Employee_City, @Employee_Province, @Employee_Postal_Code, @Employee_Position, @Employee_Admin_Level, @Employee_Active_Status)" 
        OldValuesParameterFormatString="original_{0}" 
        UpdateCommand="UPDATE [Employee] SET [Employee_FName] = @Employee_FName, [Employee_SName] = @Employee_SName, [Employee_DOB] = @Employee_DOB, [Employee_Gender] = @Employee_Gender, [Employee_Phone_No] = @Employee_Phone_No, [Employee_Alt_Phone_No] = @Employee_Alt_Phone_No, [Employee_Email] = @Employee_Email, [Employee_Password] = @Employee_Password, [Employee_SA_ID_No] = @Employee_SA_ID_No, [Employee_Street_Addr_1] = @Employee_Street_Addr_1, [Employee_Street_Addr_2] = @Employee_Street_Addr_2, [Employee_Suburb] = @Employee_Suburb, [Employee_City] = @Employee_City, [Employee_Province] = @Employee_Province, [Employee_Postal_Code] = @Employee_Postal_Code, [Employee_Position] = @Employee_Position, [Employee_Admin_Level] = @Employee_Admin_Level, [Employee_Active_Status] = @Employee_Active_Status WHERE [Employee_ID] = @original_Employee_ID AND [Employee_FName] = @original_Employee_FName AND [Employee_SName] = @original_Employee_SName AND [Employee_DOB] = @original_Employee_DOB AND [Employee_Gender] = @original_Employee_Gender AND [Employee_Phone_No] = @original_Employee_Phone_No AND (([Employee_Alt_Phone_No] = @original_Employee_Alt_Phone_No) OR ([Employee_Alt_Phone_No] IS NULL AND @original_Employee_Alt_Phone_No IS NULL)) AND [Employee_Email] = @original_Employee_Email AND [Employee_Password] = @original_Employee_Password AND [Employee_SA_ID_No] = @original_Employee_SA_ID_No AND [Employee_Street_Addr_1] = @original_Employee_Street_Addr_1 AND (([Employee_Street_Addr_2] = @original_Employee_Street_Addr_2) OR ([Employee_Street_Addr_2] IS NULL AND @original_Employee_Street_Addr_2 IS NULL)) AND [Employee_Suburb] = @original_Employee_Suburb AND [Employee_City] = @original_Employee_City AND [Employee_Province] = @original_Employee_Province AND [Employee_Postal_Code] = @original_Employee_Postal_Code AND [Employee_Position] = @original_Employee_Position AND [Employee_Admin_Level] = @original_Employee_Admin_Level AND [Employee_Active_Status] = @original_Employee_Active_Status">
        <DeleteParameters>
            <asp:Parameter Name="original_Employee_ID" Type="Int32" />
            <asp:Parameter Name="original_Employee_FName" Type="String" />
            <asp:Parameter Name="original_Employee_SName" Type="String" />
            <asp:Parameter DbType="Date" Name="original_Employee_DOB" />
            <asp:Parameter Name="original_Employee_Gender" Type="String" />
            <asp:Parameter Name="original_Employee_Phone_No" Type="String" />
            <asp:Parameter Name="original_Employee_Alt_Phone_No" Type="String" />
            <asp:Parameter Name="original_Employee_Email" Type="String" />
            <asp:Parameter Name="original_Employee_Password" Type="String" />
            <asp:Parameter Name="original_Employee_SA_ID_No" Type="Decimal" />
            <asp:Parameter Name="original_Employee_Street_Addr_1" Type="String" />
            <asp:Parameter Name="original_Employee_Street_Addr_2" Type="String" />
            <asp:Parameter Name="original_Employee_Suburb" Type="String" />
            <asp:Parameter Name="original_Employee_City" Type="String" />
            <asp:Parameter Name="original_Employee_Province" Type="String" />
            <asp:Parameter Name="original_Employee_Postal_Code" Type="Decimal" />
            <asp:Parameter Name="original_Employee_Position" Type="String" />
            <asp:Parameter Name="original_Employee_Admin_Level" Type="Int32" />
            <asp:Parameter Name="original_Employee_Active_Status" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Employee_FName" Type="String" />
            <asp:Parameter Name="Employee_SName" Type="String" />
            <asp:Parameter DbType="Date" Name="Employee_DOB" />
            <asp:Parameter Name="Employee_Gender" Type="String" />
            <asp:Parameter Name="Employee_Phone_No" Type="String" />
            <asp:Parameter Name="Employee_Alt_Phone_No" Type="String" />
            <asp:Parameter Name="Employee_Email" Type="String" />
            <asp:Parameter Name="Employee_Password" Type="String" />
            <asp:Parameter Name="Employee_SA_ID_No" Type="Decimal" />
            <asp:Parameter Name="Employee_Street_Addr_1" Type="String" />
            <asp:Parameter Name="Employee_Street_Addr_2" Type="String" />
            <asp:Parameter Name="Employee_Suburb" Type="String" />
            <asp:Parameter Name="Employee_City" Type="String" />
            <asp:Parameter Name="Employee_Province" Type="String" />
            <asp:Parameter Name="Employee_Postal_Code" Type="Decimal" />
            <asp:Parameter Name="Employee_Position" Type="String" />
            <asp:Parameter Name="Employee_Admin_Level" Type="Int32" />
            <asp:Parameter Name="Employee_Active_Status" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="Employee_Email" SessionField="New" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Employee_FName" Type="String" />
            <asp:Parameter Name="Employee_SName" Type="String" />
            <asp:Parameter DbType="Date" Name="Employee_DOB" />
            <asp:Parameter Name="Employee_Gender" Type="String" />
            <asp:Parameter Name="Employee_Phone_No" Type="String" />
            <asp:Parameter Name="Employee_Alt_Phone_No" Type="String" />
            <asp:Parameter Name="Employee_Email" Type="String" />
            <asp:Parameter Name="Employee_Password" Type="String" />
            <asp:Parameter Name="Employee_SA_ID_No" Type="Decimal" />
            <asp:Parameter Name="Employee_Street_Addr_1" Type="String" />
            <asp:Parameter Name="Employee_Street_Addr_2" Type="String" />
            <asp:Parameter Name="Employee_Suburb" Type="String" />
            <asp:Parameter Name="Employee_City" Type="String" />
            <asp:Parameter Name="Employee_Province" Type="String" />
            <asp:Parameter Name="Employee_Postal_Code" Type="Decimal" />
            <asp:Parameter Name="Employee_Position" Type="String" />
            <asp:Parameter Name="Employee_Admin_Level" Type="Int32" />
            <asp:Parameter Name="Employee_Active_Status" Type="String" />
            <asp:Parameter Name="original_Employee_ID" Type="Int32" />
            <asp:Parameter Name="original_Employee_FName" Type="String" />
            <asp:Parameter Name="original_Employee_SName" Type="String" />
            <asp:Parameter DbType="Date" Name="original_Employee_DOB" />
            <asp:Parameter Name="original_Employee_Gender" Type="String" />
            <asp:Parameter Name="original_Employee_Phone_No" Type="String" />
            <asp:Parameter Name="original_Employee_Alt_Phone_No" Type="String" />
            <asp:Parameter Name="original_Employee_Email" Type="String" />
            <asp:Parameter Name="original_Employee_Password" Type="String" />
            <asp:Parameter Name="original_Employee_SA_ID_No" Type="Decimal" />
            <asp:Parameter Name="original_Employee_Street_Addr_1" Type="String" />
            <asp:Parameter Name="original_Employee_Street_Addr_2" Type="String" />
            <asp:Parameter Name="original_Employee_Suburb" Type="String" />
            <asp:Parameter Name="original_Employee_City" Type="String" />
            <asp:Parameter Name="original_Employee_Province" Type="String" />
            <asp:Parameter Name="original_Employee_Postal_Code" Type="Decimal" />
            <asp:Parameter Name="original_Employee_Position" Type="String" />
            <asp:Parameter Name="original_Employee_Admin_Level" Type="Int32" />
            <asp:Parameter Name="original_Employee_Active_Status" Type="String" />
        </UpdateParameters>
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

