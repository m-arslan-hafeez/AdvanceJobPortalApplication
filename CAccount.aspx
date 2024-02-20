<%@ Page Language="C#" MasterPageFile="~/CLogin.master" AutoEventWireup="true" CodeFile="CAccount.aspx.cs" Inherits="CAccount" Title="Untitled Page" %>

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
                My Account</td>
        </tr>
        <tr>
            <td>
                <table class="tbl">
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
                            Company Name:</td>
                        <td style="text-align: left">
                            <asp:Label ID="lblcname" runat="server"></asp:Label>
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Address :
                        </td>
                        <td>
                            <asp:TextBox ID="txtadd" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            City :</td>
                        <td>
                            <asp:TextBox ID="txtcity" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Pincode :</td>
                        <td>
                            <asp:TextBox ID="txtpin" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Mobile :</td>
                        <td>
                            <asp:TextBox ID="txtmob" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Contact Person : </td>
                        <td>
                            <asp:TextBox ID="txtcperson" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Type :
                        </td>
                        <td>
                            <asp:TextBox ID="txttype" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Detail :</td>
                        <td>
                            <asp:TextBox ID="txtdetil" runat="server" CssClass="txt" Width="200px" 
                                TextMode="MultiLine"></asp:TextBox>
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
                            <asp:Button ID="Button3" runat="server" CssClass="btn" Text="Update Detail" 
                                onclick="Button3_Click" />
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
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

