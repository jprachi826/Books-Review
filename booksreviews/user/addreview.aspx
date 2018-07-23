<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addreview.aspx.cs" Inherits="user_addreview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Add Review</h2>
Select Rating : 
    <asp:DropDownList ID="ddlRating" runat="server">
        <asp:ListItem Value="5">Excellent</asp:ListItem>
        <asp:ListItem Value="4">Very Good</asp:ListItem>
        <asp:ListItem Value="3">Good</asp:ListItem>
        <asp:ListItem Value="2">Average</asp:ListItem>
        <asp:ListItem Value="1">Poor</asp:ListItem>
    </asp:DropDownList>
<p />
Enter Your Review Here : <br />
    <asp:TextBox ID="txtReview"  TextMode="MultiLine" 
         Rows="3" Columns  = "50"
        runat="server"></asp:TextBox>
 <p />
    <asp:Button ID="btnAdd" runat="server" Text="Add Review" 
         onclick="btnAdd_Click" />
    <p />
    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
</asp:Content>

