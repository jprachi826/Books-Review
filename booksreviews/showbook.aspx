<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="showbook.aspx.cs" Inherits="showbook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:FormView ID="fvBook" runat="server" EnableViewState="false">
        <ItemTemplate>
            <h2>
                <%# Eval("Title") %></h2>
            <table width="100%">
                <tr>
                    <td valign="top">
                        <img src='images/<%#Eval("BookId")%>_cover.jpg' width='150px' height='150px' alt="Book Cover" />
                        <br />
                        <br />
                           </td>
                    <td valign="top">
                        Author(s) :
                        <%#Eval("authors") %>
                        <br />
                        Publisher :
                        <%#Eval("publisher") %>
                        <br />
                        Price :
                        <%# String.Format("{0:#,###}",Eval("price")) %>
                        <br />
                        No. Pages :
                        <%#Eval("nopages") %>
                        <br />
                        Published On :
                        <%#String.Format("{0:dd-MMM-yyyy}", Eval("pubdate"))%>
                        <p />
                        Rating :
                        <%#Eval("RatingString")%>
                        <p />
                        <a href='user/addreview.aspx?bookid=<%#Eval("bookid")%>'>Add Review</a>
                    </td>
             
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>

    <asp:DataList ID="dlReviews" runat="server" Width="100%" EnableViewState="false">
        <HeaderTemplate>
            <h3>Reviews</h3>
        </HeaderTemplate>
        <ItemTemplate>
            <b>Posted By : </b>
            <%#Eval("User.Email")%>
            <b>On : </b>
            <%#Eval("reviewdate") %>
            <br />
            <b>Rating : </b>
            <%# Eval("RatingName") %>
            <br />
            <div>
                <%#Eval("reviewtext") %>
            </div>
        </ItemTemplate>
        <SeparatorTemplate>
            <hr />
        </SeparatorTemplate>
    </asp:DataList>
</asp:Content>
