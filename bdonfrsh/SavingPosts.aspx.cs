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
                string postId = Request.QueryString.Get("PostId").ToString();
                string studentid = Session["UserId"].ToString();
                dal.Open();
                dal.ExecuteCommand($"INSERT INTO SavingPost (PID,suID,SPDate) VALUES("+postId+" , "+studentid+ ",CURRENT_TIMESTAMP)");
                dal.Close();

            }
        }

       
    }
}