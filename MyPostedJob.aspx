<%@ Page Title="" Language="C#" MasterPageFile="~/CLogin.master" AutoEventWireup="true" CodeFile="MyPostedJob.aspx.cs" Inherits="MyPostedJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 280px;
            height: 42px;
        }
        .style8
        {
            width: 250px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            My Posted Job List</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="center" class="style7">
                <tr>
                    <td class="lbl">
                        Select Job :
                    </td>
                    <td>
                        <asp:DropDownList ID="drpjobtitle" runat="server" CssClass="txt">
                        </asp:DropDownList>
                        <asp:Button ID="btnselect" runat="server" CssClass="btn" 
                            onclick="btnselect_Click" Text="Select" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lbl" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <table class="style8" align="center">
                        <tr>
                            <td class="lbl">
                                Job Title :
                            </td>
                            <td style="text-align: left">
                                <asp:Label ID="lblname" runat="server" CssClass="lbl"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="lbl">
                                Degree :
                            </td>
                            <td style="text-align: left">
                                <asp:Label ID="lbldegree" runat="server" CssClass="lbl"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="lbl">
                                Skill :
                            </td>
                            <td style="text-align: left">
                                <asp:Label ID="lblskill" runat="server" CssClass="lbl"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="lbl">
                                Experience :
                            </td>
                            <td style="text-align: left">
                                <asp:Label ID="lblexp" runat="server" CssClass="lbl"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="lbl">
                                Salary :
                            </td>
                            <td style="text-align: left">
                                <asp:Label ID="lblsala" runat="server" CssClass="lbl"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="lbl">
                                Vacancy :&nbsp;
                            </td>
                            <td style="text-align: left">
                                <asp:Label ID="lblvan" runat="server" CssClass="lbl"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="lbl">
                                Detail :
                            </td>
                            <td style="text-align: left">
                                <asp:Label ID="lbldet" runat="server" CssClass="lbl"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td style="text-align: left">
                                <asp:Button ID="btnremove" runat="server" CssClass="btn" 
                                    onclick="btnremove_Click" Text="Remove Job" />
                            </td>
                        </tr>
                    </table>
                </asp:View>
            </asp:MultiView>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

