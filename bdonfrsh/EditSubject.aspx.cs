using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bdonfrsh.DAL;

namespace bdonfrsh
{
    public partial class EditSubject : System.Web.UI.Page
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

            if (!IsPostBack)
            {
                DataAccessLayer dal = new DataAccessLayer();
                int subjectid = Convert.ToInt32(Request.QueryString.Get("Id"));
                var subject = dal.SelectData($"SELECT * FROM subject WHERE Id = {subjectid}");


                Sname.Text = subject.Rows[0][1].ToString();
                description.Text = subject.Rows[0][2].ToString();
                Tname.Text = subject.Rows[0][3].ToString();
               

            }
        }

        protected void btn_Edit_Click(object sender, EventArgs e)
        {
            DataAccessLayer dal = new DataAccessLayer();
            int subjectid = Convert.ToInt32(Request.QueryString.Get("Id"));
            dal.Open();
            dal.ExecuteCommand($"UPDATE subject SET Name = '{ Sname.Text}' , Descreption='{description.Text}'," +
                                           $" TName='{ Tname.Text}'  WHERE Id = {subjectid} ");
            dal.Close();
            Response.Redirect("Manage_Subject.aspx");
        }

        protected void btn_Delete_Click(object sender, EventArgs e)
        {

            DataAccessLayer dal = new DataAccessLayer();
            int subjectid = Convert.ToInt32(Request.QueryString.Get("Id"));
            dal.Open();
            dal.SelectData($"DELETE FROM subject WHERE Id = {subjectid}");
            dal.Close();
            Response.Redirect("Manage_Subject.aspx");
        }
    }
}