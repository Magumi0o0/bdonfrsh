using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bdonfrsh.DAL;

namespace bdonfrsh
{
    public partial class DeletePost : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            int adminId = Convert.ToInt32(Application["adId"]);
            int? sessionId = Convert.ToInt32(Session["UserDept"]);
            if (sessionId == null || adminId != sessionId)
            {
                Response.Redirect("HomePage.aspx");
                return;
            }

           
                DataAccessLayer dal = new DataAccessLayer();
                int postid = Convert.ToInt32(Request.QueryString.Get("Id"));
                var post = dal.SelectData($"SELECT * FROM Posts WHERE Id = {postid}");


                txtPost.Text = post.Rows[0][1].ToString();
                TxtDatePost.Text = post.Rows[0][2].ToString();
              

            
        }

      
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            DataAccessLayer dal = new DataAccessLayer();
            int postid = Convert.ToInt32(Request.QueryString.Get("Id"));
            dal.Open();
            dal.SelectData($"DELETE FROM Posts WHERE Id = {postid}");
            dal.Close();
            Response.Redirect("AddNewPost.aspx");
        }
    }
}