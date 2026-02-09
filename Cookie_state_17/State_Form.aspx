<%@ Page Language="C#" AutoEventWireup="true" CodeFile="State_Form.aspx.cs" Inherits="State_Form" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>ViewState and Cookies Example</title>
</head>
<body>
    <form id="form1" runat="server">

        <!-- ViewState Section -->
        <h3>ViewState Example</h3>
        <asp:TextBox ID="TextBox1" runat="server" Placeholder="Enter message"></asp:TextBox><br /><br />
        <asp:Button ID="Button1" runat="server" Text="Store in ViewState" OnClick="Button1_Click" /><br /><br />
        <asp:Label ID="Label1" runat="server"></asp:Label>

        <hr />

        <!-- Cookies Section -->
        <h3>Cookies Example</h3>
        <asp:Button ID="Button2" runat="server" Text="Create Greeting Cookie" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="Read Greeting Cookie" OnClick="Button3_Click" /><br /><br />
        <asp:Label ID="Label2" runat="server"></asp:Label>

    </form>
</body>
</html>