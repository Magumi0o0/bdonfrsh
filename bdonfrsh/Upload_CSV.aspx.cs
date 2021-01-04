using System;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bdonfrsh.DAL;

namespace bdonfrsh
{
    public partial class Upload_CSV : System.Web.UI.Page
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


        private void InsertCSVRecords(DataTable csvdt)
        {
            string sqlconn = ConfigurationManager.ConnectionStrings["jf"].ConnectionString;
            SqlConnection con = new SqlConnection(sqlconn);
            SqlCommand comm = new SqlCommand();
            comm.Connection = con;
            DataTableReader reader = csvdt.CreateDataReader();
            try
            {
                while (reader.Read())
                {
                    String Name = reader.GetString(0);
                    String Last_Name = reader.GetString(1);
                    String Birth = reader.GetString(2);
                    String E_mail = reader.GetString(3);
                    String pass = reader.GetString(4);
                    int DID = Convert.ToInt32(drlDept.SelectedValue);
                    comm.CommandText = "INSERT INTO Users (Name,Last_Name,Birth,E_mail,Pass,DID) VALUES('" + Name + "','" + Last_Name + "','" + Birth + "','" + E_mail + "','" + pass + "'," + DID + ")";
                    con.Open();
                    comm.ExecuteNonQuery();
                    con.Close();
                }
                message.Text = "students added successfuly";
            }catch(Exception ex) { message.Text = ex.Message; }
        }
        protected void btnUpload_Click(object sender, EventArgs e)
        {

            
            DataTable tblcsv = new DataTable();

            tblcsv.Columns.Add("Name");
            tblcsv.Columns.Add("Last_Name");
            tblcsv.Columns.Add("Birth");
            tblcsv.Columns.Add("E_mail");
            tblcsv.Columns.Add("Pass");
            tblcsv.Columns.Add("DID");
           

            string CSVFilePath = Server.MapPath(FileUpload1.FileName);


            string ReadCSV = File.ReadAllText(CSVFilePath);

            foreach (string csvRow in ReadCSV.Split('\n'))
            {
                if (!string.IsNullOrEmpty(csvRow))
                {
                    tblcsv.Rows.Add();
                    int count = 0;
                    foreach (string FileRec in csvRow.Split(';'))
                    {
                        tblcsv.Rows[tblcsv.Rows.Count - 1][count] = FileRec;
                        count++;
                    }
                }
            }
            InsertCSVRecords(tblcsv);

        }

        
    }
    
}