<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TurtleBear_v2.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" />
    <link href="~/Content/bootstrap-grid.css" rel="stylesheet" />
    <link href="Register.css" rel="stylesheet" type="text/css" />
    <title>Register</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="body">
            <div>
                <asp:Button CssClass="h2" ID="btnTopRegister" runat="server" Text="Register" CausesValidation="False"></asp:Button>
            </div>
            <div class="grid-container">
                <div class="labelA">
                    <asp:Label CssClass="labels" ID="Label1" runat="server" Text="UserName:"></asp:Label>
                </div>
                <div class="labelB">
                    <asp:Label CssClass="labels" ID="Label3" runat="server" Text="Password:"></asp:Label>
                </div>
                <div class="labelC">
                    <asp:Label CssClass="labels" ID="Label4" runat="server" Text="Re-Enter Password:"></asp:Label>
                </div>
                <div class="LabelD">
                    <asp:Label CssClass="labels" ID="Label5" runat="server" Text="Phone:"></asp:Label>
                </div>
                <div class="LabelE">
                </div>
                <div class="inputA">
                    <asp:TextBox CssClass="inputs" ID="txtUser" runat="server" placeholder="Username"></asp:TextBox>
                </div>
                <div class="inputB">
                    <asp:TextBox CssClass="inputs" ID="txtPass1" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                </div>
                <div class="inputC">
                    <asp:TextBox CssClass="inputs" ID="txtPass2" runat="server" TextMode="Password" placeholder="Password Again"></asp:TextBox>
                </div>
                <div class="inputD">
                    <asp:TextBox CssClass="inputs" ID="txtPhone" runat="server" placeholder="(###)###-####"></asp:TextBox>
                </div>
                <div class="inputE">
                    <asp:Button CssClass="inputs submit" ID="btnReturn" runat="server" Text="I Have an Account" OnClick="btnReturn_Click" CausesValidation="False" />
                    <asp:Button CssClass="inputs submit" ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                </div>
                <div class="errorA">
                    <asp:RequiredFieldValidator CssClass="errors" ID="rfvUser" runat="server" ControlToValidate="txtUser" ErrorMessage="UserName is required" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator CssClass="errors" ID="revUser" runat="server" ControlToValidate="txtUser" ErrorMessage="Username must be 5-14 Characters long with no Symbols" Display="Dynamic" ValidationExpression="[A-Za-z][A-Za-z0-9._]{5,14}"></asp:RegularExpressionValidator>
                </div>
                <div class="errorB">
                    <asp:RegularExpressionValidator CssClass="errors" ID="revPass" runat="server" ControlToValidate="txtPass1" ErrorMessage="Must be 6-14 characters long, contain at least one lower, one upper case, one digit and one one Symbol (@#$%^&+=)" Display="Dynamic" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[#$^+=!*()@%&]).{6,14}$"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator CssClass="errors" ID="rfvPass" runat="server" ControlToValidate="txtPass1" ErrorMessage="Password is required" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="errorC">
                    <asp:CompareValidator CssClass="errors" ID="cvPass" runat="server" ControlToCompare="txtPass2" ControlToValidate="txtPass1" ErrorMessage="Passwords must match" Display="Dynamic"></asp:CompareValidator>
                </div>
                <div class="errorD">
                    <asp:RegularExpressionValidator CssClass="errors" ID="revPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Please enter A Valid PhoneNumber" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" Display="Dynamic"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator CssClass="errors" ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone Number is required" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="errorE">
                </div>
            </div>
        </div>
    </form>
</body>
</html>
