<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="CFPass.aspx.cs" Inherits="CFPass" Title="Untitled Page" %>

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
            Company Forgot Password</td>
    </tr>
    <tr>
        <td>
            <table class="tbl">
                <tr>
                    <td class="lbl">
                        Enter City :</td>
                    <td>
                        <asp:TextBox ID="txtcity" runat="server" CssClass="txt" Width="120px" 
                            TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Enter Pincode :
                    </td>
                    <td>
                        <asp:TextBox ID="txtpin" runat="server" CssClass="txt" Width="120px" 
                            TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Enter Mobile :
                    </td>
                    <td>
                        <asp:TextBox ID="txtmob" runat="server" CssClass="txt" Width="120px" 
                            TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        &nbsp;</td>
                    <td style="text-align: left">
                        <asp:Button ID="Button3" runat="server" CssClass="btn" onclick="Button3_Click" 
                            Text="Get Password" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        &nbsp;</td>
                    <td align="left">
                        <asp:Label ID="lblpass" runat="server" CssClass="lbl"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

