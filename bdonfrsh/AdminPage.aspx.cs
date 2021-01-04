using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bdonfrsh.DAL;

namespace bdonfrsh
{
    public partial class AdminPage : System.Web.UI.Page
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
        }

        public string GetPosts()
        {


            DataAccessLayer dal = new DataAccessLayer();
            var posts = dal.SelectData("SELECT * FROM POSTS");

            for (int i = 0; i < posts.Rows.Count; i++)
            {
                int postId = Convert.ToInt32(posts.Rows[i][0]);

                Response.Write("<div class='row'> <div class='col-lg-8'>");
                Response.Write(" <p>Posted On : " + posts.Rows[i][2].ToString() + "</p>");
                Response.Write(" <p class='lead'>" + posts.Rows[i][1].ToString() + "</p>");
                Response.Write(" <hr> </div> </div> ");


                var comments = dal.SelectData($"SELECT * FROM Comment WHERE PID = {postId}");
                for (int j = 0; j < comments.Rows.Count; j++)
                {
                    Response.Write(" <div class='media mb-4'> <div class='media-body'>");

                    Response.Write("<h5 class='mt-0'>" + comments.Rows[j][2] + "</h5>");
                    Response.Write(comments.Rows[j][3]);
                    Response.Write("   <hr></div> </div>");
                }

            }
            return "";
        }
    }
}