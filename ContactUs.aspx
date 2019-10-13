<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        #TextArea1
        {
            width: 292px;
            margin-left: 1px;
            height: 67px;
        }
        #Text1
        {
            width: 202px;
        }
        #CustomerMessageTextArea
        {
            width: 294px;
            height: 72px;
        }
        #CustomerEmailAddress
        {
            width: 294px;
        }
    </style>
    <script language="javascript" type="text/javascript">

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server" >

    

    <div style="text-align: center;width: 400px; margin: 0 auto;">
        <h2 style="font-size: x-large; text-decoration: underline;">
            Contact us For a Quotation:
        </h2>
        <ul compact="compact" 
            style="font-size: medium;text-align: left; width: auto; height: auto;">
            
            <li>Tel: (035) 751 2262</li>
            <li>Cell:073 627 0566</li>
            <li>Fax:(035) 751 2263</li>
            <li>E-mail:	Mhlatuzeindustrial@gmail.com</li>    
            <li>Ashika (Contact person):072 037 2416</li>
        </ul>
        <br />
    </div>

    <div class = "Quote" 
        
        style="padding: 0px; text-align: left; width: 302px; margin: 0 auto; height: 360px; background-color: #598DB6; color: #FFFFFF;">
        <h3 style="font-size: medium; font-weight: bold; color: #FFFFFF; text-decoration: underline;">
            Email Us:
        </h3>

        <form  class = "RequestQuote">
            <div style="height: 334px; width: 297px">
                <br />
                <asp:Label ID="Label1" runat="server" Text="Subject"></asp:Label>
                :<br />
                <asp:DropDownList ID="DropDownListSubject" Width="100%" runat="server">
                    <asp:ListItem>Request Quote</asp:ListItem>
                    <asp:ListItem>Query</asp:ListItem>
                    <asp:ListItem>Feedback</asp:ListItem>
                </asp:DropDownList>
                <br />
                Message<label>:<br />
                </label>
                <asp:TextBox ID="BodyTextBox" runat="server" Height="87px" Width="100%" 
                    TextMode="MultiLine"></asp:TextBox>
                <br />
                Enter your Email:<br />
                <asp:TextBox ID="GmailIDText" runat="server" Width="100%"></asp:TextBox>
                <br />
                <asp:Label ID="Label3" runat="server"  Text="Enter your Email Password"></asp:Label>
                :<br />
                <asp:TextBox ID="GmailPassText"  runat="server" Width="100%" 
                    TextMode="Password"></asp:TextBox>
                <br />
               
                   
                <div style="text-align: center" >
                    <asp:Button ID="SendEmailButton" runat="server" onclick="SendEmailButton_Click" 
                    Text="Send" Width="108px" BackColor="White" BorderColor="Black" 
                    BorderStyle="Solid" Height="40px" />
                    <br />
                    <asp:Label ID="lbl_status" runat="server" Font-Size="Small" ForeColor="Red"></asp:Label>
                </div>
                
                <br />

                </div>
               
        </form>

    </div>

    <br />

</asp:Content>

