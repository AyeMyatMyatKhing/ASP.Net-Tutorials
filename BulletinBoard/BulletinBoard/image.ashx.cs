using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;

namespace BulletinBoard
{
    /// <summary>
    /// Summary description for image1
    /// </summary>
    public class image1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            //storing the querystring value that comes from Default aspx page  
            string id = context.Request.QueryString["id"].ToString();
            string constr = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("select profile from users where id=" + id, con);
            //retrieving the images on the basis of id of uploaded  
            // images, by using the query sting values which comes from Defaut.aspx page  
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            context.Response.BinaryWrite((Byte[])dr[0]);
            context.Response.End();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}