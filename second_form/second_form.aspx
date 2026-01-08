<%@ Page Language="C#" AutoEventWireup="true" CodeFile="second_form.aspx.cs" Inherits="second_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple Form</title>
    <link rel="stylesheet" href="style.css">

    
</head>
<body>
    <div class="form-container">
    <h2>Contact Us</h2>
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
  </div>
</body>
    <script type="text/javascript">
        function btnDoubleClick() {
            // Call server event using hidden postback
            document.getElementById('<%= hiddenBtn.ClientID %>').click();
        }
    </script>
</html>
