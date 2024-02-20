<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="NewRecruter.aspx.cs" Inherits="HRM_NewRecruter" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
    {
        width: 414px;
    }
       
        .style9
        {
            width: 117px;
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
            Register as Recruter</td>
    </tr>
    <tr>
        <td>
            <table class="style7">
                <tr>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="lbl">
                        Comapny Name :</td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="lbl">
                        Job Title :</td>
                    <td>
                        <asp:TextBox ID="txttile" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="lbl">
                        Address : </td>
                    <td>
                        <asp:TextBox ID="txtadd" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="lbl">
                        City : </td>
                    <td>
                        <asp:TextBox ID="txtcity" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="lbl">
                        Pincode : </td>
                    <td>
                        <asp:TextBox ID="txtpin" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="lbl">
                        Mobile :&nbsp; </td>
                    <td>
                        <asp:TextBox ID="txtmobile" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="lbl">
                        Gender&nbsp; : </td>
                    <td>
                        <asp:RadioButton ID="rdomale" runat="server" CssClass="txt" GroupName="a" 
                            Text="MALE" Width="80px" />
                        <asp:RadioButton ID="rdofemale" runat="server" CssClass="txt" GroupName="a" 
                            Text="FEMALE" Width="90px" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="lbl">
                        Degree : </td>
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
                    <td class="style10">
                        &nbsp;</td>
                    <td class="lbl">
                        Skill : </td>
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
                    <td class="style10">
                        &nbsp;</td>
                    <td class="lbl">
                        Salary : </td>
                    <td>
                        <asp:TextBox ID="txtsalary" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="lbl">
                        Experience : </td>
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
                    <td class="style11">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td class="lbl">
                        Email :</td>
                    <td>
                            <asp:TextBox ID="txtuname" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                        </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td class="lbl">
                        Password : </td>
                    <td>
                            <asp:TextBox ID="txtupass" runat="server" CssClass="txt" Width="120px" 
                            TextMode="Password"></asp:TextBox>
                        </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td class="lbl">
                        Confirm - Pass : </td>
                    <td>
                            <asp:TextBox ID="txtcpass" runat="server" CssClass="txt" Width="120px" 
                            TextMode="Password"></asp:TextBox>
                        </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td class="lbl">
                        &nbsp;</td>
                    <td style="text-align: left">
                        <asp:Button ID="Button3" runat="server" CssClass="btn" onclick="Button3_Click" 
                            Text="Register" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
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
</table>
</asp:Content>

