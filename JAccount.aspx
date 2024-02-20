<%@ Page Language="C#" MasterPageFile="~/JLogin.master" AutoEventWireup="true" CodeFile="JAccount.aspx.cs" Inherits="JAccount" Title="Untitled Page" %>

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
                            First Name :</td>
                        <td>
                            <asp:TextBox ID="txtfname" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Last Name :
                        </td>
                        <td>
                            <asp:TextBox ID="txtlname" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
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
                            Degree:
                        </td>
                        <td>
                            <asp:DropDownList ID="drpdegree" runat="server" CssClass="txt">
                             <asp:ListItem>SELECT</asp:ListItem>
                              <asp:ListItem>12 Pass</asp:ListItem>
                               <asp:ListItem>Graduate</asp:ListItem>
                            <asp:ListItem>Diploma</asp:ListItem>
                                        <asp:ListItem>Degree</asp:ListItem>
                                        <asp:ListItem>Masters</asp:ListItem>
                                         <asp:ListItem>PHD</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Skill :</td>
                        <td>
                            <asp:DropDownList ID="drpskill" runat="server" CssClass="txt">
                             <asp:ListItem>SELECT</asp:ListItem>
                               <asp:ListItem>ASP.Net</asp:ListItem>
                                        <asp:ListItem>VB.Net</asp:ListItem>
                                        <asp:ListItem>Java</asp:ListItem>
                                        <asp:ListItem>PHP</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Detail :</td>
                        <td>
                            <asp:TextBox ID="txtdetail" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            PassYear :
                        </td>
                        <td>
                            <asp:TextBox ID="txtpassyear" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Expereance :
                        </td>
                        <td>
                            <asp:DropDownList ID="drpexp" runat="server" CssClass="txt">
                             <asp:ListItem>SELECT</asp:ListItem>
                              <asp:ListItem>1 Year</asp:ListItem>
                              <asp:ListItem>2 Year</asp:ListItem>
                              <asp:ListItem>3 Year</asp:ListItem>
                              <asp:ListItem>4 Year</asp:ListItem>
                              <asp:ListItem>5 Year</asp:ListItem>
                              <asp:ListItem>Above 5</asp:ListItem>
                            </asp:DropDownList>
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

