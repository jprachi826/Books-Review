<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Register User</h2>
<table>
  <tr>
   <td>Email Address : </td>
   <td> 
       <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
  </tr>

  <tr>
   <td>Password : </td>
   <td>
       <asp:TextBox ID="txtPwd" TextMode = "Password" runat="server"></asp:TextBox> </td>
  </tr>

  <tr>
   <td>Re-enter Password : </td>
   <td>
       <asp:TextBox ID="txtPwd2"  TextMode = "Password" runat="server"></asp:TextBox> 
       <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*" 
           ControlToCompare="txtPwd" ControlToValidate="txtPwd2" 
           ToolTip="Passwords do not match!"></asp:CompareValidator></td>
  </tr>
</table>
 <p />
 <asp:Button ID="btnRegister" runat="server" Text="Register" 
         onclick="btnRegister_Click"/>
 <p />
 <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
 
</asp:Content>

