<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Form.aspx.cs" Inherits="Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Color Preference with Cookie</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddlColors" runat="server">
                <asp:ListItem Text="Red" Value="Red"></asp:ListItem>
                <asp:ListItem Text="Green" Value="Green"></asp:ListItem>
                <asp:ListItem Text="Blue" Value="Blue"></asp:ListItem>
                <asp:ListItem Text="Yellow" Value="Yellow"></asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btnSetColor" runat="server" Text="Set Color" OnClick="btnSetColor_Click" />
            <br /><br />
            <asp:Label ID="lblPreference" runat="server" Text="Your color preference will appear here." />
        </div>
    </form>
</body>
</html>
