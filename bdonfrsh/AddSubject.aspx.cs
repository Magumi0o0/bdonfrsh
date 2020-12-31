using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bdonfrsh.DAL;

namespace bdonfrsh
{
    public partial class AddSubject : System.Web.UI.Page
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
                drDept.DataSource = depts;
                drDept.DataTextField = "Name";
                drDept.DataValueField = "Id";
                drDept.DataBind();

            }
        }

     

        protected void Add_Click(object sender, EventArgs e)
        {
            
            string Name = txtName.Text;
            string Description = txtDescription.Text;
            string TName = txtTname.Text;
            int DeptId = Convert.ToInt32(drDept.Text);
            dal.Open();
            dal.ExecuteCommand($"INSERT INTO subject VALUES('{Name}' , '{Description}' , '{TName}' , {DeptId})");
            dal.Close();
        }
    }
}