<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNewPost.aspx.cs" Inherits="bdonfrsh.AddNewPost" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Add Post</title>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body id="page-top">
     <!-- Navigation -->
      <nav class="navbar navbar-inverse">
          <div class="container-fluid">
             <div class="navbar-header">
                <a class="navbar-brand" href="AdminPage.aspx">Technical Computer College</a>
             </div>
              <div class="navbar-header">
                <a class="navbar-brand" href="Manage_Student.aspx">Manage Students</a>
             </div>
                <div class="navbar-header">
                <a class="navbar-brand" href="Manage_Subject.aspx">Manage Subjects</a>
             </div>
                <div class="navbar-header">
                <a class="navbar-brand" href="ManagePosts.aspx">Manage Posts</a>
             </div>
               
          </div>
     </nav>

    <div class="container">
    <form id="form1" runat="server">

        



         <div class="form-group">
              <label  for="post">Write your post</label>
              <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
          </div>

         <div  class="container">
           <asp:Button ID="Button1" class="btn btn-dark" runat="server" OnClick="Button1_Click" Text="Post" />
         </div>
    </form>
   </div>
</body>
</html>
