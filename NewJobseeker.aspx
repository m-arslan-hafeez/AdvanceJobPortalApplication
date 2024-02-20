<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="NewJobseeker.aspx.cs" Inherits="HRM_NewJobseeker" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style7
    {
        width: 331px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Register as JobSeeker</td>
        </tr>
        <tr>
            <td>
                <table class="style7">
                    <tr>
                        <td class="style8">
                        &nbsp;</td>
                        <td class="lbl">
                        First Name :</td>
                        <td>
                            <asp:TextBox ID="txtfname" runat="server" CssClass="txt" Width="120px" 
                                ></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtfname" ErrorMessage="!!!"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                        &nbsp;</td>
                        <td class="lbl">
                        Last Name :</td>
                        <td>
                            <asp:TextBox ID="txtlname" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtlname" ErrorMessage="!!!"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                        &nbsp;</td>
                        <td class="lbl">
                            Address :</td>
                        <td>
                            <asp:TextBox ID="txtadd" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtadd" ErrorMessage="!!!"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                        &nbsp;</td>
                        <td class="lbl">
                            City :
                        </td>
                        <td>
                            <asp:TextBox ID="txtcity" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                        &nbsp;</td>
                        <td class="lbl">
                            Pincode :
                        </td>
                        <td>
                            <asp:TextBox ID="txtpin" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                        &nbsp;</td>
                        <td class="lbl">
                            Mobile :</td>
                        <td>
                            <asp:TextBox ID="txtmobile" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                        &nbsp;</td>
                        <td class="lbl">
                            Gender :
                        </td>
                        <td>
                            <asp:RadioButton ID="rdomale" runat="server" CssClass="txt" Text="Male" 
                                Width="70px" />
                            <asp:RadioButton ID="rdofemale" runat="server" CssClass="txt" Text="Female" 
                                Width="70px" />
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            &nbsp;</td>
                        <td class="lbl">
                            BirthDate :
                        </td>
                        <td>
                            <asp:DropDownList ID="drpdd" runat="server" CssClass="txt" Width="50px">  <asp:ListItem>DD</asp:ListItem>
                                        <asp:ListItem>01</asp:ListItem>
                                        <asp:ListItem>02</asp:ListItem>
                                        <asp:ListItem>03</asp:ListItem>
                                        <asp:ListItem>04</asp:ListItem>
                                        <asp:ListItem>05</asp:ListItem>
                                        <asp:ListItem>06</asp:ListItem>
                                        <asp:ListItem>07</asp:ListItem>
                                        <asp:ListItem>08</asp:ListItem>
                                        <asp:ListItem>09</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>11</asp:ListItem>
                                        <asp:ListItem>12</asp:ListItem>
                                        <asp:ListItem>13</asp:ListItem>
                                        <asp:ListItem>14</asp:ListItem>
                                        <asp:ListItem>15</asp:ListItem>
                                        <asp:ListItem>16</asp:ListItem>
                                        <asp:ListItem>17</asp:ListItem>
                                        <asp:ListItem>18</asp:ListItem>
                                        <asp:ListItem>19</asp:ListItem>
                                        <asp:ListItem>20</asp:ListItem>
                                        <asp:ListItem>21</asp:ListItem>
                                        <asp:ListItem>22</asp:ListItem>
                                        <asp:ListItem>23</asp:ListItem>
                                        <asp:ListItem>24</asp:ListItem>
                                        <asp:ListItem>25</asp:ListItem>
                                        <asp:ListItem>26</asp:ListItem>
                                        <asp:ListItem>27</asp:ListItem>
                                        <asp:ListItem>28</asp:ListItem>
                                        <asp:ListItem>29</asp:ListItem>
                                        <asp:ListItem>30</asp:ListItem>
                                        <asp:ListItem>31</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="drpmm" runat="server" CssClass="txt" Width="60px">  <asp:ListItem>MM</asp:ListItem>
                                        <asp:ListItem>jan</asp:ListItem>
                                        <asp:ListItem>feb</asp:ListItem>
                                        <asp:ListItem>mar</asp:ListItem>
                                        <asp:ListItem>apr</asp:ListItem>
                                        <asp:ListItem>may</asp:ListItem>
                                        <asp:ListItem>jun</asp:ListItem>
                                        <asp:ListItem>jul</asp:ListItem>
                                        <asp:ListItem>aug</asp:ListItem>
                                        <asp:ListItem>sep</asp:ListItem>
                                        <asp:ListItem>oct</asp:ListItem>
                                        <asp:ListItem>nov</asp:ListItem>
                                        <asp:ListItem>dec</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="drpyyy" runat="server" CssClass="txt" Width="60px">   <asp:ListItem>YYYY</asp:ListItem>
                                         <asp:ListItem>1930</asp:ListItem>
                                         <asp:ListItem>1931</asp:ListItem>
                
                                        <asp:ListItem>1932</asp:ListItem>
                                        <asp:ListItem>1934</asp:ListItem>
                                        <asp:ListItem>1935</asp:ListItem>
                                        <asp:ListItem>1936</asp:ListItem>
                                        <asp:ListItem>1937</asp:ListItem>
                                        <asp:ListItem>1938</asp:ListItem>
                
                                        <asp:ListItem>1939</asp:ListItem>
                                        <asp:ListItem>1940</asp:ListItem>
                                        <asp:ListItem>1941</asp:ListItem>
                                        <asp:ListItem>1942</asp:ListItem>
                                        <asp:ListItem>1943</asp:ListItem>
                                        <asp:ListItem>1944</asp:ListItem>
                
                                        <asp:ListItem>1945</asp:ListItem>
                                        <asp:ListItem>1946</asp:ListItem>
                                        <asp:ListItem>1947</asp:ListItem>
                                        <asp:ListItem>1948</asp:ListItem>
                                        <asp:ListItem>1949</asp:ListItem>
                                        <asp:ListItem>1950</asp:ListItem>
                                        <asp:ListItem>1951</asp:ListItem>
                                        <asp:ListItem>1952</asp:ListItem>
                                        <asp:ListItem>1953</asp:ListItem>
                                        <asp:ListItem>1954</asp:ListItem>
                                        <asp:ListItem>1955</asp:ListItem>
                                        <asp:ListItem>1956</asp:ListItem>
                                        <asp:ListItem>1957</asp:ListItem>
                                        <asp:ListItem>1958</asp:ListItem>
                                        <asp:ListItem>1959</asp:ListItem>
                                        <asp:ListItem>1960</asp:ListItem>
                                        <asp:ListItem>1961</asp:ListItem>
                                        <asp:ListItem>1962</asp:ListItem>
                                        <asp:ListItem>1963</asp:ListItem>
                                        <asp:ListItem>1964</asp:ListItem>
                                        <asp:ListItem>1965</asp:ListItem>
                                        <asp:ListItem>1966</asp:ListItem>
                                        <asp:ListItem>1967</asp:ListItem>
                                        <asp:ListItem>1968</asp:ListItem>
                                        <asp:ListItem>1969</asp:ListItem>
                                        <asp:ListItem>1970</asp:ListItem>
                                        <asp:ListItem>1971</asp:ListItem>
                                        <asp:ListItem>1972</asp:ListItem>
                                        <asp:ListItem>1973</asp:ListItem>
                                        <asp:ListItem>1974</asp:ListItem>
                                        <asp:ListItem>1975</asp:ListItem>
                                        <asp:ListItem>1976</asp:ListItem>
                                        <asp:ListItem>1977</asp:ListItem>
                                        <asp:ListItem>1978</asp:ListItem>
                                        <asp:ListItem>1979</asp:ListItem>
                                        <asp:ListItem>1980</asp:ListItem>
                                        <asp:ListItem>1981</asp:ListItem>
                                        <asp:ListItem>1982</asp:ListItem>
                                        <asp:ListItem>1983</asp:ListItem>
                                        <asp:ListItem>1984</asp:ListItem>
                                        <asp:ListItem>1985</asp:ListItem>
                                        <asp:ListItem>1986</asp:ListItem>
                                        <asp:ListItem>1987</asp:ListItem>
                                        <asp:ListItem>1988</asp:ListItem>
                                        <asp:ListItem>1989</asp:ListItem>
                                        <asp:ListItem>1990</asp:ListItem>
                                        <asp:ListItem>1991</asp:ListItem>
                                        <asp:ListItem>1992</asp:ListItem>
                                        <asp:ListItem>1993</asp:ListItem>                                        
                                      <asp:ListItem>1994</asp:ListItem>
                                        <asp:ListItem>1995</asp:ListItem>
                                        <asp:ListItem>1996</asp:ListItem>
                                        <asp:ListItem>1997</asp:ListItem>
                                        <asp:ListItem>1998</asp:ListItem>
                                        <asp:ListItem>1999</asp:ListItem>
                                        <asp:ListItem>2000</asp:ListItem>
                                        <asp:ListItem>2001</asp:ListItem>
                                        <asp:ListItem>2002</asp:ListItem>
                                        <asp:ListItem>2003</asp:ListItem>
                                        <asp:ListItem>2004</asp:ListItem>
                                        <asp:ListItem>2005</asp:ListItem>
                                        <asp:ListItem>2006</asp:ListItem>                                        
                                        <asp:ListItem>2007</asp:ListItem>
                                        <asp:ListItem>2008</asp:ListItem>
                                        <asp:ListItem>2009</asp:ListItem>
                                        <asp:ListItem>2010</asp:ListItem>
                                        <asp:ListItem>2011</asp:ListItem>
                                        <asp:ListItem>2012</asp:ListItem>
                                        <asp:ListItem>2013</asp:ListItem>
                                        <asp:ListItem>2014</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            &nbsp;</td>
                        <td class="lbl">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            &nbsp;</td>
                        <td class="lbl">
                            Degree :&nbsp;
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
                        <td class="style9">
                            &nbsp;</td>
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
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            &nbsp;</td>
                        <td class="lbl">
                            Pass Year :
                        </td>
                        <td>
                            <asp:TextBox ID="txtpassyear" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            &nbsp;</td>
                        <td class="lbl">
                            Experience :
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
                        <td class="style9">
                            &nbsp;</td>
                        <td class="lbl">
                            Detail :
                        </td>
                        <td>
                            <asp:TextBox ID="txtdetail" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            &nbsp;</td>
                        <td class="lbl">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            &nbsp;</td>
                        <td class="lbl">
                            Email (UserNmae)</td>
                        <td>
                            <asp:TextBox ID="txtuname" runat="server" CssClass="txt" Width="120px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txtuname" ErrorMessage="!!!" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            &nbsp;</td>
                        <td class="lbl">
                            Password :
                        </td>
                        <td>
                            <asp:TextBox ID="txtupass" runat="server" CssClass="txt" Width="120px" 
                                TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txtupass" ErrorMessage="!!!"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            &nbsp;</td>
                        <td class="lbl">
                            Confirm -Pass</td>
                        <td>
                            <asp:TextBox ID="txtcpass" runat="server" CssClass="txt" Width="120px" 
                                TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="txtupass" ControlToValidate="txtcpass" ErrorMessage="!!!"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
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
                        <td class="style9">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

