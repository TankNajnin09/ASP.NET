<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tech_Form.aspx.cs" Inherits="Tech_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <label>Technology :</label>
        <div>
            <asp:RadioButtonList ID="rbltech" runat="server">
                <asp:ListItem Text="LENOVO" Value="LENOVO" />
                <asp:ListItem Text="SONY" Value="SONY" />
                <asp:ListItem Text="PHILIPS" Value="PHILIPS" />
             </asp:RadioButtonList>
        </div>
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Display" 
                OnClick="btnSubmit_Click"/>
        <br /><br />
        <asp:Label ID="lbl_txt" runat="server"></asp:Label>
            
    </div>
    </form>
</body>
</html>
