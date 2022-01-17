using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace BulletinBoard
{
    public partial class post : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //Get connection string from web.config file  
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            

            SqlCommand cmd = new SqlCommand("insert into posts values (@title,@description,@status,@create_user_id,@updated_user_id,@deleted_user_id,@created_at,@updated_at,@deleted_at)", con);
            cmd.Parameters.AddWithValue("@title", title.Text);
            cmd.Parameters.AddWithValue("@description", txtDesc.Text);
            cmd.Parameters.AddWithValue("@status", 0);
            cmd.Parameters.AddWithValue("@create_user_id", 1);
            cmd.Parameters.AddWithValue("@updated_user_id", 1);
            cmd.Parameters.AddWithValue("@deleted_user_id", 1);
            cmd.Parameters.AddWithValue("@created_at", DateTime.Now);
            cmd.Parameters.AddWithValue("@updated_at", DateTime.Now);
            cmd.Parameters.AddWithValue("@deleted_at", DateTime.Now);
            int m = cmd.ExecuteNonQuery();
            if (m != 0)
            {
                Response.Write("<script>alert('Data inserted!')</script>");
            }

            con.Close();

            Response.Redirect("postList.aspx");

        }
    }
}