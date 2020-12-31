using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bdonfrsh.DAL;

namespace bdonfrsh
{
    public partial class DisplyComment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

            }
        }
        public string GetComments()
        {
            DataAccessLayer dal = new DataAccessLayer();
            string postId = Request.QueryString.Get("PostId").ToString();
            var comments = dal.SelectData($"SELECT * FROM Comment WHERE PID = {postId}");
            for (int i = 0; i < comments.Rows.Count; i++)
            {

                Response.Write("<div class='row'>");
                Response.Write("<div class='col-lg-8'>");
                Response.Write("<div class='media mb-4'>");
                Response.Write("<div class='media-body'>");
                Response.Write("<h5 class='mt-0'>" + comments.Rows[i][2] + "</h5>");
                Response.Write(comments.Rows[i][3]);
            }
            return "";
        }
    }
}