<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScoreBookEntry.aspx.cs" Inherits="CricScore.ScoreBookEntry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ScoreBook Entry</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Button ID="btnNewBowler" runat="server" Text="Add New Bowler" Width="10em" Height="1em" />

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="label1" runat="server" Text="1st"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="label2" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="label3" runat="server" Text="2nd"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="label4" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="label5" runat="server" Text="3rd"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="label6" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="label7" runat="server" Text="4th"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="label8" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="label9" runat="server" Text="5th"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="label10" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="label11" runat="server" Text="6th"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="label12" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
