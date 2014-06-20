<%@ Page Language="C#"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        string str=Request.QueryString["imageurl"];
        StringBuilder sb1=new StringBuilder();
        sb1.Append("<a href=\"http://localhost:49894/creating%20thumbnails%20from%20upload/view.aspx?imageurl=" + str + "\"><img src=\"http://localhost:49894/creating%20thumbnails%20from%20upload/Images/Thumbs/" + str + "\"></a>");
        TextBox1.Text = sb1.ToString();
        
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [photoid], [imageurl], [date], [tags] FROM [Photos] WHERE ([imageurl] = @imageurl)">
            <SelectParameters>
                <asp:QueryStringParameter Name="imageurl" QueryStringField="imageurl" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        UPLOADED IMAGE<br />
        successfully uploaded!<br />
        You can use next codes to show your images to your friends or to use on your blog,
        pages, myspace etc. totally free!&nbsp;<br />
        <br />
        Thumbnail(click to enlarge):<br />
    
    </div>
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
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("imageurl","~/Images/Thumbs/{0}") %>'
                    PostBackUrl='<%# Eval("imageurl","view.aspx?imageurl={0}") %>' Style="position: relative" /><br />
            </ItemTemplate>
        </asp:DataList>Thumbnail for Websites&nbsp;
        <asp:TextBox ID="TextBox1" onfocus = "this.select();" runat="server" Style="position: relative" Width="504px"></asp:TextBox>&nbsp;<br />
        Thumbnail for forums
        <asp:TextBox ID="TextBox3" runat="server" Style="position: relative" Width="512px"></asp:TextBox><br />
        <td>
        </td>
        Show image
        to friends
        <asp:TextBox ID="TextBox2" runat="server" Style="position: relative" Width="488px"></asp:TextBox>
        <br />
        Clickable Thumbnail for Website:<br />
        <input class="codes" onclick="select(this);" size="80" style="position: relative"
            type="text" value='<a href="http://www.turboimagehost.com/p/2476908/niki_taylor_super_model.jpg.html" target="_blank"><img src="http://s1d2.turboimagehost.com/t/2476908_niki_taylor_super_model.jpg" border="0" alt="Free Image Hosting" /></a>' />
        <br />
        Clickable Thumbnail for Forum (1):<br />
        <input class="codes" onclick="select(this);" size="80" style="position: relative"
            type="text" value="[URL=http://www.turboimagehost.com/p/2476908/niki_taylor_super_model.jpg.html][IMG]http://s1d2.turboimagehost.com/t/2476908_niki_taylor_super_model.jpg[/IMG][/URL]" />
        <br />
        Clickable Thumbnail for Forum (2):<br />
        <input class="codes" onclick="select(this);" size="80" style="position: relative"
            type="text" value="[url=http://www.turboimagehost.com/p/2476908/niki_taylor_super_model.jpg.html][img=http://s1d2.turboimagehost.com/t/2476908_niki_taylor_super_model.jpg][/url]" />
        <br />
        <strong><a href="http://www.turboimagehost.com/p/2476908/niki_taylor_super_model.jpg.html"
            target="_blank">Show</a></strong> image to friends:<br />
        <input class="codes" onclick="select(this);" size="80" style="position: relative"
            type="text" value="http://www.turboimagehost.com/p/2476908/niki_taylor_super_model.jpg.html" />
        <br />
        Link back to us on forums (thanks):<br />
        <input class="codes" onclick="select(this);" size="80" style="position: relative"
            type="text" value="Thanks to TurboImageHost for [URL=http://www.turboimagehost.com]Free Image Hosting[/URL]" />
        <br />
        <br />
        <br />
        SELECT photoid FROM Tags WHERE (name LIKE '%acoustic%')<br />
        <br />
        &nbsp;&nbsp;<br />
    </form>
</body>
</html>
