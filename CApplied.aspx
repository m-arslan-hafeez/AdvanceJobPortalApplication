<%@ Page Language="C#" MasterPageFile="~/CLogin.master" AutoEventWireup="true" CodeFile="CApplied.aspx.cs" Inherits="CApplied" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style10
        {
            width: 429px;
        }
        .style18
    {
        width: 83px;
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
        .style19
    {
            width: 138px;
            text-align: left;
        }
        .style14
        {
            width: 118px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
                ::&nbsp;
                Applied Job&nbsp;::</td>
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
                                                Jobseeker&nbsp; Name :<asp:Label ID="lblname" runat="server" CssClass="lbl" 
                                                    ForeColor="#990033" Text='<%#Eval("fname")%>'></asp:Label>
                                                &nbsp;<asp:Label ID="lbldegree0" runat="server" CssClass="lbl" ForeColor="#990033" 
                                                    Text='<%# Eval("lname") %>'></asp:Label>
                                        </td>
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
                                        <td class="lbl">
                                                PassYear :
                                            </td>
                                        <td class="style19">
                                            <asp:Label ID="lblsalary" runat="server" CssClass="lbl" ForeColor="#990033" 
                                                    Text='<%# Eval("paasyear") %>'></asp:Label>
                                        </td>
                                        <td>
                                                <asp:LinkButton ID="LinkButton9" runat="server" Font-Names="Calibri" 
                                                    Font-Underline="True" ForeColor="#003300" CommandArgument='<%#Eval("AID")%>' >View 
                                                More</asp:LinkButton>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style14">
                                                &nbsp;</td>
                                        <td class="style19">
                                                &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
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

