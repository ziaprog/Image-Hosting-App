<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" Style="position: relative"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Style="position: relative" Text="Button" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [photoid], [imageurl], [date], [tags] FROM [Photos] WHERE ([tags] LIKE '%' + @tags + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="tags" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="photoid" DataSourceID="SqlDataSource1"
            Style="position: relative">
            <ItemTemplate>
                photoid:
                <asp:Label ID="photoidLabel" runat="server" Text='<%# Eval("photoid") %>'></asp:Label><br />
                imageurl:
                <asp:Label ID="imageurlLabel" runat="server" Text='<%# Eval("imageurl") %>'></asp:Label><br />
                date:
                <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>'></asp:Label><br />
                tags:
                <asp:Label ID="tagsLabel" runat="server" Text='<%# Eval("tags") %>'></asp:Label><br />
                <br />
            </ItemTemplate>
        </asp:DataList></div>
    </form>
</body>
</html>
