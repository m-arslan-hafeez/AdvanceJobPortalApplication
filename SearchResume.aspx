<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="SearchResume.aspx.cs" Inherits="HRM_SearchResume" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
      
        .style11
        {
            text-align: right;
            font-family: Calibri;
            font-size: 14px;
            font-weight: bold;
            color: #002D00;
            height: 23px;
            width: 118px;
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
            width: 53px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                :: Result for JobSeeker Search ::</td>
        </tr>
        <tr>
            <td valign="top">
                <table >
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
                                            <td class="style11">
                                                JobSeeker Name :</td>
                                            <td colspan="2" style="text-align: left">
                                                <asp:Label ID="lblname1" runat="server" CssClass="lbl" Text='<%#Eval("Fname")%>' ForeColor="#990033"></asp:Label>
                                                &nbsp;<asp:Label ID="lblname" runat="server" CssClass="lbl" Text='<%#Eval("Lname")%>' ForeColor="#990033"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style15">
                                                Pass Year :</td>
                                            <td class="style17" style="text-align: left">
                                                <asp:Label ID="lbltitle" runat="server" CssClass="lbl" Text='<%#Eval("Paasyear")%>'  ForeColor="#990033"></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Expereance :
                                            </td>
                                            <td class="style17">
                                                <asp:Label ID="lblname0" runat="server" CssClass="lbl" Text='<%#Eval("Experience")%>' ForeColor="#990033"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Button ID="Button3" runat="server" CssClass="btn" Text="View" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style14">
                                                &nbsp;</td>
                                            <td class="style17">
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

