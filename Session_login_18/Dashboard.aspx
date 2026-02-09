<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Welcome</h2>
        <asp:Label ID="lblUser" runat="server"></asp:Label><br /><br />
        <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
    </div>
    </form>
</body>
</html>
