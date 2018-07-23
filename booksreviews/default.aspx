<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="_default"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>About The Site</h2>
<b>BooksReivews.Com </b>is used to post reviews regarding books on differnt subjects. You must register to post reviews on books.

<p />
<center>

    <asp:DataList ID="DataList1" runat="server" DataSourceID="ObjectDataSource1">
      <ItemTemplate>
         <a style="font-size:16pt;font-family:verdana; font-weight:bold"  href='subjectbooks.aspx?subcode=<%#Eval("code")%>'><%#Eval("name") %></a>
         <p />
      </ItemTemplate>
    </asp:DataList>
    <p />
    <img height="250" src="images/hope-house-press-127597.jpg" />" 
   

    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetSubjects" TypeName="BooksDAL"></asp:ObjectDataSource>
</center>
</asp:Content>

