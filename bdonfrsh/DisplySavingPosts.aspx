<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplySavingPosts.aspx.cs" Inherits="bdonfrsh.DisplySavingPosts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                <a class="navbar-brand" href="#">Technical Computer College</a>
             </div>
              <div class="navbar-header">
                <a class="navbar-brand" href="DisplayPosts.aspx">DisplayPosts</a>
             </div>
                <div class="navbar-header">
                <a class="navbar-brand" href="DisplySavingPosts.aspx">Display Saving Posts</a>
             </div>
              
          </div>
     </nav>
    <form id="form1" runat="server">
          
        <div class="container">
             <% this.test(); %>
    </div>
    </form>
</body>
</html>
