using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bdonfrsh.DAL;

namespace bdonfrsh
{
    public partial class SavingPosts : System.Web.UI.Page
    {
        DataAccessLayer dal;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dal = new DataAccessLayer();
                string postId = Session["POSTID"].ToString();
                string studentid = Session["UserId"].ToString();
                DateTime CurrentTime = DateTime.Now;
                string sqlFormattedDate = CurrentTime.ToString("yyyy-MM-dd HH:mm:ss.fff");
                dal.Open();
                dal.ExecuteCommand($"INSERT INTO SavingPost VALUES('{postId}' , '{studentid}' , {sqlFormattedDate})");
                dal.Close();
            }
        }
    }
}