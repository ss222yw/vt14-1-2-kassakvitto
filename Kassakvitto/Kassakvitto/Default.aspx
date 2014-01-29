<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kassakvitto.Default"  ViewStateMode="Disabled"%>
 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kassakvitto</title>
    <link href ="~/Content/Site.css" rel="stylesheet" />
</head>
<body>
    <h1>Kassakvitto</h1>
    <form id="form1" runat="server">
        <p>Total köpsumma :</p>
    <div>
        <asp:TextBox ID="TextBox" runat="server"></asp:TextBox>
    </div>
        <div>
            <asp:Label ID="Label" runat="server" Text="Kr"></asp:Label>
        </div>
        <div>
            <asp:Button ID="Button" runat="server" Text="Beräkna rabatt" OnClick="Button_Click" />
        </div>
        <div>

        </div>
    </form>
</body>
</html>
