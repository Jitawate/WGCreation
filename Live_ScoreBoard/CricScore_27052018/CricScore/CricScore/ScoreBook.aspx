<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScoreBook.aspx.cs" Inherits="CricScore.ScoreBook" MasterPageFile="~/CricketScore.Master" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <table style="width: 1000px;">
        <tr>
            <td>
                <asp:Panel runat="server" Width="1200px" ID="PanelUpper" BorderColor="Red" Height="100px" BackColor="Orange">
                    <table>
                        <tr>
                            <td>Current Over :
                            </td>
                            <td>
                                <asp:Label ID="OverNumber" runat="server"></asp:Label>
                                &nbsp;&nbsp;
                                <asp:Label ID="BowlerName" runat="server"></asp:Label>
                                &nbsp:&nbsp;
                                <asp:Label ID="TeamName1" runat="server"></asp:Label>
                                &nbsp:&nbsp;
                                <asp:Button ID="AddBowler" runat="server" Text="ADD NEW BOWLER" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>


                <td>
                    <asp:Button ID="btnDeclare" runat="server" Width="100px" Text="DECLARE" />
                </td>
                <td>
                    <asp:Button ID="btnOvers" runat="server" Width="100px" Text="OVERS" />
                </td>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel runat="server" ID="PanelMiddle1" Width="1200px" BorderColor="Red" BackColor="Green" Height="300px">

                    <table>
                        <tr>
                            <td>
                                <asp:Panel ID="PanelBatsmenOnStrikeLeftScorePerBalls" runat="server" Width="200px" BorderColor="Red" BackColor="Yellow" Height="50px">
                                    <asp:Label ID="lblScrRunsStrike" runat="server" Text="0"></asp:Label>
                                    <asp:Label ID="lblScrBallsSrike" runat="server" Text="0" Visible="true"></asp:Label>
                                </asp:Panel>
                            </td>
                            <td>
                                <asp:Panel ID="PanelBatsmenOnStrikeRightScorePerBalls" runat="server" Width="200px" BorderColor="Red" BackColor="Yellow" Height="50px">
                                    <asp:Label ID="Label1" runat="server" Text="0"></asp:Label>
                                    <asp:Label ID="Label2" runat="server" Text="0" Visible="true"></asp:Label>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Panel runat="server" ID="PanelBatsmenOnSrikeLeft" Width="200px" BackColor="SkyBlue" Height="200px">
                                    <asp:Button ID="Button1" runat="server" Text="1" Width="41px"
                                        OnClick="Button1_Click" />
                                    <asp:Button ID="Button2" runat="server" Text="2" Width="41px"
                                        OnClick="Button2_Click" />
                                    <asp:Button ID="Button3" runat="server" Text="3" Width="41px"
                                        OnClick="Button3_Click" />
                                    <asp:Button ID="Button4" runat="server" Text="4" Width="41px"
                                        OnClick="Button4_Click" />
                                    <asp:Button ID="Button5" runat="server" Text="5" Width="41px"
                                        OnClick="Button5_Click" />
                                    <asp:Button ID="Button6" runat="server" Text="6" Width="41px"
                                        OnClick="Button6_Click" />
                                    <asp:Button ID="Button7" runat="server" Text="0" Width="41px"
                                        OnClick="Button7_Click" />
                                    <asp:Button ID="btnBatsmenOnStikeLeft" runat="server" Text="I AM ON STRIKE" Width="150px" OnClick="btnBatsmenOnStikeLeft_Click" />
                                </asp:Panel>
                            </td>
                            <td>
                                <asp:Panel runat="server" ID="Panel1" Width="200px" BackColor="SkyBlue" Height="200px">
                                    <asp:Button ID="Button8" runat="server" Text="1" Width="41px"
                                        OnClick="Button1_Click" />
                                    <asp:Button ID="Button9" runat="server" Text="2" Width="41px"
                                        OnClick="Button2_Click" />
                                    <asp:Button ID="Button10" runat="server" Text="3" Width="41px"
                                        OnClick="Button3_Click" />
                                    <asp:Button ID="Button11" runat="server" Text="4" Width="41px"
                                        OnClick="Button4_Click" />
                                    <asp:Button ID="Button12" runat="server" Text="5" Width="41px"
                                        OnClick="Button5_Click" />
                                    <asp:Button ID="Button13" runat="server" Text="6" Width="41px"
                                        OnClick="Button6_Click" />
                                    <asp:Button ID="Button14" runat="server" Text="0" Width="41px"
                                        OnClick="Button7_Click" />
                                    <asp:Button ID="btnBatsmenOnStrikeRight" runat="server" Text="I AM ON STRIKE" Width="150px" OnClick="btnBatsmenOnStikeLeft_Click" />
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>

                </asp:Panel>

            </td>

        </tr>
        <tr style="color: grey; width: auto;">
            <td>
                <asp:Button ID="btnBowled" runat="server" Text="BOWLED" OnClick="btnBowled_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCaught" runat="server" Text="CAUGHT" OnClick="btnCaught_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnStumped" runat="server" Text="STUMPED" OnClick="btnStumped_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnRunOut" runat="server" Text="RUN OUT" OnClick="btnRunOut_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnLBW" runat="server" Text="LBW" OnClick="btnLBW_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnOther" runat="server" Text="OTHER" OnClick="btnOther_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            </td>

        </tr>
        <tr>
            <td>
                <asp:Button ID="btnOneByes" runat="server" Text="1B" OnClick="btnOneByes_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnTwoByes" runat="server" Text="2B" OnClick="btnTwoByes_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnThreeByes" runat="server" Text="3B" OnClick="btnThreeByes_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnFourByes" runat="server" Text="4B" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnFiveByes" runat="server" Text="5B" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSixByes" runat="server" Text="6B" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnOneLB" runat="server" Text="1 LB"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnTwoLB" runat="server" Text="2 LB"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnThreeLB" runat="server" Text="3 LB"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnFourLB" runat="server" Text="4 LB" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnFiveLB" runat="server" Text="5 LB" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSixLB" runat="server" Text="6 LB" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnNOBall" runat="server" Text="NO BALL"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnNoRuns" runat="server" Text="NO + RUNS"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnNoWicket" runat="server" Text="NO + WICKET"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnNoRunsWicket" runat="server" Text="NO + RUNS + WICKET" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnWideBall" runat="server" Text="WIDE BALL"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnWideRuns" runat="server" Text="WUDE + RUNS"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnWideWicket" runat="server" Text="WIDE + WICKET"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnWideRunsWicket" runat="server" Text="WIDE + RUNS + WICKET" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            </td>
        </tr>
         <tr>
            <td>
                <asp:Button ID="btnPenaltyTeamOne" runat="server" Text="PENALTY TO TEAM ONE"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnPenaltyTeamTwo" runat="server" Text="PENALTY TO TEAM TWO"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            </td>
        </tr>






    </table>



</asp:Content>
