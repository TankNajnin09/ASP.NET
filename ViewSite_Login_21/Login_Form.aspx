<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login_Form.aspx.cs" Inherits="Login_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login and ViewState Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Login Section</h2>
        Username:
        <asp:TextBox ID="txtUser" runat="server"></asp:TextBox><br /><br />

        Password:
        <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox><br /><br />

        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /><br /><br />
        <asp:Label ID="lblLoginMsg" runat="server" ForeColor="Red"></asp:Label>
        <hr />

        <h2>ViewState Demo Section</h2>
        Enter something:
        <asp:TextBox ID="txtData" runat="server"></asp:TextBox><br /><br />

        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /><br /><br />

        <asp:Label ID="lblResult" runat="server" ForeColor="Blue"></asp:Label>
    </form>
</body>
</html>
