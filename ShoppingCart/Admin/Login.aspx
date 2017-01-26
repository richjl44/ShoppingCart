<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ShoppingCart.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin: 200px;">

            <table style="border: 1px ridge #999999; width: 450px;">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Text="Shopping Cart Admin"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>LogiID:</td>
                    <td>
                        <asp:TextBox ID="txtLoginID" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblAlert" runat="server"></asp:Label>

                    </td>
                </tr>


            </table>

        </div>
    </form>
</body>
</html>
