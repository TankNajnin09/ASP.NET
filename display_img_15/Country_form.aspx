<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Country_form.aspx.cs" Inherits="Country_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Country Flag Selector</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <label>Select Country :</label>
        <div>
            <asp:RadioButtonList ID="rblcon" runat="server">
                <asp:ListItem Text="India" Value="India" />
                <asp:ListItem Text="US" Value="US" />
                <asp:ListItem Text="NewZealand" Value="NewZealand" />
             </asp:RadioButtonList>
        </div>
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Display" 
                OnClick="btnSubmit_Click"/>
        <br /><br />
        <asp:Label ID="lbl_txt" runat="server"></asp:Label>
        <br /><br />
        <asp:Image ID="imgFlag" runat="server" 
            Width="200px" Height="120px" />
    </div>
    </form>
</body>
</html>
