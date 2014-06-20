<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {

        String str = Request.QueryString["imageurl"];
        Image1.ImageUrl = "~/Images/" + str;
        


    }

 
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%; position: relative;">
            <tr>
                <td style="width: 100px; height: 48px; text-align: center">
                    <img src="css/banner.jpg" style="position: relative; border-right: gray thin solid; border-top: gray thin solid; border-left: gray thin solid; border-bottom: gray thin solid;" /></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 48px; text-align: center;">
                    &nbsp;<asp:Image ID="Image1" runat="server" Style="position: relative" ImageAlign="Middle" /></td>
            </tr>
            <tr>
                <td style="width: 100px; text-align: center;">
                    This file is hosted by <b>Photo Tube</b><br />
                    Upload your photos to our dedicated servers for free
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
