<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TurtleBear_v2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" />
    <link href="~/Content/bootstrap-grid.css" rel="stylesheet" />
    <link href="Login.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <asp:button CssClass="h1" ID="btnTopLogin" runat="server" Text="Login"></asp:button>
            </div>
            <asp:TextBox CssClass="inputs" ID="txtUser01" runat="server" placeholder="Username"></asp:TextBox>
            <asp:TextBox CssClass="inputs" ID="txtPass01" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
            <asp:Button CssClass="inputs submit" ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
            <asp:Button CssClass="inputs submit" ID="btnLogin" runat="server" Text="Log In" OnClick="btnLogin_Click" />
            <div>
                <br />
                <asp:CheckBox CssClass="inputs" ID="Persist" runat="server" Text="Remember me" />
            </div>
        </div>
    </form>
</body>
</html>
