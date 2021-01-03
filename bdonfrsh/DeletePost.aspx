<%@ Page Language="C#" EnableEventValidation="true" AutoEventWireup="true" CodeBehind="DeletePost.aspx.cs" Inherits="bdonfrsh.DeletePost" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Delete Post</title>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>

<body>
     <div class="container">
    <form id="form1" runat="server">
        
         <div class="form-group">
             <label for="post">The Post:</label>
              <asp:TextBox ID="txtPost" class="form-control"  runat="server"></asp:TextBox>
         </div>
         <div class="form-group">
              <label for="dpost">Post Date :</label>
              <asp:TextBox ID="TxtDatePost" class="form-control" runat="server"></asp:TextBox>
         </div>
         <div  class="container">
           <asp:Button ID="btnDelete"  class="btn btn-dark" runat="server" Text="Delete" OnClick="btnDelete_Click" />
         </div>
    </form>
  </div>
</body>
</html>
