<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Textbox, Label and Button</title>

    <script type="text/javascript">
        function btnDoubleClick() {
            // Call server event using hidden postback
            document.getElementById('<%= hiddenBtn.ClientID %>').click();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">

        <asp:Label ID="Label1" runat="server" Text="Enter Text:"></asp:Label><br />

        <asp:TextBox ID="txtInput" runat="server"></asp:TextBox><br /><br />

        <!-- Main Button -->
        <asp:Button ID="btnShow" runat="server" Text="Click Me"
            OnClick="btnShow_Click"
            OnClientClick="return true;"
            ondblclick="btnDoubleClick(); return false;" />

        <br /><br />

        <!-- Hidden Button for Double Click Postback -->
        <asp:Button ID="hiddenBtn" runat="server" OnClick="btnDoubleClick_Server"
            Style="display:none;" />

        <br />

        <asp:Label ID="lblResult" runat="server" ForeColor="Blue"></asp:Label>

    </form>
</body>
</html>
