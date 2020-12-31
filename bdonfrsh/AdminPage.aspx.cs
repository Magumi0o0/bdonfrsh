using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bdonfrsh
{
    public partial class AdminPage : System.Web.UI.Page
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
        }
    }
}