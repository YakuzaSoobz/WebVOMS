<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="LoginNew.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style18
        {
            width: 50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<br />

    <div >
         <table class="style18" style="margin:0 auto">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Username : "></asp:Label>
                </td>
            <td>
                <asp:TextBox ID="TextBoxUserName" runat="server"></asp:TextBox>
            </td>
            <td>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxUserName" ErrorMessage="Please enter UserName" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Password : "></asp:Label>

            </td>
            <td>
                
                <asp:TextBox ID="TextBoxPassword" TextMode="Password" runat="server"></asp:TextBox>
                <asp:ImageButton ID="ImageButton4" runat="server" Height="16px" 
                    ImageUrl="~/Pictures/eye.png" onclick="ImageButton4_Click" />
            </td>
            <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxPassword" ErrorMessage="Please enter Password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnLogin" runat="server" Text="Login" onclick="btnLogin_Click" 
                    BackColor="#5F87A5" BorderColor="Black" ForeColor="White" Height="30px" 
                    Width="100px" />
            </td>
            <td>
                <asp:Label ID="LabelError" runat="server" Text=""></asp:Label>

            </td>
        </tr>
    </table>
    </div>
   
    <br />

</asp:Content>

