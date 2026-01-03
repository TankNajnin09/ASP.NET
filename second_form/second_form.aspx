<%@ Page Language="C#" AutoEventWireup="true" CodeFile="second_form.aspx.cs" Inherits="second_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple Form</title>
    <link rel="stylesheet" href="style.css">

    <script type="text/javascript">
        function double_click() {
            var txt = document.getElementById('<%= txtnm.ClientID %>').value;

            // Convert to Proper Case
            txt = txt.toLowerCase().replace(/\b\w/g, function (c) {
                return c.toUpperCase();
            });

            document.getElementById('<%= lblproper.ClientID %>').innerText ="Proper Text : " + txt;

            return false; // prevent postback
        }
    </script>
</head>
<body>
    <div class="form-container">
    <h2>Contact Us</h2>
    <form id="form1" runat="server">
        User Name : 
        <asp:TextBox ID="txtnm" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator 
            ID="rfvnm" 
            runat="server" 
            ControlToValidate="txtnm"
            ErrorMessage="User name is required"
            Display="Dynamic"
            ForeColor="Red"/>

        <br /><br />
        <asp:Button ID="btnsub" runat="server" Text="Button" OnClick="data_sub" />
        <br /><br />

        <asp:Label ID="lbltxt" runat="server"></asp:Label><br /><br />
        <asp:Label ID="lblproper" runat="server"></asp:Label>
    </form>
  </div>
</body>
</html>
