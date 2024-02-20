<%@ Page Language="C#" MasterPageFile="~/CLogin.master" AutoEventWireup="true" CodeFile="CChangePass.aspx.cs" Inherits="CChangePass" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">



        .style7
    {
        width: 414px;
    }
        .style10
    {
        text-align: right;
        font-family: Algerian;
        font-size: 14px;
        font-weight: bold;
        color: #660033;
        width: 20px;
    }
    .style11
    {
        width: 20px;
        color: #006600;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            Change Password</td>
    </tr>
    <tr>
        <td>
            <table class="style7">
                <tr>
                    <td class="style10">
                            &nbsp;</td>
                    <td class="lbl">
                            &nbsp;</td>
                    <td>
                            &nbsp;</td>
                    <td>
                            &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="lbl">
                        New Password :</td>
                    <td>
                        <asp:TextBox ID="txtnpass" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="lbl">
                        Confirm-Pass :
                    </td>
                    <td>
                        <asp:TextBox ID="txtlcpass" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="lbl">
                        &nbsp;</td>
                    <td>
                            &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td class="lbl">
                        &nbsp;</td>
                    <td style="text-align: left">
                        <asp:Button ID="Button3" runat="server" CssClass="btn" Text="Change Password" 
                                onclick="Button3_Click" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td class="lbl">
                        &nbsp;</td>
                    <td align="left">
                        <asp:Label ID="lbl" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

