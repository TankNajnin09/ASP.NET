<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Form.aspx.cs" Inherits="Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Password Form</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:Label ID="lblpass" runat="server" Text="Password : "></asp:Label>
        <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
        <br /><br />

        <asp:CheckBox ID="chkshow" runat="server" Text="Show Password" AutoPostBack="true" OnCheckedChanged="change_pass_show"/>
    </div>
    </form>
</body>
</html>
