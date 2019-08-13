<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style18
        {
            width: 100%;
            height: 473px;
        }
        .style22
        {
            width: 947px;
        }
        .style23
        {
            height: 102px;
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    
    <div>
        <table class="style18">
            <tr>
                <td class="style22" style="vertical-align: middle; text-align: center;">
                    <asp:Image ID="Image8" runat="server" Height="308px" 
                        ImageUrl="~/Images/Screenshot (67).png" Width="988px" />
                </td>
            </tr>
            <tr>
                <td class="style23" style="vertical-align: top; text-align: center;">
                    <h2>
                        Exclusive discounts coming too selected products on cyber monday!</h2>
                    <p style="padding: 0px; margin: 0px">
                        On products only from Makro!</p>
                </td>
            </tr>
        </table>
    </div>

    
    </asp:Content>
