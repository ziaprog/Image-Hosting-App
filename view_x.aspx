<%@ Page Language="C#" MasterPageFile="~/site.master" Title="Untitled Page" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        ImageButton1.Enabled = false;
        Label1.Visible = false;
        ImageButton2.Visible = false;
        string savepath = "~/Images/";
        string str = Request.QueryString["imageurl"];
        string savename = Server.MapPath(savepath) + str;



        System.Drawing.Image Img = null;
       
            Img = System.Drawing.Image.FromFile(savename);

            if (Img.Width > 728)
            {
                ImageButton1.Enabled = true;
                Label1.Visible = true;
                ImageButton1.Width = 721;
            }
            ImageButton1.ImageUrl = "~/Images/" + str;
        
        
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
                
         string str = Request.QueryString["imageurl"];
        ImageButton1.Visible = false;
        ImageButton2.Visible = true;
        ImageButton2.ImageUrl = "~/Images/" + str;
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        
        ImageButton2.Visible = false;
        ImageButton1.Visible = true;
        string savepath = "~/Images/";
        string str = Request.QueryString["imageurl"];
        string savename = Server.MapPath(savepath) + str;



        System.Drawing.Image Img = null;
        Img = System.Drawing.Image.FromFile(savename);

        if (Img.Width > 728)
        {
            ImageButton1.Width = 721;
        }
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; position: relative; text-align: center">
        <tr>
            <td style="width: 100px">
                <asp:Label style="position: relative" ID="Label1" runat="server" Text="Click on the image to enlarge & shrink " /></td>
        </tr>
    </table>
    <table style="width: 100%; position: relative; text-align: center">
        <tr>
            <td style="width: 100px; height: 48px;">

                <asp:ImageButton ID="ImageButton1" runat="server" Style="position: relative; left: 0px; top: 0px;" OnClick="ImageButton1_Click" />
                <asp:ImageButton ID="ImageButton2" runat="server" Style="position: relative" OnClick="ImageButton2_Click" /><br />
                <!-- AddThis Button BEGIN -->
        <div class="addthis_toolbox addthis_default_style" >
            <a class="addthis_button_compact" href="http://www.addthis.com/bookmark.php?v=250&pub=xa-4b1e8cab048fcf54">
            Share</a> <span class="addthis_separator">|</span> <a class="addthis_button_facebook">
                </a><a class="addthis_button_myspace"></a><a class="addthis_button_google"></a>
            <a class="addthis_button_twitter"></a>
        </div>

        <script src="http://s7.addthis.com/js/250/addthis_widget.js#pub=xa-4b1e8cab048fcf54"
            type="text/javascript"></script>

        <!-- AddThis Button END -->
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
        </tr>
    </table>

</asp:Content>

