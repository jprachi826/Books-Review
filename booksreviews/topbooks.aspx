<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="topbooks.aspx.cs" Inherits="topbooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Most Popular Books </h2>

<asp:DataList ID="dlBooks" runat="server" DataSourceId ="ObjectDataSource1">
  <ItemTemplate>
    <div class="book">
    <table>
     <tr>
      <td valign="top">
      <a href='showbook.aspx?bookid=<%#Eval("BookId") %>'>
      <img src='images/<%#Eval("BookId")%>_cover.jpg' width='100px' height='100px'  alt="Book Cover"  /> </a>
      </td>
      <td valign="top">
         Title : <b><%#Eval("Title") %> </b>
         <br />
         Author(s) : <%#Eval("Authors") %> 
         <br />
         Publisher : <%#Eval("Publisher") %> 
         <br />
         Price : <%# String.Format("{0:#,###}",Eval("Price")) %> 
         <br />
         No. Pages : <%#Eval("NoPages") %> 
         <br />
         Published On : <%#String.Format("{0:dd-MMM-yyyy}", Eval("Pubdate"))%> 
         <br />
         Rating : <%#Eval("RatingString")%> 
         <p />
         <a href='user/addreview.aspx?bookid=<%#Eval("bookid")%>'>Add Review</a>
      </td>
     </tr>
     </table>
      
      
      
       </span>
    </div>
  </ItemTemplate>
</asp:DataList>



<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetTopRatedBooks" TypeName="BooksDAL"></asp:ObjectDataSource>


</asp:Content>

