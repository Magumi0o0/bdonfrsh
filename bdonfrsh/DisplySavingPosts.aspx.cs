﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bdonfrsh.DAL;
namespace bdonfrsh
{
    public partial class DisplySavingPosts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        public string test()
        {
            DataAccessLayer dal = new DataAccessLayer();
          
            string studentid = Session["UserId"].ToString();
            var saving = dal.SelectData($"SELECT * FROM SavingPost WHERE suID ={studentid} ");

            for (int i = 0; i < saving.Rows.Count; i++)
            {
                int postsId = Convert.ToInt32(saving.Rows[i][0]);
                Response.Write("<div class='row'>");
                Response.Write("<div class='col-lg-8'>");
                Response.Write("<div class='media mb-4'>");
                Response.Write("<div class='media-body'>");
                Response.Write("<h5 class='mt-0'>" + saving.Rows[i][3] + "</h5>");

                var posts = dal.SelectData($"SELECT * FROM Posts WHERE ID = {postsId}");
                for (int j = 0; j < posts.Rows.Count; j++)
                {
                    Response.Write(" <div class='media mb-4'> <div class='media-body'>");

                    Response.Write( posts.Rows[j][1] );
                 
                  
                }

            }
            return "";
        }
    }
}