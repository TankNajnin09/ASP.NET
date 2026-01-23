<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register_form.aspx.cs" Inherits="register_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Page</title>
    <link href="style.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
    <div class="registration-container">
        <h2>Registration Form</h2>

        <div class="form-row">
            <div class="form-group">
                <label>First Name:</label>
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName"
                    ErrorMessage="Required" Display="Dynamic" ForeColor="Red" />
            </div>
        </div>

        <div class="form-group">
            <label>Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="rfvEmail" 
                runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="Email is required"
                Display="Dynamic"
                ForeColor="Red" />

            <asp:RegularExpressionValidator
                ID="revEmail"
                runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="Invalid Email Format"
                Display="Dynamic"
                ForeColor="Red"
                ValidationExpression="^[\w\.-]+@[\w\.-]+\.\w+$" />
        </div>

        <div class="form-group">
            <label class="section-label">Gender:</label>
            <div class="selection-group">
                <asp:RadioButtonList ID="rblGender" runat="server">
                    <asp:ListItem Text="Male" Value="Male" />
                    <asp:ListItem Text="Female" Value="Female" />
                    <asp:ListItem Text="Other" Value="Other" />
                </asp:RadioButtonList>
            </div>
        </div>

        <div class="form-actions">

            <asp:Button ID="btnSubmit" runat="server" Text="Submit Registration" 
                OnClick="btnSubmit_Click" CausesValidation="true" CssClass="btn-submit" />
            <asp:Label ID="lblnm" runat="server" CssClass="result-message"></asp:Label>
            
        </div>
    </div>
    </form>
</body>
</html>
