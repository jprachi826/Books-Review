<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login"  Debug="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h2>Login</h2>
<table> 
  <tr>
   <td>Email Address : </td>
   <td> 
       <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
  </tr>

  <tr>
   <td>Password : </td>
   <td>
       <asp:TextBox ID="txtPwd" runat="server" TextMode = "Password"></asp:TextBox> </td>
  </tr>
</table>
<p />
 <asp:Button ID="btnLogin" runat="server" Text="Login" onclick="btnLogin_Click" />
 <p />
    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    <p />

    <a href="recoverpassword.aspx">Forgot Password?</a>
       
</asp:Content>

