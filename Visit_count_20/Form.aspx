<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Form.aspx.cs" Inherits="Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ViewState Example</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enter Name:
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br /><br />

            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
            <asp:Button ID="btnLoad" runat="server" Text="Load" OnClick="btnLoad_Click" />
            <br /><br />

            <asp:Label ID="lblResult" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
