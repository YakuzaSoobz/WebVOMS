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
            height: 103px;
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
                    <p style="padding: 0px; margin: 0px">
                        &nbsp;</p>
                    <div style="padding: 0px; margin: 0px; text-align: center;">
                        <asp:GridView ID="AdvertisedProductsGridView" runat="server" AllowSorting="True" 
                            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Product_ID" 
                            DataSourceID="SQLAllProduct" ForeColor="#333333" GridLines="None" 
                            Width="1119px" HorizontalAlign="Center">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="Product_ID" HeaderText="ID" InsertVisible="False" 
                                    ReadOnly="True" SortExpression="Product_ID" />
                                <asp:BoundField DataField="Product_Name" HeaderText="Name" 
                                    SortExpression="Product_Name" />
                                <asp:BoundField DataField="Product_Brand" HeaderText="Brand" 
                                    SortExpression="Product_Brand" />
                                <asp:BoundField DataField="Product_Description" HeaderText="Description" 
                                    SortExpression="Product_Description" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SQLAllProduct" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:group16ConnectionString %>" 
                            
                            SelectCommand="SELECT * FROM [Product] WHERE ([Product_Active_Status] = @Product_Active_Status)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="T" Name="Product_Active_Status" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                    <p style="padding: 0px; margin: 0px">
                        &nbsp;</p>
                </td>
            </tr>
        </table>
    </div>

    
    </asp:Content>
