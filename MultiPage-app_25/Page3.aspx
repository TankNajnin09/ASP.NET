<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page3.aspx.cs" Inherits="Page3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Application State Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Application State Example</h2>
        <asp:Label ID="lblMessage" runat="server"></asp:Label><br /><br />
        <asp:Button ID="btnVisit" runat="server" Text="Visit Again" OnClick="btnVisit_Click" />
    </form>
</body>
</html>