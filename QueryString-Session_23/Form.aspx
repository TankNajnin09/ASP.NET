<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Form.aspx.cs" Inherits="Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Session + QueryString Example</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <!-- Input Section -->
            <asp:Panel ID="pnlInput" runat="server">
                Name:
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <br /><br />

                Age:
                <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                <br /><br />

                <asp:Button ID="btnSubmit" runat="server" 
                    Text="Submit" 
                    OnClick="btnSubmit_Click" />
            </asp:Panel>

            <br />

            <!-- Result Section -->
            <asp:Label ID="lblResult" runat="server" 
                Font-Bold="true" 
                ForeColor="Blue">
            </asp:Label>

        </div>
    </form>
</body>
</html>