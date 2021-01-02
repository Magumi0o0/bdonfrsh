using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bdonfrsh.DAL;

namespace bdonfrsh
{
    public partial class AddNewPost : System.Web.UI.Page
    {
        DataAccessLayer dal;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dal = new DataAccessLayer();
            string Post = TextBox1.Text;
            DateTime CurrentTime = DateTime.Now;
            string sqlFormattedDate = CurrentTime.ToString("yyyy-MM-dd HH:mm:ss.fff");
            dal.Open();
            dal.ExecuteCommand($"INSERT INTO Posts VALUES('{Post}' , '{sqlFormattedDate}' )");
            dal.Close();
        }
    }
}