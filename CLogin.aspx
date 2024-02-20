<%@ Page Language="C#" MasterPageFile="~/CLogin.master" AutoEventWireup="true" CodeFile="CLogin.aspx.cs" Inherits="CLogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style10
        {
            width: 429px;
        }
        .style11
        {
            text-align: center;
            font-family: Calibri;
            font-size: 14px;
            font-weight: bold;
            color: #002D00;
            height: 23px;
            }
        .style15
        {
            text-align: right;
            font-family: Calibri;
            font-size: 14px;
            font-weight: bold;
            color: #002D00;
            width: 118px;
        }
        .style17
        {
            width: 117px;
            text-align: left;
        }
        .style14
        {
            width: 118px;
        }
        .style18
    {
        width: 83px;
    }
    .style19
    {
        width: 157px;
        text-align: left;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                ::&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;::</td>
        </tr>
        <tr>
            <td valign="top">
                <table class="style10">
                    <tr>
                        <td class="style18">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style18">
                            &nbsp;</td>
                        <td>
                            <asp:DataList ID="DataList3" runat="server" 
                                onitemcommand="DataList3_ItemCommand">
                                <ItemTemplate>
                                    <table style="border: thin solid #008000" width="350px">
                                        <tr>
                                            <td class="style11" bgcolor="#D1F3D1" colspan="3">
                                                Jobseeker Name :<asp:Label ID="lblname" runat="server" CssClass="lbl" 
                                                    ForeColor="#990033" Text='<%#Eval("fname")%>'></asp:Label>
                                                &nbsp;<asp:Label ID="lbltitle" runat="server" CssClass="lbl" ForeColor="#990033" 
                                                    Text='<%#Eval("lname")%>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style15">
                                                &nbsp;</td>
                                            <td class="style17" style="text-align: left" colspan="2">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style15">
                                                Degree&nbsp; :</td>
                                            <td class="style19" style="text-align: left">
                                                <asp:Label ID="lbldegree" runat="server" CssClass="lbl" ForeColor="#990033" 
                                                    Text='<%# Eval("Degree") %>'></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style15">
                                                Skill :
                                            </td>
                                            <td class="style19" style="text-align: left">
                                                <asp:Label ID="lblskillll" runat="server" CssClass="lbl" ForeColor="#990033" 
                                                    Text='<%# Eval("skill") %>'></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Expereance :
                                            </td>
                                            <td class="style19">
                                                <asp:Label ID="lblname0" runat="server" CssClass="lbl" Text='<%#Eval("Experience")%>' ForeColor="#990033"></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style14">
                                                &nbsp;</td>
                                            <td class="style19">
                                                &nbsp;</td>
                                            <td>
                                                <asp:Button ID="Button3" runat="server" CssClass="btn" CommandArgument='<%#Eval("UID")%>' Text="View" />
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style18">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

