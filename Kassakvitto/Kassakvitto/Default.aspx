<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kassakvitto.Default"  ViewStateMode="Disabled"%>
 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kassakvitto</title>
    <link href ="~/Content/style.css" rel="stylesheet"/>
</head>
<body>
    <asp:Label ID="KassaKvitto" runat="server" Text="Kassakvitto"></asp:Label>
    <div class="clear"></div>
    <form id="form1" runat="server" defaultbutton="Button">
        <asp:Label ID="TotalKop" runat="server" Text="Total Köpsumma :"></asp:Label>
    <div>
        <asp:TextBox ID="TextBox" TextMode="SingleLine" runat="server" Font-Bold="False"></asp:TextBox>
        <asp:Label ID="Label" runat="server" Text="Kr" EnableTheming="False" Font-Bold="False" ForeColor="Black"></asp:Label>
        <asp:CompareValidator ID="CompareValidator" runat="server" ErrorMessage="Ange köpsumma större än 0" ControlToValidate="TextBox" Operator="GreaterThan" Type="Double" ValueToCompare="0" Display="Dynamic"></asp:CompareValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ErrorMessage="Fältet får inte vara tomt" ControlToValidate="TextBox" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>
     
        <div class="clear"></div>
        <div>
            
            <asp:Button ID="Button" runat="server" Text="Beräkna rabatt" OnClick="Button_Click" />
        </div>
            <div class="clear"></div>
            <div class="clear"></div>            
            <asp:Panel ID="Panel" runat="server" Visible="false">
            <div class="clear"></div>
                <span id="DeVe">DeVe</span>
            <div class="clear"></div>
                <span id="en del av EllenU"></span>
            <div class="clear"></div>
            <div class="clear"></div>
            <div class="clear"></div>
                <span id="Tel">Tel: 0772-28 80 00</span>
            <div class="clear"></div>
                <span id="Tider">Öppettider 8-17</span>
            <div class="clear"></div>
                <span id="Ev">EV.FEL GER UNDERKÄNT</span>
            <div class="clear"></div>
                <span id="Stryk">-------------------------------</span>
            <div class="clear"></div>
            <asp:Label ID="SumTotal" runat="server" Text=""></asp:Label>
            <div class="clear"></div>
            <asp:Label ID="DiscountRate" runat="server" Text=""></asp:Label>
            <div class="clear"></div>
            <asp:Label ID="Discount" runat="server" Text=""></asp:Label>
            <div class="clear"></div>
            <asp:Label ID="ToPay" runat="server" Text=""></asp:Label>
            <div class="clear"></div>
                <span id="Stryk1">-------------------------------</span>
            <div class="clear"></div>
                <span id="Org">ORG.NR: 202100-6271</span>
            <div class="clear"></div>
                <span id="Welcome">VÄLKOMMEN ÅTER!</span>
            <div class="clear"></div>
            </asp:Panel>
    </form>
    <script type="text/javascript">
        var textBox = document.getElementById("TextBox");
        textBox.focus();
        textBox.select();
    </script>
</body>
</html>
