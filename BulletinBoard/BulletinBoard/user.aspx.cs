using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace BulletinBoard
{
    public partial class user : System.Web.UI.Page
    {
        string strcon;
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);
            con.Open();
            int len = imageUpload.PostedFile.ContentLength;
            byte[] pic = new byte[len + 1];
            imageUpload.PostedFile.InputStream.Read(pic, 0, len);
            DateTime dateOfBirth = Convert.ToDateTime(txtDob.Text);
            if(txtName.Text == "" || txtEmail.Text == "" || txtPwd.Text == "" || txtPwd.Text == "" || DropDownList1.SelectedItem.Value == "" || txtPhone.Text == "" || txtAddr.Text == "")
            {
                Label11.Text = "Please enter all fields";
                Label11.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                cmd = new SqlCommand("insert into users values (@name,@email,@password,@profile,@type,@phone,@address,@dob,@create_user_id,@updated_user_id,@deleted_user_id,@created_at,@updated_at,@deleted_at,@is_delete)", con);
                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@password", txtPwd.Text);
                cmd.Parameters.AddWithValue("@profile", pic);
                cmd.Parameters.AddWithValue("@type", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@phone", txtPhone.Text);
                cmd.Parameters.AddWithValue("@address", txtAddr.Text);
                cmd.Parameters.AddWithValue("@dob", dateOfBirth);
                cmd.Parameters.AddWithValue("@create_user_id", 1);
                cmd.Parameters.AddWithValue("@updated_user_id", 1);
                cmd.Parameters.AddWithValue("@deleted_user_id", 1);
                cmd.Parameters.AddWithValue("@created_at", DateTime.Now);
                cmd.Parameters.AddWithValue("@updated_at", DateTime.Now);
                cmd.Parameters.AddWithValue("@deleted_at", DateTime.Now);
                cmd.Parameters.AddWithValue("@is_delete", 0);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("userList.aspx");
            }

        }
    }
}