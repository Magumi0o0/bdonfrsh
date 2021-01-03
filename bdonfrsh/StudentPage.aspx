<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentPage.aspx.cs" Inherits="bdonfrsh.StudentPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>tcc</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body >
    <form id="form1" runat="server">
       
            
          <div style="text-align:center;font-size:40px">
             
            <a href="DisplayPosts.aspx" >DisplayPosts</a><br />
        </div>
          <div style="text-align:center;font-size:40px">
             
            <a href="DisplySavingPosts.aspx" >Display Saving Posts</a><br />
        </div>

        <section id="subject">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 mx-auto">
          <h2>Your Subjects</h2>
            <center style="padding-top:50px">
          <asp:GridView ID="grdSubject" runat="server" >
         </asp:GridView>
            </center>
        </div>
      </div>
    </div>
  </section>
    </form>
</body>
</html>
