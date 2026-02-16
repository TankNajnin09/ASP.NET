<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple Shopping Cart</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Products</h1>
        <asp:Repeater ID="rptProducts" runat="server">
            <ItemTemplate>
                <div>
                    <%# Eval("Name") %> - $<%# Eval("Price") %>
                    <asp:Button ID="btnAdd" runat="server" Text="Add to Cart" CommandArgument='<%# Eval("Id") %>' OnClick="btnAdd_Click" />
                </div>
            </ItemTemplate>
        </asp:Repeater>

        <h1>Shopping Cart</h1>
        <asp:GridView ID="gvCart" runat="server" 
            AutoGenerateColumns="False" 
            OnRowCommand="gvCart_RowCommand">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Product" />
                <asp:BoundField DataField="Price" HeaderText="Price" DataFormatString="{0:C}" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="Total" HeaderText="Total" DataFormatString="{0:C}" />
        
                <asp:ButtonField 
                    ButtonType="Button" 
                    CommandName="Remove" 
                    Text="Remove" />
            </Columns>
        </asp:GridView>

        <asp:Label ID="lblTotal" runat="server" Font-Bold="True"></asp:Label>
        <br />
        <asp:Button ID="btnClear" runat="server" Text="Clear Cart" OnClick="btnClear_Click" />
    </form>
</body>
</html>
