<%@ Page Title="" Language="C#" MasterPageFile="~/CLogin.master" AutoEventWireup="true" CodeFile="PostJob.aspx.cs" Inherits="PostJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style7
    {
        width: 328px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            Post New Job</td>
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
                        Job Title :</td>
                    <td>
                        <asp:TextBox ID="txttile" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txttile" ErrorMessage="!!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Degree :
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="drpdegree" ErrorMessage="!!" InitialValue="SELECT" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Skill :
                    </td>
                    <td>
                            <asp:DropDownList ID="drpskill" runat="server" CssClass="txt">
                             <asp:ListItem>SELECT</asp:ListItem>
                               <asp:ListItem>ASP.Net</asp:ListItem>
                                        <asp:ListItem>VB.Net</asp:ListItem>
                                        <asp:ListItem>Java</asp:ListItem>
                                        <asp:ListItem>PHP</asp:ListItem>
                            </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="drpskill" ErrorMessage="!!" InitialValue="SELECT" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Salary :
                    </td>
                    <td>
                        <asp:TextBox ID="txtsalary" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtsalary" ErrorMessage="!!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Experience :
                    </td>
                    <td>
                            <asp:DropDownList ID="drpexp" runat="server" CssClass="txt">
                             <asp:ListItem>SELECT</asp:ListItem>
                              <asp:ListItem>1</asp:ListItem>
                              <asp:ListItem>2</asp:ListItem>
                              <asp:ListItem>3</asp:ListItem>
                              <asp:ListItem>4</asp:ListItem>
                              <asp:ListItem>5</asp:ListItem>
                              <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                            </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="drpexp" ErrorMessage="!!" InitialValue="SELECT" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        No of Vacancy :
                    </td>
                    <td>
                        <asp:TextBox ID="txtvacancy" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="txtvacancy" ErrorMessage="!!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ControlToValidate="txtvacancy" ErrorMessage="!!" MaximumValue="1000" 
                            MinimumValue="1" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Detail :
                    </td>
                    <td>
                        <asp:TextBox ID="txtdetail" runat="server" CssClass="txt" TextMode="MultiLine" 
                            Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td style="text-align: left">
                        <asp:Button ID="btnpostjob" runat="server" CssClass="btn" 
                            onclick="btnpostjob_Click" Text="Post JOB" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td style="text-align: left">
                        <asp:Label ID="lbl" runat="server"></asp:Label>
                    </td>
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

