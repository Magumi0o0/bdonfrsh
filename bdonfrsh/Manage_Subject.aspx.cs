using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bdonfrsh.DAL;

namespace bdonfrsh
{
    public partial class Manage_Subject : System.Web.UI.Page
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
                int adminID = Convert.ToInt32(Application["adId"]);
                var subject = dal.SelectData($"select subject.Id , subject.Name , subject.Descreption, subject.TName ," +
                                                          $" Depts.[Name] from subject , Depts where subject.DID = Depts.Id And DID <>  {adminID}");
                grdDisplySubject.DataSource = subject;
                grdDisplySubject.DataBind();

            }
        }

        protected void grdDisplaySubjets_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Manage")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = grdDisplySubject.Rows[rowIndex];
                var subjectid = Convert.ToInt32(row.Cells[1].Text);
                Response.Redirect($"EditSubject.aspx?Id={subjectid}");
            }
        }

       

       

        protected void grdDisplaySubjets_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnAddNewSubject_Click1(object sender, EventArgs e)
        {
            Response.Redirect("AddSubject.aspx");

        }
    }
}