<%@ Page Language="C#" MasterPageFile="~/CLogin.master" AutoEventWireup="true" CodeFile="CSent.aspx.cs" Inherits="CSent" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style10
    {
        width: 435px;
    }
        .style11
        {
            width: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            JobSeeker Message Sent</td>
    </tr>
    <tr>
        <td>
            <table width="100%">
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" Width="530px" 
                            AutoGenerateColumns="False" Font-Bold="True" Font-Names="Calibri" 
                            onrowcommand="GridView1_RowCommand1">
                            <RowStyle ForeColor="#006600" />
                        <Columns>
                        <asp:BoundField HeaderText="JobSeekerName" DataField="jname" />
                        <asp:BoundField HeaderText="Message" DataField="Message" />
                        <asp:BoundField HeaderText="Send Date" DataField="EntryDate" />
                        <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                        <asp:LinkButton Text="Delete" runat="server" ID="lnde" CommandArgument='<%#Eval("MID") %>'></asp:LinkButton>
                        </ItemTemplate>
                        </asp:TemplateField>
                        </Columns>
                            <HeaderStyle BackColor="#E2C6FF" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

