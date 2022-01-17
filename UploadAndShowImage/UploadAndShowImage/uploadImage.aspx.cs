using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UploadAndShowImage
{
    public partial class uploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String _Path = String.Empty;
            if (FileUpload1.HasFile)
            {

                _Path = Server.MapPath("~/pic/" + FileUpload1.FileName);
                FileUpload1.PostedFile.SaveAs(_Path);
            }
            Image1.Attributes.Add("style", "display:none");
            Image1.ImageUrl = "~/pic/" + FileUpload1.FileName;
        }
    }
}