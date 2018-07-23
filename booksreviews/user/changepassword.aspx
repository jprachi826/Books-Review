<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="user_changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Change Password</h2>
<table>
  <tr>
   <td>Old Password :</td>
   <td> 
       <asp:TextBox ID="txtOldPwd" TextMode = "Password" runat="server"></asp:TextBox></td>
  </tr>

  <tr>
   <td>New Password : </td>
   <td>
       <asp:TextBox ID="txtNewPwd" TextMode = "Password" runat="server"></asp:TextBox> </td>
  </tr>

  <tr>
   <td>Confirm New Password : </td>
   <td>
       <asp:TextBox ID="txtConfirmPwd"  TextMode = "Password" runat="server"></asp:TextBox> 
       <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*" 
           ControlToCompare="txtNewPwd" ControlToValidate="txtConfirmPwd" 
           ToolTip="Passwords do not match!"></asp:CompareValidator></td>
  </tr>
</table>
 <p />
 <asp:Button ID="btnChange" runat="server" Text="Change Password" 
         onclick="btnChange_Click"/>
 <p />
 <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>

</asp:Content>

