<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="SearchJob.aspx.cs" Inherits="HRM_SearchJob" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            width: 333px;
        }
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
        .style12
        {
            height: 23px;
        }
        .style14
        {
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
        .style16
        {
            height: 23px;
            width: 117px;
        }
        .style17
        {
            width: 117px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                :: Result for Job Search ::</td>
        </tr>
        <tr>
            <td valign="top">
                <table class="tbl">
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DataList ID="DataList3" runat="server" 
                                onitemcommand="DataList3_ItemCommand">
                                <ItemTemplate>
                                    <table style="border: thin solid #008000" width="350px">
                                        <tr>
                                            <td class="style11">
                                                Comapny Name :</td>
                                            <td class="style16" style="text-align: left">
                                                <asp:Label ID="lblname" runat="server" CssClass="lbl" Text='<%#Eval("Companyname")%>' ForeColor="#990033"></asp:Label>
                                            </td>
                                            <td class="style12">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style15">
                                                Job Title :</td>
                                            <td class="style17" style="text-align: left">
                                                <asp:Label ID="lbltitle" runat="server" CssClass="lbl" Text='<%#Eval("JobTitle")%>' ForeColor="#990033"></asp:Label>
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
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Vacancy : </td>
                                            <td class="style17">
                                                <asp:Label ID="lblname1" runat="server" CssClass="lbl" ForeColor="#990033" 
                                                    Text='<%#Eval("vacancy")%>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Button ID="Button3" runat="server" CssClass="btn" Text="Apply" />
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

