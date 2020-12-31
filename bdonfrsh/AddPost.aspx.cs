using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bdonfrsh.DAL;

namespace bdonfrsh
{
    public partial class AddPost : System.Web.UI.Page
    {
        DataAccessLayer dal;
        protected void Page_Load(object sender, EventArgs e)
        {
            dal = new DataAccessLayer();
          

                var post = dal.SelectData($"select * FROM Posts");
                grdDisplyPost.DataSource = post;
                grdDisplyPost.DataBind();
                Session["POSTID"] = post.Rows[0][0];

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
           
            string Post = txtPost.Text;
            DateTime CurrentTime = DateTime.Now;
            string sqlFormattedDate = CurrentTime.ToString("yyyy-MM-dd HH:mm:ss.fff");
            dal.Open();
            dal.ExecuteCommand($"INSERT INTO Posts VALUES('{Post}' , '{sqlFormattedDate}' )");
            dal.Close();
        }

        

        protected void drdDisplyPost_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btndel_Click(object sender, EventArgs e)
        {

            int postid =Convert.ToInt32( Session["POSTID"].ToString());
            dal.Open();
            dal.SelectData($"DELETE FROM Posts  WHERE Id = {postid}");
            dal.Close();
            
        }
    }
}


