<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Form.aspx.cs" Inherits="Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Details Form</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Basic Details</h2>

        Name:
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br /><br />

        Email:
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br /><br />

        Contact:
        <asp:TextBox ID="txtContact" runat="server"></asp:TextBox><br /><br />

        <h2>Educational Details</h2>

        HSC Board Name:
        <asp:TextBox ID="txtBoard" runat="server"></asp:TextBox><br /><br />

        HSC Passing Month-Year:
        <asp:TextBox ID="txtPassing" runat="server"></asp:TextBox><br /><br />

        HSC Percentage:
        <asp:TextBox ID="txtPercentage" runat="server"></asp:TextBox><br /><br />

        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    </form>
</body>
</html>