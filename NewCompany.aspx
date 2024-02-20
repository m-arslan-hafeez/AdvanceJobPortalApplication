<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="NewCompany.aspx.cs" Inherits="NewCompany" %>

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
            New Company Registration</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table class="tbl">
                <tr>
                    <td class="lbl">
                        Comapny Name :</td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtname" ErrorMessage="!!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Address : </td>
                    <td>
                        <asp:TextBox ID="txtadd" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtadd" ErrorMessage="!!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        City : </td>
                    <td>
                        <asp:TextBox ID="txtcity" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtcity" ErrorMessage="!!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Pincode : </td>
                    <td>
                        <asp:TextBox ID="txtpin" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtpin" ErrorMessage="!!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Contact Person : </td>
                    <td>
                        <asp:TextBox ID="txtcontactperson" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txtcontactperson" ErrorMessage="!!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Mobile :&nbsp; </td>
                    <td>
                        <asp:TextBox ID="txtmobile" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="txtmobile" ErrorMessage="!!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ControlToValidate="txtmobile" ErrorMessage="!!" MaximumValue="9999999999" 
                            MinimumValue="1000000000" Type="Double"></asp:RangeValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Type : </td>
                    <td>
                        <asp:TextBox ID="txttype" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="txttype" ErrorMessage="!!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Detail&nbsp; : </td>
                    <td>
                        <asp:TextBox ID="txtdetail" runat="server" CssClass="txt" Width="200px" 
                                TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Email :</td>
                    <td>
                            <asp:TextBox ID="txtuname" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="txtuname" ErrorMessage="!!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Password : </td>
                    <td>
                            <asp:TextBox ID="txtupass" runat="server" CssClass="txt" Width="120px" 
                            TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                ControlToValidate="txtupass" ErrorMessage="!!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Confirm - Pass : </td>
                    <td>
                            <asp:TextBox ID="txtcpass" runat="server" CssClass="txt" Width="120px" 
                            TextMode="Password"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="txtupass" ControlToValidate="txtcpass" 
                                ErrorMessage="not same"></asp:CompareValidator>
                        </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        &nbsp;</td>
                    <td style="text-align: left">
                        <asp:Button ID="btnregister" runat="server" CssClass="btn" onclick="btnregister_Click" 
                            Text="Register" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lbldone" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

