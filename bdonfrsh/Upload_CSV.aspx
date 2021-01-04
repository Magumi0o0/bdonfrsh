<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload_CSV.aspx.cs" Inherits="bdonfrsh.Upload_CSV" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Add Student</title>
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

            <asp:DropDownList ID="drlDept" class="form-control" runat="server" >
        </asp:DropDownList>
             </div>
            <div  class="container">
            <asp:FileUpload ID="FileUpload1" runat="server" />
           </div>
           <div  class="container">
                <asp:Button ID="btnUpload" class="btn btn-dark" runat="server" Text="Upload" OnClick="btnUpload_Click" />
           </div>
            <div class="form-group">
                <asp:Label ID="message" runat="server" ForeColor="Black" />
            </div>
        
    </form>
        </div>
</body>
</html>
