<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CricScore.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblUserName" runat="server" Text="User Name" Width="10em"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server" Width="15em" Height="2em"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rtfUser" runat="server" ErrorMessage="Please Enter User Name" ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblPwd" runat="server" Text="Password"  Width="15em"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPwd" runat="server" Width="15em" Height="2em" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rtfPWD" ControlToValidate="txtPwd" runat="server" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                </td>
            </tr>
        </table>

    </div>
    </form>
</body>
</html>
