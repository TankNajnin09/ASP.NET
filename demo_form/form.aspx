<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form.aspx.cs" Inherits="form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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

            <div class="form-group">
                <label>Last Name:</label>
                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName"
                    ErrorMessage="Required" Display="Dynamic" ForeColor="Red" />
            </div>
        </div>

        <div class="form-group">
             <label>Birth Date:</label>
             <asp:TextBox ID="txtbrdt" runat="server" CssClass="form-control"></asp:TextBox>
             <asp:RequiredFieldValidator 
                 ID="rfvbrdt" 
                 runat="server" 
                 ControlToValidate="txtbrdt"
                 ErrorMessage="Required" 
                 Display="Dynamic" 
                 ForeColor="Red" />
             <asp:RangeValidator 
                 ID="rngbdt" 
                 runat="server" 
                 ControlToValidate="txtbrdt"
                 Type="Date"
                 MinimumValue="01/01/2000"
                 ErrorMessage="Date must be between 01/01/2000 and today" 
                 Display="Dynamic" 
                 ForeColor="Red" />
        </div>

        <div class="form-group">
            <label>Age:</label>
            <asp:TextBox ID="txtAge" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAge" runat="server" ControlToValidate="txtAge"
                ErrorMessage="Age is required" Display="Dynamic" ForeColor="Red" />
            <asp:RangeValidator ID="rvAge" runat="server" ControlToValidate="txtAge" MinimumValue="18"
                MaximumValue="60" Type="Integer" ErrorMessage="Age must be 18-60" Display="Dynamic" ForeColor="Red" />
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
            <label>Password :</label>
            <asp:TextBox ID="txtpass" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="rfvpass" 
                runat="server"
                ControlToValidate="txtpass"
                ErrorMessage="Password is required"
                Display="Dynamic"
                ForeColor="Red" />
        </div>

        <div class="form-group">
            <label>Confirm Password :</label>
            <asp:TextBox ID="txtcnpass" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="rfvcnpass" 
                runat="server"
                ControlToValidate="txtcnpass"
                ErrorMessage="Confirm Password is required"
                Display="Dynamic"
                ForeColor="Red" />
        </div>
        <asp:CompareValidator 
            ID="CompareValidator1" 
            runat="server"
            ControlToValidate="txtcnpass"
            ControlToCompare="txtpass"   
            ErrorMessage="Password is mismatch"
            Display="Dynamic"
            ForeColor="Red"/>
      
        <div class="form-group">
            <label>Mobile Number:</label>
            <asp:TextBox ID="txtmob" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="rfvmob" 
                runat="server"
                ControlToValidate="txtmob"
                ErrorMessage="Mobile Number is required"
                Display="Dynamic"
                ForeColor="Red" />

            <asp:RegularExpressionValidator
                ID="revmob"
                runat="server"
                ControlToValidate="txtmob"
                 ErrorMessage="Enter valid 10-digit phone number"
                Display="Dynamic"
                ForeColor="Red"
                ValidationExpression="^[6-9]\d{9}$" />
        </div>
        
        <div class="form-group">
            <label class="section-label">Gender:</label>
            <div class="selection-group">
                <asp:RadioButton ID="rbMale" runat="server" GroupName="Gender" Text="Male" />
                <asp:RadioButton ID="rbFemale" runat="server" GroupName="Gender" Text="Female" />
                <asp:RadioButton ID="rdOther" runat="server" GroupName="Gender" Text="Other" />
            </div>
        </div>

        <div class="form-group">
            <label class="section-label">Course:</label>
            <div class="selection-group">
                <asp:ListBox ID="crslst" runat="server">
                    <asp:ListItem>BCA</asp:ListItem>
                    <asp:ListItem>BSC</asp:ListItem>
                    <asp:ListItem>BA</asp:ListItem>
                    <asp:ListItem>BCOM</asp:ListItem>
                    <asp:ListItem>BBA</asp:ListItem>
                </asp:ListBox>
            </div>
        </div>

        <div class="form-group">
            <label class="section-label">Hobbies:</label>
            <div class="selection-group">
                <asp:CheckBoxList ID="chkhb" runat="server">
                    <asp:ListItem Text="Reading" Value="Reading" />
                    <asp:ListItem Text="Music" Value="Music" />
                    <asp:ListItem Text="Sports" Value="Sports" />
                </asp:CheckBoxList>
            </div>
        </div>

        <div class="form-group">
            <label>Photo :</label>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </div>

        <div class="form-actions">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit Registration" 
                OnClick="btnSubmit_Click" CausesValidation="true" CssClass="btn-submit" />
            <asp:Label ID="lblnm" runat="server" CssClass="result-message"></asp:Label>
            <asp:Label ID="lblcrs" runat="server" CssClass="result-message"></asp:Label>
            <asp:Label ID="lblhb" runat="server" CssClass="result-message"></asp:Label>
            <asp:Label ID="lblfile" runat="server" CssClass="result-message"></asp:Label>
        </div>
    </div>
</form>
</body>
</html>
