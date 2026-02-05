<%@ Page Language="C#" AutoEventWireup="true" CodeFile="List_Form.aspx.cs" Inherits="List_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Course Selection</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="lbl_1" runat="server" Text="Available Course : "></asp:Label><br />
            <asp:ListBox ID="ListBoxAvailable" runat="server"
                SelectionMode="Multiple">
                <asp:ListItem>BCA</asp:ListItem>
                <asp:ListItem>BSC</asp:ListItem>
                <asp:ListItem>B.COM</asp:ListItem>
                <asp:ListItem>BA</asp:ListItem>
                <asp:ListItem>BBA</asp:ListItem>
                <asp:ListItem>MBA</asp:ListItem>
                <asp:ListItem>MCA</asp:ListItem>
                <asp:ListItem>MA</asp:ListItem>
                <asp:ListItem>MSC</asp:ListItem>
                <asp:ListItem>M.COM</asp:ListItem>
            </asp:ListBox>

            <asp:Button ID="btnAdd" runat="server" Text=">>"
               OnClick="btnAdd_Click" /><br /><br />


            <asp:Label ID="lbl_2" runat="server" Text="Selected Course : "></asp:Label><br />

            <asp:Button ID="btnRemove" runat="server" Text="<<"
               OnClick="btnRemove_Click" />

            <asp:ListBox ID="ListBoxSelected" runat="server"
                SelectionMode="Multiple">
            </asp:ListBox>

        </div>
    </form>
</body>
</html>
