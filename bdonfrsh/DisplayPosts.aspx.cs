using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bdonfrsh.DAL;

namespace bdonfrsh
{
    public partial class DisplayPosts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }

        }

        public string GetPosts()
        {
            

            DataAccessLayer dataAccessLayer = new DataAccessLayer();
            var posts = dataAccessLayer.SelectData("SELECT * FROM POSTS");

            for (int i = 0; i < posts.Rows.Count; i++)
            {
                Response.Write(" <p>Posted On : " + posts.Rows[i][2].ToString() + "</p>");
                Response.Write(" <p class='lead'>" + posts.Rows[i][1].ToString() + "</p>");
                Response.Write(" <a href='DisplyComment.aspx?PostId=" + posts.Rows[i][0].ToString() + "' >Details</a>");
                Response.Write(" <a href='commentstudent.aspx?PostId=" + posts.Rows[i][0].ToString() + "' >Comment</a>");
                Response.Write(" <a href='SavingPosts.aspx?PostId=" + posts.Rows[i][0].ToString() + "' >Save</a>");
                Response.Write(" <hr> </div> </div>");
            }
            return "";
        }
    }
}