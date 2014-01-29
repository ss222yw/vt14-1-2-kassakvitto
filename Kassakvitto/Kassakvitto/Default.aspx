<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kassakvitto.Default"  ViewStateMode="Disabled"%>
 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kassakvitto</title>
    <link href ="~/Content/Site.css" rel="stylesheet" />
</head>
<body>
    <h1>Kassakvitto</h1>
    <div class="clear"></div>
    <form id="form1" runat="server">
        <p>Total köpsumma :</p>
    <div>
        <asp:TextBox ID="TextBox" TextMode="SingleLine" runat="server" Font-Bold="False"></asp:TextBox>
    </div>
        <div class="kr">
            <asp:Label ID="Label" runat="server" Text="Kr" EnableTheming="False" Font-Bold="False" ForeColor="Black"></asp:Label>
        </div>
        <div>
            <asp:Button ID="Button" runat="server" Text="Beräkna rabatt" OnClick="Button_Click" BorderStyle="Solid" Font-Bold="True" Font-Italic="False" Font-Size="Small" />
        </div>
        <div>

        </div>
    </form>
</body>
</html>
