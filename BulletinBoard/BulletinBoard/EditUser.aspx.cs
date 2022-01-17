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
    public partial class EditUser : System.Web.UI.Page
    {
        string strcon;
        SqlConnection con;
        SqlCommand cmd;
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = int.Parse(Request.QueryString["id"].ToString());
            if (!IsPostBack)
            {
                BindTextBoxvalues();
            }
        }

        public void BindTextBoxvalues()
        {
            strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("select name,email,phone,dob,address from users where id = " + id, con);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            txtname.Text = dt.Rows[0][0].ToString();
            txtemail.Text = dt.Rows[0][1].ToString();
            txtphone.Text = dt.Rows[0][2].ToString();
            txtdob.Text = dt.Rows[0][3].ToString();
            txtaddr.Text = dt.Rows[0][4].ToString();
        }

        protected void btnconfirm_Click(object sender, EventArgs e)
        {
            strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);
            con.Open();
            int len = FileUpload1.PostedFile.ContentLength;
            byte[] pic = new byte[len + 1];
            FileUpload1.PostedFile.InputStream.Read(pic, 0, len);
            DateTime dateOfBirth = Convert.ToDateTime(txtdob.Text);
            SqlCommand cmd = new SqlCommand("update users set name = '" + txtname.Text + "',email = '" + txtemail.Text + "',phone = '" + txtphone.Text + "',dob = '" + dateOfBirth + "',address = '" + txtaddr.Text + "',profile = '" + pic+ "'  where id = " + id, con);
            int result = cmd.ExecuteNonQuery();
            if (result == 1)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ShowSuccess", "javascript:alert('Data updated successfully');", true);
            }
            Response.Redirect("userList.aspx");
        }
    }
}