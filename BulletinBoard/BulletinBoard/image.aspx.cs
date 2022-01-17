using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;

namespace BulletinBoard
{
    public partial class image : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("select profile from users where id = '" + Request.QueryString["id"] + "'", con);
            MemoryStream stream = new MemoryStream();
            byte[] image = (byte[])cmd.ExecuteScalar();
            stream.Write(image, 0, image.Length);
            Bitmap bitmap = new Bitmap(stream);
            Response.ContentType = "image/png";
            bitmap.Save(Response.OutputStream, ImageFormat.Png);
            stream.Close();
        }
    }
}