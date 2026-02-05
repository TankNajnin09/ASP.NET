<%@ Page Language="C#" AutoEventWireup="true" CodeFile="City_Form.aspx.cs" Inherits="City_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add City</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin:40px">

            Enter City Name:
            <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            <br /><br />

            <asp:Button ID="btnAdd" runat="server" Text="Add"
                OnClick="btnAdd_Click" />
            <br /><br />

            <asp:DropDownList ID="ddlCities" runat="server" Width="200px">
                <asp:ListItem>Select City</asp:ListItem>
            </asp:DropDownList>

        </div>
    </form>
</body>
</html>
