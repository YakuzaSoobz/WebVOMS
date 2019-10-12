<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="LoginNew.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<br />
<br />
<br />
<br />
<br />
<br />

<asp:Label ID="Label1" runat="server" Text="Username : "></asp:Label>
<asp:TextBox ID="TextBoxUserName" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxUserName" ErrorMessage="Please enter UserName" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
<br />
<asp:Label ID="Label2" runat="server" Text="Password : "></asp:Label>

<asp:TextBox ID="TextBoxPassword" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxPassword" ErrorMessage="Please enter Password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
<asp:Button ID="btnLogin" runat="server" Text="Login" onclick="btnLogin_Click" />
<br />
<br />
<br />
<br />
<asp:Label ID="LabelError" runat="server" Text=""></asp:Label>

</asp:Content>

