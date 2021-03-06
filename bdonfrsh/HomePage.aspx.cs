﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bdonfrsh.DAL;
namespace bdonfrsh
{
    public partial class HomePage : System.Web.UI.Page
    {
        DataAccessLayer dal;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            int DeptSWId = Convert.ToInt32(Application["swId"]);
            int DeptNWId = Convert.ToInt32(Application["nwId"]);
            int DeptCoId = Convert.ToInt32(Application["coId"]);
            dal = new DataAccessLayer();
        
            var sw = dal.SelectData($"select * from subject where DID = {DeptSWId}");
            sw.Columns.RemoveAt(0);
            sw.Columns.RemoveAt(3);
            grdSoftware.DataSource = sw;
            grdSoftware.DataBind();
          
            var nw = dal.SelectData($"select * from subject where DID = {DeptNWId}");
            nw.Columns.RemoveAt(0);
            nw.Columns.RemoveAt(3);
            grdNetworks.DataSource = nw;
            grdNetworks.DataBind();
          
            var co = dal.SelectData($"select * from subject where DID = {DeptCoId}");
            co.Columns.RemoveAt(0);
            co.Columns.RemoveAt(3);
            grdComputers.DataSource = co;
            grdComputers.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}