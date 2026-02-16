<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserPreferences.aspx.cs" Inherits="UserPreferences" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Preferences with ViewState</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Set Your Preferences</h2>
            
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label><br /><br />

            <asp:Label ID="lblColor" runat="server" Text="Choose Color: "></asp:Label>
            <asp:DropDownList ID="ddlColor" runat="server">
                <asp:ListItem Text="Red" Value="Red"></asp:ListItem>
                <asp:ListItem Text="Green" Value="Green"></asp:ListItem>
                <asp:ListItem Text="Blue" Value="Blue"></asp:ListItem>
            </asp:DropDownList>
            <br /><br />

            <asp:Label ID="lblFont" runat="server" Text="Choose Font: "></asp:Label>
            <asp:DropDownList ID="ddlFont" runat="server">
                <asp:ListItem Text="Arial" Value="Arial"></asp:ListItem>
                <asp:ListItem Text="Times New Roman" Value="Times New Roman"></asp:ListItem>
                <asp:ListItem Text="Courier New" Value="Courier New"></asp:ListItem>
            </asp:DropDownList>
            <br /><br />

            <asp:Button ID="btnSave" runat="server" Text="Save Preferences" OnClick="btnSave_Click" />
            <asp:Button ID="btnApply" runat="server" Text="Apply Preferences" OnClick="btnApply_Click" />
            <br /><br />

            <asp:Label ID="lblPreview" runat="server" Text="Preview Text"></asp:Label>
        </div>
    </form>
</body>
</html>