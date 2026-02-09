<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page1.aspx.cs" Inherits="Page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page 1</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>Enter Details</h3>

        Name:
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br /><br />

        <!-- Hidden Field -->
        <asp:HiddenField ID="hfRole" runat="server" Value="Student" />

        <asp:Button ID="btnSend" runat="server"
            Text="Go to Page 2"
            OnClick="btnSend_Click" />
    </div>
    </form>
</body>
</html>
