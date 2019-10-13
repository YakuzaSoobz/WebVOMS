<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="LoginNew.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style18
        {
            width: 55%;
        }
        .style19
        {
            width: 38px;
        }
        .style20
        {
        }
        .style21
        {
            width: 178px;
        }
        .style22
        {
            width: 261px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2 style="font-size: x-large; text-decoration: underline;">
        Contact us For a Quotation:
    </h2>
    <br />
    <br />
    <div>
        <h2 style="font-size: medium; ">
            If you are an existing Customer but haven't registeed on our website, please use your date of birth as your default password " dd/mm/yy/ "! You can change your password once logged in via the 'My Account' page. 
        </h2>
    </div>
    
    <div >
         <table class="style18" 
             style="border-style: solid; border-color: #000000; margin: 0 auto;">
        <tr>
            <td class="style20">
                <asp:Label ID="Label1" runat="server" Text="Enter Email : "></asp:Label>
                </td>
            <td class="style22">
                <asp:TextBox ID="TextBoxUserName" runat="server" TextMode="Email" Width="300px"></asp:TextBox>
            </td>
            <td class="style19">
                &nbsp;</td>
            <td class="style21">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxUserName" ErrorMessage="* Please enter an Email" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style20">
                <asp:Label ID="Label2" runat="server" Text=" Enter Password : "></asp:Label>

            </td>
            <td class="style22">
                
                <asp:TextBox ID="TextBoxPassword" TextMode="Password" runat="server" 
                    Width="300px"></asp:TextBox>
            </td>
            <td class="style19">
                
                <asp:ImageButton ID="ImageButton4" runat="server" Height="16px" 
                    ImageUrl="~/Pictures/eye.png" onclick="ImageButton4_Click" />
            </td>
            <td class="style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxPassword" ErrorMessage="* Please enter Password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style20" colspan="4">
                <asp:Button ID="btnLogin" runat="server" Text="Login" onclick="btnLogin_Click" 
                    BackColor="#5F87A5" BorderColor="Black" ForeColor="White" Height="30px" 
                    Width="100px" />
                <asp:Label ID="LabelError" runat="server" Text=""></asp:Label>

            </td>
        </tr>
    </table>
    </div>
   
    <br />

</asp:Content>

