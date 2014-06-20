using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Drawing;
using System.Data;

public partial class _Default : System.Web.UI.Page 
{
    string OriPath;
    string ImageName;
    public Size NewImageSize(int OriginalHeight, int OriginalWidth, double FormatSize)
    {
        Size NewSize; double tempval;

        if (OriginalHeight > FormatSize && OriginalWidth > FormatSize)
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
            Button1.Text = "uploading";
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
            Image Img = null;
            Img = Image.FromFile(savename);
            //call NewImageSize function to calculate new height and width
            Size ThumbNailSize = NewImageSize(Img.Height, Img.Width, 200);
            // create new instance of image
            Image Imgthumb = null;
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
       


    }



