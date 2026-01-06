<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Form.aspx.cs" Inherits="Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Login Form</title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h2>Student Login</h2>

            <asp:ValidationSummary 
                ID="ValidationSummary1" 
                runat="server" 
                ForeColor="Red"
                HeaderText="Please fix the following errors:"/>

            <!-- Username -->
            <asp:TextBox ID="txtUsername" runat="server" CssClass="input-box" Placeholder="Username"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="rfvUsername" 
                runat="server" 
                ControlToValidate="txtUsername"
                ErrorMessage="Username is required"
                CssClass="error"
                Display="Dynamic" />

            <!-- Password -->
            <asp:TextBox ID="txtPassword" runat="server" CssClass="input-box" Placeholder="Password"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="rfvPassword" 
                runat="server" 
                ControlToValidate="txtPassword"
                ErrorMessage="Password is required"
                CssClass="error"
                Display="Dynamic" />

            <!-- Confirm Password -->
            <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="input-box" Placeholder="Confirm Password"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="rfvconfpass" 
                runat="server" 
                ControlToValidate="txtConfirmPassword"
                ErrorMessage="Password is required"
                CssClass="error"
                Display="Dynamic" />
            <asp:CompareValidator 
                ID="cvPassword" 
                runat="server"
                ControlToCompare="txtPassword"
                ControlToValidate="txtConfirmPassword"
                ErrorMessage="Passwords do not match"
                CssClass="error"
                Display="Dynamic" />

            <!-- Login Button -->
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="login-btn" OnClick="btn_click"/>
             <asp:Label ID="lblmsg" runat="server" CssClass="result-message"></asp:Label>
        </div>
    </form>
</body>
</html>
