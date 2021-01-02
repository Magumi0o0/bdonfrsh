using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bdonfrsh.DAL;

namespace bdonfrsh
{
    public partial class EditStudent : System.Web.UI.Page
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
                int studentId = Convert.ToInt32(Request.QueryString.Get("Id"));
                var student = dal.SelectData($"SELECT * FROM Users WHERE Id = {studentId}");


                    txtname .Text = student.Rows[0][1].ToString();
                    txtLastname.Text = student.Rows[0][2].ToString();
                    birthday.Value = student.Rows[0][3].ToString();
                    txtEmail.Text = student.Rows[0][4].ToString();
                    txtpass.Text = student.Rows[0][5].ToString();
                
            }
        }
        
        protected void btn_Edit_Click(object sender, EventArgs e)
        {
            DataAccessLayer dal = new DataAccessLayer();
            int studentId = Convert.ToInt32(Request.QueryString.Get("Id"));
            dal.Open();
            dal.ExecuteCommand($"UPDATE USERS SET Name = '{txtname.Text}' , Last_Name='{txtLastname.Text}',Birth='{ birthday.Value}', E_mail =  '{txtEmail.Text}' ," +
                                           $" Pass = '{txtpass.Text}'  WHERE Id = {studentId} ");
            dal.Close();
            Response.Redirect("Manage_Student.aspx");
        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {

            DataAccessLayer dal = new DataAccessLayer();
            int studentId = Convert.ToInt32(Request.QueryString.Get("Id"));
            dal.Open();
            dal.SelectData($"DELETE FROM USERS WHERE Id = {studentId}");
            dal.Close();
            Response.Redirect("Manage_Student.aspx");
        }
    }
}