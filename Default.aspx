<%@ Page Language="C#" MasterPageFile="~/site.master" Title="Untitled Page" %>
<%@ Import Namespace="System.Drawing" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.IO" %>
<script runat="server">

    string OriPath;
    string ImageName;
    public Size NewImageSize(int OriginalHeight, int OriginalWidth, double FormatSize)
    {
        Size NewSize; double tempval;

        if (OriginalHeight > FormatSize || OriginalWidth > FormatSize)
        {
            if (OriginalHeight > OriginalWidth)
                tempval = FormatSize / Convert.ToDouble(OriginalHeight);
            else
                tempval = FormatSize / Convert.ToDouble(OriginalWidth);

            NewSize = new Size(Convert.ToInt32(tempval * OriginalWidth), Convert.ToInt32(tempval * OriginalHeight));
        }
        else
            NewSize = new Size(OriginalWidth, OriginalHeight); return NewSize;
    }
    protected void Page_Load(object sender, EventArgs e)
    {






    }


    protected void Button1_Click(object sender, EventArgs e)
    {

        if (FileUpload1.HasFile)
        {
           
            //generate random number
            Random rnd = new Random();
            int rndnum = rnd.Next();


            //get extension
            string ext = Path.GetExtension(FileUpload1.FileName);


            string savepath = "~/Images/";
            string filename = rndnum.ToString() + ext;
            string savename = Server.MapPath(savepath) + filename;
            FileUpload1.SaveAs(savename);

            //load the original image
            System.Drawing.Image Img = null;
            Img = System.Drawing.Image.FromFile(savename);
            //call NewImageSize function to calculate new height and width
            Size ThumbNailSize = NewImageSize(Img.Height, Img.Width, 150);
            // create new instance of image
            System.Drawing.Image Imgthumb = null;
            Imgthumb = Img.GetThumbnailImage(ThumbNailSize.Width, ThumbNailSize.Height, null, new IntPtr());
            string tsavepath = "~/Images/Thumbs/";
            string thumb = Server.MapPath(tsavepath) + filename;
            Imgthumb.Save(thumb);

            //create connection and insert filename into database
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Insert into Photos (imageurl,date) values(@imageurl,@date)");
            cmd.Connection = conn;


            cmd.Parameters.Add("@imageurl", SqlDbType.VarChar, 300);
            cmd.Parameters.Add("@date", SqlDbType.DateTime);

            cmd.Parameters["@imageurl"].Value = filename;
            cmd.Parameters["@date"].Value = DateTime.Now;

            cmd.ExecuteNonQuery();

            conn.Close();

            Response.Redirect("links.aspx?imageurl=" + filename);

        }
    }
       

</script>

<%-- Add content controls here --%>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    &nbsp;<br /><div id="about"> We provide <strong>free image hosting</strong> and users of this service may upload as many images as they wish and can then let others view the images by letting them know the url of the image. 
</div>
    <br />
    <br />
    <table style="position: relative; width: 100%;">
        <tr>
            <td style="width: 781px; text-align: center; height: 9px; vertical-align: top;">
                <span style="font-size: 16pt"><span>
                    Upload Image<br />
                </span>
                    <br />
                </span>
                Click the browse button, select a picture on your computer, 
                <br />
                and click upload<span
                    style="color: #333333"> image button.&nbsp;<br />
                </span>
                <br />
                &nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server" Style="position: relative" />
                <br />
                <br />
                Filename extensions allowed: <b>gif, jpg, bmp, png</b><br />
                Filesize limit: <b>3,000KB</b><br />
                <br />               
                <asp:Button ID="Button1" runat="server" Style="position: relative"
                    Text="Upload Image" OnClick="Button1_Click" OnClientClick ="message()" /><br />
                     <div id="Message" style="display :none;"> Uploading please wait..</div>
                <br />
                <br />
            </td>
            <td style="width: 300px; height: 9px;">
                <img src="css/yahoo-ad.jpg" style="position: relative" /><br />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
