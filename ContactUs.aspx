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
            height: 46px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    

    <div style="text-align: center;width: 400px; margin: 0 auto;">
        <h2 style="font-size: x-large; font-weight: bold; text-decoration: underline;">
            Contact us For a Quotation:
        </h2>
        <ul compact="compact" 
            style="font-size: medium;text-align: left; width: auto; height: auto;">
            
            <li>Tel: (035) 751 2262</li>
            <li>Cell:073 627 0566</li>
            <li>Fax:(035) 751 2263</li>
            <li>E-mail:	miss2@vodamail.co.za</li>    
            <li>Ashika (Contact person):072 037 2416</li>
        </ul>
        <br />
    </div>

    <div class = "Quote" style="padding: 5px; text-align: left; width: 300px; margin: 0 auto; height: 226px; background-color: #598DB6; color: #FFFFFF;">
        <h3 style="font-size: medium; font-weight: bold; color: #FFFFFF; text-decoration: underline;">
            Email Us:
        </h3>

        <form  class = "RequestQuote">
            <div>
                <br />
                <label style="background-color: #598DB6">Email:</label><br />
                
                <input id="CustomerEmailAddress" type="text" /><br />
                <br />
                Message<label>:</label><br />
                <textarea id="CustomerMessageTextArea" rows = "10" cols = "10"></textarea>
                <br /><br />

                <div style="text-align: center">
                     &nbsp;<input id="EmailButton" type="button" value="Send" 
                    style="background-color: #FFFFFF; border-style: none; border-width: 0px; padding: 2px; width: 119px; height: 28px; right: 25px"/></div>
                </div>
               
        </form>

    </div>

    <br />

</asp:Content>

