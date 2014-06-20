<%@ Page Language="C#" MasterPageFile="~/site.master" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT [imageurl] FROM [Photos]"></asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Style="position: relative" CellSpacing="5" HorizontalAlign="Center" RepeatColumns="5" RepeatDirection="Horizontal">
        <ItemTemplate>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("imageurl","~/Images/Thumbs/{0}") %>'
                Style="position: relative" PostBackUrl='<%# Eval("imageurl","view.aspx?imageurl={0}") %>' /><br />
            <br />
        </ItemTemplate>
        <ItemStyle HorizontalAlign="Center" />
    </asp:DataList>
</asp:Content>

