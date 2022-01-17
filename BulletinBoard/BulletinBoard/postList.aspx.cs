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
    public partial class postList : System.Web.UI.Page
    {
        string strcon;
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }

        } 
        public void BindGridView()
        {
            strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);
            con.Open();
            cmd = new SqlCommand("select id,title,description,create_user_id,created_at from posts where status=0", con);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            ViewState["dt"] = dt;
            GridView1.DataSource = ViewState["dt"] as DataTable;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "EditButton")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[index];
                Response.Redirect("EditPost.aspx?id=" + row.Cells[0].Text);
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                int id = int.Parse(e.Row.Cells[0].Text);
                foreach (Button button in e.Row.Cells[6].Controls.OfType<Button>())
                {
                    if (button.CommandName == "Delete")
                    {
                        button.Attributes["onclick"] = "if(!confirm('Do you want to delete " + id + "?')){ return false; };";
                    }
                }
            }
        }


        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
          
            strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);
            con.Open();
            string str = GridView1.DataKeys[e.RowIndex].Values["id"].ToString();
            cmd = new SqlCommand("UPDATE posts set status=1 WHERE id = '" + str + "' ", con);
            cmd.ExecuteNonQuery();
            BindGridView();
           
        }

    }
}