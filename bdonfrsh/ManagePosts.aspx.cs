using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bdonfrsh.DAL;

namespace bdonfrsh
{
    public partial class ManagePosts : System.Web.UI.Page
    {
        DataAccessLayer dal;
        protected void Page_Load(object sender, EventArgs e)
        {
            int adminId = Convert.ToInt32(Application["adId"]);
            int? sessionId = Convert.ToInt32(Session["UserDept"]);
            if (sessionId == null || adminId != sessionId)
            {
                Response.Redirect("HomePage.aspx");
                return;
            }

            if (!IsPostBack)
            {
                dal = new DataAccessLayer();
               
                var post = dal.SelectData($"select * FROM Posts");
                grdpost.DataSource = post;
                grdpost.DataBind();
                Session["POSTID"] = post.Rows[0][0];

            }
        }

        protected void grdpost_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Manage")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = grdpost.Rows[rowIndex];
                var postid = Convert.ToInt32(row.Cells[1].Text);
                Response.Redirect($"DeletePost.aspx?Id={postid}");
            }
        }
        protected void grdpost_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddNewPost.aspx");
        }
    }
}