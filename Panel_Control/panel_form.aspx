<%@ Page Language="C#" AutoEventWireup="true" CodeFile="panel_form.aspx.cs" Inherits="panel_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:CheckBox 
            ID="chkShowPanel" 
            runat="server" 
            Text="Show Details"
            onclick="togglePanel(this);" />

        <asp:Panel ID="pnlDetails" runat="server">
            Panel content goes here
        </asp:Panel>

    </div>
    </form>
</body>
    <script>
        function togglePanel(cb) {
            document.getElementById('<%= pnlDetails.ClientID %>').style.display =
            cb.checked ? 'block' : 'none';
    }
</script>
</html>
