<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="top" style="text-align: center">
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/logo/hrms.png" />
   </div>
   <div id="body">
      <div id="login">
          <table class="tbl">
              <tr>
                  <td class="tblhead" colspan="2">
                      ADMIN LOGIN</td>
              </tr>
              <tr>
                  <td>
                      &nbsp;</td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="lbl">
                      UserName :
                  </td>
                  <td>
                      <asp:TextBox ID="txtname" runat="server" CssClass="txt"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="lbl">
                      Password :
                  </td>
                  <td>
                      <asp:TextBox ID="txtpass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td>
                      &nbsp;</td>
                  <td>
                      <asp:Button ID="btnlogin" runat="server" CssClass="btn" 
                          onclick="btnlogin_Click" Text="Login" />
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
       </div>
   </div>
    </form>
</body>
</html>
