<%@ Page Language="C#" MasterPageFile="~/site.master" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; position: relative; text-align: center">
        <tr>
            <td style="width: 100px">
                <strong><em>Image Successfully Uploaded.</em>&nbsp; </strong>
            </td>
        </tr>
        <tr>
            <td style="width: 100%">
                You can use next codes to show your images to your friends or to use on your blog,
                pages, myspace etc. totally free!&nbsp;<br />
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                Thumbnail(click to enlarge):<br />
                <asp:DataList ID="DataList1" runat="server" DataKeyField="photoid" DataSourceID="SqlDataSource1"
                    HorizontalAlign="Center" Style="position: relative">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("imageurl","~/Images/Thumbs/{0}") %>'
                            PostBackUrl='<%# Eval("imageurl","view.aspx?imageurl={0}") %>' Style="position: relative" /><br />
                    </ItemTemplate>
                </asp:DataList></td>
        </tr>
        <tr>
            <td style="width: 100px">
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
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT [photoid], [imageurl], [date], [tags] FROM [Photos] WHERE ([imageurl] = @imageurl)">
        <SelectParameters>
            <asp:QueryStringParameter Name="imageurl" QueryStringField="imageurl" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

