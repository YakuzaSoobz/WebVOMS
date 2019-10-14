﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %> 
 
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server"> 
    <style type="text/css"> 
        .style18 
        { 
            width: 700px; 
        } 
        .style19 
        {
        } 
        .style20
        {
            width: 125px;
            float: left;
        }
        .style21
        {
            width: 159px;
            float: left;
            height: 26px;
        }
        .style22
        {
            height: 26px;
            width: 188px;
        }
        .style25
        {
            width: 157px;
        }
        .style26
        {
            height: 26px;
            width: 157px;
        }
        .style27
        {
            width: 151px;
        }
        .style28
        {
            height: 26px;
            width: 151px;
        }
        .style29
        {
            width: 188px;
        }
    </style> 
</asp:Content> 
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server"> 
<br /> 
    <h2 style="font-size: x-large; text-decoration: underline;">
        Customer registration:
    </h2>
<br /> 

    <div style="border-color: #000000; border-style: solid; width: 100%; text-align: center">
        
        <h2 style="font-size: medium; ">
            Please fill in all the required fields in order to register with us!
        </h2>

        <table class="style18" align="center" > 
        <tr> 
            <td class="style20"> 
                &nbsp;<asp:Label ID="Label2" runat="server" Text="* First Name"></asp:Label> 
                :</td> 
            <td class="style29"> 
                <asp:TextBox ID="txtFName" runat="server"></asp:TextBox> 
            </td> 
            <td class="style27"> 
                <asp:Label ID="Label10" runat="server" Text="* Street Address 1"></asp:Label> 
                :</td> 
            <td class="style25"> 
                <asp:TextBox ID="txtStrAddress" runat="server"></asp:TextBox> 
            </td> 
        </tr> 
        <tr> 
            <td class="style20"> 
                <asp:Label ID="Label3" runat="server" Text="* Surname"></asp:Label> 
                :</td> 
            <td class="style29"> 
                <asp:TextBox ID="txtSurname" runat="server"></asp:TextBox> 
            </td> 
            <td class="style27"> 
                <asp:Label ID="Label11" runat="server" Text="Street Address 2"></asp:Label> 
                :</td> 
            <td class="style25"> 
                <asp:TextBox ID="txtStrAddress2" runat="server"></asp:TextBox> 
            </td> 
        </tr> 
        <tr> 
            <td class="style20"> 
                <asp:Label ID="Label4" runat="server" Text="* Date of Birth"></asp:Label> 
                :</td> 
            <td class="style29">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager> 
                <asp:TextBox ID="txtDOB" runat="server" ></asp:TextBox> 
                <ajaxToolkit:CalendarExtender ID="txtDOB_CalendarExtender" runat="server" 
                    TargetControlID="txtDOB" />
            </td> 
            <td class="style27"> 
                <asp:Label ID="Label12" runat="server" Text="* Suburb"></asp:Label> 
                :</td> 
            <td class="style25"> 
                <asp:TextBox ID="txtSuburb" runat="server"></asp:TextBox> 
            </td> 
        </tr> 
        <tr> 
            <td class="style20"> 
                <asp:Label ID="Label5" runat="server" Text="* Contact Number ['(081)0891234']"></asp:Label> 
                </td> 
            <td class="style29"> 
                <asp:TextBox ID="txtPhoneNo" runat="server" MaxLength="12"></asp:TextBox> 
                <ajaxToolkit:MaskedEditExtender ID="txtPhoneNo_MaskedEditExtender" 
                    runat="server" BehaviorID="txtPhoneNo_MaskedEditExtender" Century="2000" 
                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                    CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Mask="(999)9999999" 
                    TargetControlID="txtPhoneNo" />
            </td> 
            <td class="style27"> 
                <asp:Label ID="Label13" runat="server" Text="* City"></asp:Label> 
                :</td> 
            <td class="style25"> 
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox> 
            </td> 
        </tr> 
        <tr> 
            <td class="style21"> 
                <asp:Label ID="Label6" runat="server" Text="Alt Contact Number ['(081)0891234']"></asp:Label> 
                </td> 
            <td class="style22"> 
                <asp:TextBox ID="txtAltPhoneNo" runat="server"></asp:TextBox> 
                <ajaxToolkit:MaskedEditExtender ID="txtAltPhoneNo_MaskedEditExtender" 
                    runat="server" BehaviorID="txtAltPhoneNo_MaskedEditExtender" Century="2000" 
                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                    CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Mask="(999)9999999" 
                    TargetControlID="txtAltPhoneNo" />
            </td> 
            <td class="style28"> 
                <asp:Label ID="Label14" runat="server" Text="* Province"></asp:Label> 
                :</td> 
            <td class="style26"> 
                <asp:TextBox ID="txtProvince" runat="server"></asp:TextBox> 
            </td> 
        </tr> 
        <tr> 
            <td class="style20"> 
                <asp:Label ID="Label7" runat="server" Text="* Email"></asp:Label> 
                :</td> 
            <td class="style29"> 
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox> 
            </td> 
            <td class="style27"> 
                <asp:Label ID="Label15" runat="server" Text="* Postal Code ['9999']:"></asp:Label> 
                </td> 
            <td class="style25"> 
                <asp:TextBox ID="txtPostCode" runat="server" MaxLength="4"></asp:TextBox> 
                <ajaxToolkit:MaskedEditExtender ID="txtPostCode_MaskedEditExtender" 
                    runat="server" BehaviorID="txtPostCode_MaskedEditExtender" Century="2000" 
                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                    CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Mask="9999" 
                    TargetControlID="txtPostCode" />
            </td> 
        </tr> 
        <tr> 
            <td class="style20"> 
                <asp:Label ID="Label8" runat="server" Text=" * Password (Max 10 characters)"></asp:Label> 
                :</td> 
            <td class="style29"> 
                <asp:TextBox ID="txtPassword" runat="server" MaxLength="10"></asp:TextBox> 
            </td> 
            <td class="style27"> 
                <asp:Label ID="Label16" runat="server" Text="* Active Status"></asp:Label> 
                :</td> 
            <td class="style25"> 
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"> 
                    <asp:ListItem>T</asp:ListItem> 
                    <asp:ListItem>F</asp:ListItem> 
                </asp:DropDownList> 
            </td> 
        </tr> 
        <tr> 
            <td class="style19" colspan="4"> 
                <asp:Button ID="btnRegister" runat="server" onclick="btnRegister_Click"  
                    Text="Click to Register" BackColor="#598DB6" BorderColor="Black" 
                    BorderStyle="Solid" ForeColor="White" Height="40px" /> 
            </td> 
        </tr> 
    </table> 
    </div>
    
<br /> 
    <asp:SqlDataSource ID="SQLDSAddCust" runat="server"  
        ConflictDetection="CompareAllValues"  
        ConnectionString="<%$ ConnectionStrings:group16ConnectionString %>"  
        DeleteCommand="DELETE FROM [Customer] WHERE [Customer_ID] = @original_Customer_ID AND [Cust_FName] = @original_Cust_FName AND [Cust_SName] = @original_Cust_SName AND [Cust_DOB] = @original_Cust_DOB AND [Cust_Phone_No] = @original_Cust_Phone_No AND (([Cust_Alt_Phone_No] = @original_Cust_Alt_Phone_No) OR ([Cust_Alt_Phone_No] IS NULL AND @original_Cust_Alt_Phone_No IS NULL)) AND [Cust_Email] = @original_Cust_Email AND (([Cust_Password] = @original_Cust_Password) OR ([Cust_Password] IS NULL AND @original_Cust_Password IS NULL)) AND [Cust_Street_Addr_1] = @original_Cust_Street_Addr_1 AND (([Cust_Street_Addr_2] = @original_Cust_Street_Addr_2) OR ([Cust_Street_Addr_2] IS NULL AND @original_Cust_Street_Addr_2 IS NULL)) AND [Cust_Suburb] = @original_Cust_Suburb AND [Cust_City] = @original_Cust_City AND [Cust_Province] = @original_Cust_Province AND [Cust_Postal_Code] = @original_Cust_Postal_Code AND [Cust_Active_Status] = @original_Cust_Active_Status"  
        InsertCommand="INSERT INTO [Customer] ([Cust_FName], [Cust_SName], [Cust_DOB], [Cust_Phone_No], [Cust_Alt_Phone_No], [Cust_Email], [Cust_Password], [Cust_Street_Addr_1], [Cust_Street_Addr_2], [Cust_Suburb], [Cust_City], [Cust_Province], [Cust_Postal_Code], [Cust_Active_Status]) VALUES (@Cust_FName, @Cust_SName, @Cust_DOB, @Cust_Phone_No, @Cust_Alt_Phone_No, @Cust_Email, @Cust_Password, @Cust_Street_Addr_1, @Cust_Street_Addr_2, @Cust_Suburb, @Cust_City, @Cust_Province, @Cust_Postal_Code, @Cust_Active_Status)"  
        OldValuesParameterFormatString="original_{0}"  
        SelectCommand="SELECT * FROM [Customer]"  
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
<br /> 
<br /> 
 
</asp:Content> 
 
