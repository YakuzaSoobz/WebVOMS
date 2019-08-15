<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2 style="font-size: x-large; font-weight: bold; text-decoration: underline;">
        M.I.S.S Background:
    </h2>
    <p style="font-size: medium">
        Mhlathuze Industrial Suppliers and Services cc (M.I.S.S) is a growing vendor company in the Central Business District of Richards Bay.
        MISS supply corporate companies, such as Mondi and Foskor, with goods and services that are needed, from valves and actuators used to maintain factory plants, to water coolers etc.
        <br/>
        We specialize in valves, actuators, tools, sensors, and switches. We also advise buyers on the products that would best suit the application.
        <br />
        Our company was founded in 2004 and run by just two partners and has seen itself grow over the years. We now have a sales representative as well.
    </p>
    


    <h2 style="font-size: x-large; font-weight: bold; text-decoration: underline;">
        M.I.S.S Headquarters:
    </h2>
     
    <div style="text-align: center;width: 500px; margin: 0 auto;">
        <br />
        <asp:Image ID="Image1" runat="server"
           AlternateText="Image text"
           ImageUrl="~/Pictures/ohya.jpg" Width="503px"/>
       
        <br />
        Image of M.I.S.S&#39;s headquarters</div>

    <div style="text-align: center;width: 500px; margin: 0 auto;">
   
         <ul style="font-size: medium;text-align: left; width: auto; height: auto;" compact="compact">
            <li>Physical Address: Unit 13, Fourways, 86 Ceramic Curve, Alton</li>
        </ul>
    </div>

    <div class="mapouter">
        <div class="gmap_canvas">
            <iframe width="960" height="400" id="gmap_canvas" src="https://maps.google.com/maps?q=86%20Ceramic%20Curve%2C%20Alton&t=&z=17&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0">
            </iframe>
        </div>
        
    </div>

</asp:Content>
