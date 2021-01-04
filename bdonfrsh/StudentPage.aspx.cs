using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bdonfrsh.DAL;

namespace bdonfrsh
{
    public partial class StudentPage : System.Web.UI.Page
    {
        DataAccessLayer dal;
        protected void Page_Load(object sender, EventArgs e)
        {

            int Deptid = Convert.ToInt32(Session["UserDept"]);
            dal = new DataAccessLayer();
            var subiect = dal.SelectData($"select * from subject where DID = {Deptid}");
            subiect.Columns.RemoveAt(0);
            subiect.Columns.RemoveAt(3);
            grdSubject.DataSource = subiect;
            grdSubject.DataBind();
        }
    }
}