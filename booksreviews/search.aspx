<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Search Books</h2>
Enter Title : <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox> 
<asp:Button ID="btnSearch" runat="server" Text="Search" onclick="btnSearch_Click" />


<asp:DataList ID="dlBooks" runat="server">
  <ItemTemplate>
    <div class="book">
    <table>
     <tr>
      <td valign="top">
       <a href='showbook.aspx?bookid=<%#Eval("BookId") %>'><img src='images/<%#Eval("BookId")%>_cover.jpg' width='100px' height='100px'  alt="Book Cover" /></a>
      </td>
      <td valign="top">
         Title : <b><%#Eval("title") %> </b>
         <br />
         Author(s) : <%#Eval("authors") %> 
         <br />
         Publisher : <%#Eval("publisher") %> 
         <br />
         Price : <%# String.Format("{0:#,###}",Eval("price")) %> 
         <br />
         No. Pages : <%#Eval("nopages") %> 
         <br />
         Published On : <%#String.Format("{0:dd-MMM-yyyy}", Eval("pubdate"))%> 
         <p />
         <a href='user/addreview.aspx?bookid=<%#Eval("bookid")%>'>Add Review</a>
      </td>
     </tr>
     </table>
      
      
      
       </span>
    </div>
  </ItemTemplate>
</asp:DataList>

</asp:Content>

