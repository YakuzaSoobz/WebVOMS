<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginNew.aspx.cs" Inherits="LoginNew" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: x-large;
            text-align: center;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 187px;
        }
        .style4
        {
            width: 187px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <strong>Login Page</strong></div>
    <table class="style2">
        <tr>
            <td class="style4">
                UserName</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBoxUserName" runat="server" Width="180px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxUserName" ErrorMessage="Please enter UserName" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Password</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" 
                    Width="180px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxPassword" ErrorMessage="Please enter Password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button_Login" runat="server" onclick="Button1_Click" 
                    Text="Login" />
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
