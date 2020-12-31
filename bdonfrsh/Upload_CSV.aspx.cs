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
        
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void InsertCSVRecords(DataTable csvdt)
        {
            string sqlconn = ConfigurationManager.ConnectionStrings["jf"].ConnectionString;
          SqlConnection  con = new SqlConnection(sqlconn);
             
            SqlBulkCopy objbulk = new SqlBulkCopy(con);
           
            objbulk.DestinationTableName = "Users";
              
            
            objbulk.ColumnMappings.Add("Name", "Name");
            objbulk.ColumnMappings.Add("Last_Name", "Last_Name");
            objbulk.ColumnMappings.Add("Birth", "Birth");
            objbulk.ColumnMappings.Add("E_mail", "E_mail");
            objbulk.ColumnMappings.Add("Pass", "Pass");
            objbulk.ColumnMappings.Add("DID", "DID");

            con.Open();
            objbulk.WriteToServer(csvdt);
            con.Close();
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