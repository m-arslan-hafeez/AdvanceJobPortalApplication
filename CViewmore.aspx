<%@ Page Language="C#" MasterPageFile="~/CLogin.master" AutoEventWireup="true" CodeFile="CViewmore.aspx.cs" Inherits="CViewmore" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style10
    {
        width: 412px;
        height: 464px;
    }
    .style11
    {
        height: 24px;
    }
    .style12
    {
        width: 331px;
    }
    .style13
    {
        text-align: right;
        font-family: Calibri;
        font-size: 14px;
        font-weight: bold;
        color: #002D00;
        width: 57px;
    }
    .style14
    {
        height: 24px;
        width: 57px;
    }
    .style15
    {
        width: 57px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
                :: Company Detail ::</td>
    </tr>
    <tr>
        <td valign="top">
            <table class="style10">
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="lbl">
                        JobSeeker Name :</td>
                    <td style="text-align: left">
                        <asp:Label ID="Label1" runat="server" CssClass="lbl" ForeColor="#990033"></asp:Label>
                    &nbsp;<asp:Label ID="Label12" runat="server" CssClass="lbl" ForeColor="#990033"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="lbl">
                        Address :</td>
                    <td style="text-align: left">
                        <asp:Label ID="Label3" runat="server" CssClass="lbl" ForeColor="#990033"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="lbl">
                        City :</td>
                    <td style="text-align: left">
                        <asp:Label ID="Label4" runat="server" CssClass="lbl" ForeColor="#990033"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="lbl">
                        Pincode :</td>
                    <td style="text-align: left">
                        <asp:Label ID="Label5" runat="server" CssClass="lbl" ForeColor="#990033"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="lbl">
                        Mobile No :</td>
                    <td style="text-align: left">
                        <asp:Label ID="Label6" runat="server" CssClass="lbl" ForeColor="#990033"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="lbl">
                        Degree :</td>
                    <td style="text-align: left">
                        <asp:Label ID="Label7" runat="server" CssClass="lbl" ForeColor="#990033"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="lbl">
                        Skill :</td>
                    <td style="text-align: left">
                        <asp:Label ID="Label8" runat="server" CssClass="lbl" ForeColor="#990033"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="lbl">
                        Expereance :</td>
                    <td style="text-align: left">
                        <asp:Label ID="Label9" runat="server" CssClass="lbl" ForeColor="#990033"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="lbl">
                        PassYear :</td>
                    <td style="text-align: left">
                        <asp:Label ID="Label10" runat="server" CssClass="lbl" ForeColor="#990033"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="lbl">
                        Email :</td>
                    <td style="text-align: left">
                        <asp:Label ID="Label11" runat="server" CssClass="lbl" ForeColor="#990033"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style14">
                        &nbsp;</td>
                    <td class="style11">
                    </td>
                    <td class="style11" style="text-align: left">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style14">
                        &nbsp;</td>
                    <td class="style11" colspan="2">
                        <asp:Label ID="lblmsg" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style14">
                        &nbsp;</td>
                    <td class="style11" colspan="2">
                        <table class="style12">
                            <tr>
                                <td class="lbl">
                                    Send Message :</td>
                                <td>
                                    <asp:TextBox ID="txtmsg" runat="server" Height="44px" TextMode="MultiLine" 
                                        Width="216px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="text-align: left">
                                    <asp:Button ID="Button4" runat="server" CssClass="btn" Text="Send" 
                                        onclick="Button4_Click" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="style15">
                        </td>
                    <td>
                        </td>
                    <td style="text-align: left">
                        </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

