<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeamDetails.aspx.cs" Inherits="CricScore.TeamDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Team Details</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    Day No : 
                </td>
                <td>
                    <asp:DropDownList ID="ddlDay" runat="server" width="15em">
                        <asp:ListItem Selected="True" Text="Please Select Day" Value="0"></asp:ListItem>
                        <asp:ListItem  Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem  Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem  Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem  Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem  Text="5" Value="5"></asp:ListItem>
                    </asp:DropDownList>
                </td>

                
            </tr>
            <tr>
                <td>
                    Match No :
                </td>
                <td>
                    <asp:DropDownList ID="ddlMatch" runat="server" width="15em">
                        <asp:ListItem Selected="True" Text="Please Select Match" Value="0"></asp:ListItem>
                        <asp:ListItem  Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem  Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem  Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem  Text="4" Value="4"></asp:ListItem>   
                        <asp:ListItem  Text="5" Value="5"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Match Type :
                </td>
                <td>
                    <asp:DropDownList ID="ddlMatchType" runat="server" width="15em">
                      <asp:ListItem Selected="True" Enabled ="true" Text="--Select Match Type--" Value ="0"></asp:ListItem>  
                        
                    </asp:DropDownList>
                </td>
            </tr>
            
            <tr>
                <td>
                    Team 1 :
                </td>
                <td>
                    <asp:DropDownList ID="ddlTeam1" runat="server" width="15em" OnSelectedIndexChanged="ddlTeam1_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Selected="True" Text="--Please Select Team 1--" Value="0"></asp:ListItem>
                        
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Team 2 :
                </td>
                <td>
                    <asp:DropDownList ID="ddlTeam2" runat="server" width="15em" OnSelectedIndexChanged="ddlTeam2_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Selected="True" Text="--Please Select Team 2--" Value="0"></asp:ListItem>
                        
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Toss Won :
                </td>
                <td>
                    <asp:DropDownList ID="ddlToss" runat="server" width="15em">
                      
                        
                        
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Elected To :
                </td>
                <td>
                    <asp:DropDownList ID="ddlElectedTo" runat="server" width="15em">
                        <asp:ListItem Selected="True" Text="Please Select Any Option" Value="0"></asp:ListItem>
                        <asp:ListItem  Text="Bat" Value="0"></asp:ListItem>
                        <asp:ListItem  Text="Ball" Value="1"></asp:ListItem>
                        
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSave" Text="Save Changes" runat="server" OnClick="btnSave_Click" />
                </td>
            </tr>

        </table>
    </div>
    </form>
</body>
</html>
