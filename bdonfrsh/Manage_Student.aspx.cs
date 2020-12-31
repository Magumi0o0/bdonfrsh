using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bdonfrsh.DAL;

namespace bdonfrsh
{
    public partial class Manage : System.Web.UI.Page
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
                var students = dal.SelectData($"select Users.Id , Users.Name , Users.Last_Name, Users.Birth , Users.E_mail , Users.Pass ," +
                                                          $" Depts.[Name] from Users , Depts where Users.DID = Depts.Id And DID <>  {adminID}");
                grdDisplayStudents.DataSource = students;
                grdDisplayStudents.DataBind();

            }
        }

        protected void grdDisplayStudents_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Manage")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = grdDisplayStudents.Rows[rowIndex];
                var studentId = Convert.ToInt32(row.Cells[1].Text);
                Response.Redirect($"EditStudent.aspx?Id={studentId}");
            }
        }
       

        protected void btnAddNewStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddStudent.aspx");
        }

        protected void grdDisplayStudents_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}