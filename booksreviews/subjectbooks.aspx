<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="subjectbooks.aspx.cs" Inherits="subjectbooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Books By Subject </h2>
    <asp:ListView ID="ListView1" runat="server"
         DataSourceID="ObjectDataSource1" GroupItemCount="3">
         <LayoutTemplate>
           <table runat="server">
              <tr id="groupPlaceholder" runat="server" />
           </table>
         </LayoutTemplate>
         <GroupTemplate>
           <tr> <td width="250px" id="itemPlaceholder" runat="server"></td></tr>
         </GroupTemplate>
         <ItemTemplate>
           <td width="250px" align ="center" valign  = "top">
           <a href='showbook.aspx?bookid=<%#Eval("BookId") %>'>
           <img src='images/<%#Eval("BookId")%>_cover.jpg' width='100px'
                height='100px'  alt="Book Cover"  />
           </a>
           <br />
           <h4> <%#Eval("Title") %></h4>
           <p />
           <a href='user/addreview.aspx?bookid=<%#Eval("BookId")%>'>Add Review</a>
           </td>
         </ItemTemplate>
    </asp:ListView>

    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetBooksBySubject" TypeName="BooksDAL">
        <SelectParameters>
            <asp:QueryStringParameter Name="subcode" QueryStringField="subcode" 
                Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>

</asp:Content>

