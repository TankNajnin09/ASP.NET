<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page2.aspx.cs" Inherits="Page2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Session Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Session Example</h2>
        Welcome, <asp:Label ID="lblName" runat="server"></asp:Label><br /><br />
        Enter your age:
        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        <asp:Button ID="btnSubmit" runat="server" Text="Go to Page3" OnClick="btnSubmit_Click" />
    </form>
</body>
</html>