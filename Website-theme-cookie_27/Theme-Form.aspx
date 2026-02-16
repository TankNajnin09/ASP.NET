<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Theme-Form.aspx.cs" Inherits="Theme_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Theme Selector - ASP.NET</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            transition: background-color 0.3s, color 0.3s;
        }

        body.light-mode {
            background-color: #ffffff;
            color: #000000;
        }

        body.dark-mode {
            background-color: #121212;
            color: #ffffff;
        }

        .container {
            margin: 50px;
        }
    </style>
</head>
<body class="<%= CurrentTheme %>">
    <form id="form1" runat="server">
        <div class="container">
            <h1>Select Your Theme</h1>
            <asp:DropDownList ID="ddlTheme" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlTheme_SelectedIndexChanged">
                <asp:ListItem Text="Light Mode" Value="light"></asp:ListItem>
                <asp:ListItem Text="Dark Mode" Value="dark"></asp:ListItem>
            </asp:DropDownList>
        </div>
    </form>
</body>
</html>