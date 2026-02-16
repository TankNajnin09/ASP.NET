<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page1.aspx.cs" Inherits="Page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>QueryString Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>QueryString Example</h2>
        Enter your name: 
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:Button ID="btnSubmit" runat="server" Text="Go to Page2" OnClick="btnSubmit_Click" />
    </form>
</body>
</html>