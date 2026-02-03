<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Form.aspx.cs" Inherits="Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="ddlCountry" runat="server"
            AutoPostBack="true"
            OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged">
        </asp:DropDownList>

        <br /><br />

        <asp:DropDownList ID="ddlState" runat="server">
        </asp:DropDownList>
    </div>
    </form>
</body>
</html>
