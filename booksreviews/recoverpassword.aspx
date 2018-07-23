<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="recoverpassword.aspx.cs" Inherits="recoverpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Recover Password</h2>
Enter your email address : 
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <p />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" />
    <p />
    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
</asp:Content>

