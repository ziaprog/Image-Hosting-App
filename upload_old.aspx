<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="upload_old.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>
            <span style="font-size: 16pt">upload - categories - Terms &amp; Conditions-Promote us
                -Contact Us</span></h1>
        <h1>
            Upload Images</h1>
        <tr>
        </tr>
        <td align="center" colspan="2">
        </td>
        <font color="#881144"><b>FreeImageHosting.net</b></font> can help you:
        <tr>
        </tr>
        <td>
        </td>
        <font color="#881144"><b>»</b>Host your Auction Photos</font>
        <td>
        </td>
        <font color="#881144"><b>»</b>Add Images to your Posts</font>
        <tr>
        </tr>
        <td>
        </td>
        <font color="#881144"><b>»</b>Share Pics with your Family</font>
        <td>
        </td>
        <font color="#881144"><b>»</b>Create Photo Galleries</font>
        <tr>
        </tr>
        <td>
        </td>
        <font color="#881144"><b>»</b>Host all your Blog Photos</font>
        <td>
        </td>
        <font color="#881144"><b>»</b>Put Images on MySpace</font><br />
        <br />
        Click the browse button, select a picture on your computer, and click upload<span
            style="color: #333333"> image button.&nbsp;</span><br />
        &nbsp;
        <asp:FileUpload ID="FileUpload1" runat="server" Style="position: relative" />
        <br />
        Filename extensions allowed: <b>gif, jpg, bmp, png</b><br />
        Filesize limit: <b>3,000KB</b><br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="position: relative"
            Text="Upload Image" /><br />
        Tags:
        <asp:TextBox ID="TextBox1" runat="server" Style="position: relative"></asp:TextBox><br />
        Category:
        <asp:DropDownList ID="DropDownList1" runat="server" Style="position: relative">
        </asp:DropDownList><br />
        Thumbnail size:
        <asp:TextBox ID="TextBox2" runat="server" Style="position: relative"></asp:TextBox><br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [imageurl], [id] FROM [Table1]"></asp:SqlDataSource>
        <br />
        <h1>
            &nbsp;</h1>
        <br />
        &nbsp;<!-- AddThis Button BEGIN -->
        <div class="addthis_toolbox addthis_default_style">
            <a class="addthis_button_facebook"></a><a class="addthis_button_myspace"></a><a class="addthis_button_google">
            </a>
            <h2>
                Terms &amp; Conditions</h2>
            ----<br />
            ??.com provides free image hosting and users of this service may upload as many
            images as they wish and can then let others view the images by letting them know
            the url of the image.
            <br />
            <br />
            This service is offered to those looking for personal images &amp; videos hosting.<br />
            <p>
                You may not use any of the images on this site for any purpose without the permission
                of the copyright holder.
            </p>
            <p>
                You must own the copyright, or have permission from the copyright holder for any
                images you upload to this website.
            </p>
            <p>
                You MUST NOT upload any images containing material that is illegal, copyrighted,
                harassment, child pornography, defamatory, promotes racism, hatred, pornography
                or discrimination.
            </p>
        </div>

        <script src="http://s7.addthis.com/js/250/addthis_widget.js#pub=xa-4b1e8cab048fcf54"
            type="text/javascript"></script>

        <!-- AddThis Button END -->
    </div>
    </form>
</body>
</html>
