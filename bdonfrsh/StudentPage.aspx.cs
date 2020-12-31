using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bdonfrsh
{
    public partial class StudentPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int studentId = Convert.ToInt32(Application["stId"]);
            int? sessionId = Convert.ToInt32(Session["UserDept"]);
            if (sessionId == null || studentId != sessionId)
            {
                Response.Redirect("HomePage.aspx");
                return;
            }
        }
    }
}