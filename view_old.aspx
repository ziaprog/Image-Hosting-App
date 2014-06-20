<%@ Page Language="C#" ValidateRequest="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        string str=Request.QueryString["imageurl"];
        Image1.ImageUrl = "~/Images/" + str;
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
         
</head>
<body>
    <form id="form1" runat="server">


         
     <asp:Image ID="Image1" runat="server" Style="position: relative" />&nbsp;<br />
        <!-- AddThis Button BEGIN -->
        <div class="addthis_toolbox addthis_default_style">
            <a class="addthis_button_compact" href="http://www.addthis.com/bookmark.php?v=250&pub=xa-4b1e8cab048fcf54">
            Share</a> <span class="addthis_separator">|</span> <a class="addthis_button_facebook">
                </a><a class="addthis_button_myspace"></a><a class="addthis_button_google"></a>
            <a class="addthis_button_twitter"></a>
        </div>

        <script src="http://s7.addthis.com/js/250/addthis_widget.js#pub=xa-4b1e8cab048fcf54"
            type="text/javascript"></script>

        <!-- AddThis Button END -->
        <br />
        <br />
        File Info:
        <ul>
            <li>FileName: <a href="http://mywebjpg.com/files/c0gniemofnwvvkpcibgy.jpeg"><b>c0gniemofnwvvkpcibgy.jpeg</b></a></li>
            <li>Rating:
                <img alt="zero stars" src="http://mywebjpg.com/css/no_rating.gif" style="vertical-align: middle;
                    position: relative" />
                ( 0 vote(s) ) </li>
            <li>Height: 300px</li>
            <li>Width: 300px</li>
            <li>File Type: .jpeg</li>
            <li>Mime Type: image/jpeg</li>
            <li>Date Uploaded: Sat November 21, 2009, 3:54:38 am</li>
            <li>File Size: 19.800 Kilobyte (KB)</li>
            <li>File links: <a href="http://mywebjpg.com/links.php?file=c0gniemofnwvvkpcibgy.jpeg">
                Enter links page</a></li>
            <li>Downlaod: <a href="http://mywebjpg.com/download.php?file=c0gniemofnwvvkpcibgy.jpeg">
                Download File</a></li>
        </ul>
        <br />
        <br />
        <div id="title-showi-codes" class="title">
            IMAGE CODES</div>
        <div style="clear: right">
        </div>
        <div id="showi-codes">
            Clickable Thumbnail for Websites:<br />
            <input class="codes1" onclick="select(this);" style="position: relative" type="text"
                value='<a href="http://www.turboimagehost.com/p/2476908/niki_taylor_super_model.jpg.html" target="_blank"><img src="http://s1d2.turboimagehost.com/t/2476908_niki_taylor_super_model.jpg" border="0" alt="Free Image Hosting" /></a>' />
            <br />
            Clickable Thumbnail for Forums (1):<br />
            <input class="codes1" onclick="select(this);" style="position: relative" type="text"
                value="[URL=http://www.turboimagehost.com/p/2476908/niki_taylor_super_model.jpg.html][IMG]http://s1d2.turboimagehost.com/t/2476908_niki_taylor_super_model.jpg[/IMG][/URL]" />
            <br />
            Clickable Thumbnail for Forums (2):<br />
            <input class="codes1" onclick="select(this);" style="position: relative" type="text"
                value="[url=http://www.turboimagehost.com/p/2476908/niki_taylor_super_model.jpg.html][img=http://s1d2.turboimagehost.com/t/2476908_niki_taylor_super_model.jpg][/url]" />
            <br />
            Show image to friends:<br />
            <input class="codes1" onclick="select(this);" style="position: relative" type="text"
                value="http://www.turboimagehost.com/p/2476908/niki_taylor_super_model.jpg.html" />
            <br />
            Link back to us on forums (thanks):<br />
            <input class="codes1" onclick="select(this);" style="position: relative" type="text"
                value="Thanks to TurboImageHost for [URL=http://www.turboimagehost.com]Free Image Hosting[/URL]" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
