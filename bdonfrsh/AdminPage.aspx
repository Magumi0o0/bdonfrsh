<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="bdonfrsh.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>  Admin Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>
   <div>
    <form id="form1" runat="server">

       

          <div style="text-align:center;font-size:40px">
            <a href="Manage_Student.aspx" >Manage Students</a><br />
          </div>

         <div style="text-align:center;font-size:40px">
            <a href="Manage_Subject.aspx" >Manage Subjects</a><br />
             </div>

         

          <div style="text-align:center;font-size:40px">
            <a href="ManagePosts.aspx" >Manage Posts</a><br /> 
          </div>
         
    </form>
   </div>
</body>
</html>
