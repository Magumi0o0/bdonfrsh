<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="bdonfrsh.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>  Admin Page</title>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <style>
            body {
                   margin: 0;
                   font-family: "Lato", sans-serif;
                 }

           .sidebar {
                      margin: 0;
                      padding: 0;
                      width: 200px;
                      background-color: #f1f1f1;
                      position: fixed;
                      height: 100%;
                      overflow: auto;
                     }

           .sidebar a {
                        display: block;
                        color: black;
                        padding: 16px;
                        text-decoration: none;
                       }
 
            .sidebar a.active {
                                background-color: #787878 ;
                                 color: white;
                              }

            .sidebar a:hover:not(.active) {
                                            background-color: #555;
                                            color: white;
                                          }

             div.content {
                            margin-left: 200px;
                            padding: 1px 16px;
                            height: 1000px;
                         }

              @media screen and (max-width: 700px) {
                                                      .sidebar {
                                                                  width: 100%;
                                                                  height: auto;
                                                                  position: relative;
                                                                }
                                                      .sidebar a {float: left;}
                                                       div.content {margin-left: 0;}
                                                    }

              @media screen and (max-width: 400px) {
                                                     .sidebar a {
                                                                  text-align: center;
                                                                   float: none;
                                                                 }
                                                    }
        </style>
</head>


<body>
   <div>
    <form id="form1" runat="server"> 
      <div class="sidebar">
        <a class="active" href="Manage_Student.aspx">Manage Students</a>
        <a href="Manage_Subject.aspx">Manage Subjects</a>
        <a href="ManagePosts.aspx">Manage Posts</a>
  <ul class="nav navbar-nav navbar-right">
      <li><a class=""input-group mb-3" href="Login.aspx" >   <button class="btn btn-dark"" type="button"> Loge Out</button></li>
    </ul>
      </div>
    </form>
  </div>
 </body>
</html>
