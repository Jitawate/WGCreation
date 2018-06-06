<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MatchesDashboard.aspx.cs" Inherits="CricScore.MatchesDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Matches Dashboard</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <table>
            <tr>
                <td>
                    <asp:Button ID="btnNewMatch" runat="server" Text="Create New Match" Width="20em" Height="2em" OnClick="btnNewMatch_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="Panel1" runat="server" >
                        <asp:Button ID="Button1" runat="server" />
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        Vs
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Label3" Text="Winner :" runat="server"></asp:Label>
                        <asp:Label ID="Label4" Text="Match Is Going On" runat="server"></asp:Label>
                        &nbsp:&nbsp;&nbsp;&nbsp;&nbsp;Start Time : 
                        <asp:Label ID="Time1" runat="server"></asp:Label>
                        &nbsp:&nbsp;&nbsp;&nbsp;&nbsp;End Time : 
                        <asp:Label ID="Time2" runat="server"></asp:Label>
                    </asp:Panel>
                </td>
            </tr>
                <tr>
                    <td style="width:1em;"> 
                        
                    </td>
                </tr>
             <tr>
                <td>
                    <asp:Panel ID="Panel2" runat="server" >
                        <asp:Button ID="Button2" runat="server" />
                        <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                        Vs
                        <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Label7" Text="Winner :" runat="server"></asp:Label>
                        <asp:Label ID="Label8" Text="Match Is Going On" runat="server"></asp:Label>
                        &nbsp:&nbsp;&nbsp;&nbsp;&nbsp;Start Time : 
                        <asp:Label ID="Time3" runat="server"></asp:Label>
                        &nbsp:&nbsp;&nbsp;&nbsp;&nbsp;End Time : 
                        <asp:Label ID="Time4" runat="server"></asp:Label>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
