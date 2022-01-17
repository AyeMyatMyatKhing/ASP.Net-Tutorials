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
    public partial class EditPost : System.Web.UI.Page
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

        private void BindTextBoxvalues()
        {
            strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("select title,description from posts where id = "+id, con);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            txtTitle.Text = dt.Rows[0][0].ToString();
            txtDescription.Text = dt.Rows[0][1].ToString();

        }

        protected void UpdateBtn_Click(object sender, EventArgs e)
        {
            strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("update posts set title = '" + txtTitle.Text + "',description = '" + txtDescription.Text + "' where id = "+ id, con);
            int result = cmd.ExecuteNonQuery();
            if (result == 1)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ShowSuccess", "javascript:alert('Data updated successfully');", true);
            }
            Response.Redirect("postList.aspx");
        }

        protected void CancelUpdateBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("postList.aspx");
        }
    }
}