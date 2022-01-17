using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace BulletinBoard
{
    public partial class loginForm : System.Web.UI.Page
    {
        string constr;
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            constr = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(constr);
            cmd = new SqlCommand("select * from users where email=@email and password=@password", con);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@password", txtpwd.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();

            if (dt.Rows.Count > 0)
            {
                Response.Redirect("postList.aspx");
            }
            else
            {
                Label3.Text = "Your username and password is incorrect";
                Label3.ForeColor = System.Drawing.Color.Red;
            }

        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("loginForm.aspx");
        }

       
    }
}