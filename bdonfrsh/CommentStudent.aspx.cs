using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bdonfrsh.DAL;
namespace bdonfrsh
{
    public partial class commentstudent : System.Web.UI.Page
    {
        DataAccessLayer dal;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        

        protected void btncomment_Click(object sender, EventArgs e)
        {
            dal = new DataAccessLayer();
            string postId = Request.QueryString.Get("PostId").ToString();
            string studentid = Session["UserName"].ToString();
            string comment = txtcomment.Text;
            DateTime CurrentTime = DateTime.Now;
            string sqlFormattedDate = CurrentTime.ToString("yyyy-MM-dd HH:mm:ss.fff");

            dal.Open();
            dal.ExecuteCommand($"INSERT INTO Comment VALUES('{postId}' , '{studentid}' , '{comment}', '{sqlFormattedDate}')");
            dal.Close();

            Response.Redirect("DisplayPosts.aspx");
        }

       


    }
}