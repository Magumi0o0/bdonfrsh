using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bdonfrsh.DAL;

namespace bdonfrsh
{
    public partial class AddStudent : System.Web.UI.Page
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

            dal = new DataAccessLayer();
            if (!IsPostBack)
            {
               
                var depts = dal.SelectData("Select * from Depts Where Name <> 'Admin'");
                drlDept.DataSource = depts;
                drlDept.DataTextField = "Name";
                drlDept.DataValueField = "Id";
                drlDept.DataBind();
            }
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            string UserName = Name.Text;
            string LastName = txtLastName.Text;
            string Birth = txtBirth.Text;
            string Email = txtEmail.Text;
            string Password = Pass.Text;
            int DeptId = Convert.ToInt32(drlDept.Text);
            dal.Open();
            dal.ExecuteCommand($"INSERT INTO USERS VALUES('{UserName}' , '{LastName}' , '{Birth}' , '{Email}' , '{Password}', {DeptId})");
            dal.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void UploadCSV_Click(object sender, EventArgs e)
        {
            Response.Redirect("Upload_CSV.aspx");
        }
    }
}