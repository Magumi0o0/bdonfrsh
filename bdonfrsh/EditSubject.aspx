<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditSubject.aspx.cs" Inherits="bdonfrsh.EditSubject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Subject</title>
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
           <label for="sname">Subject Name:</label>
           <asp:TextBox ID="Sname" class="form-control" runat="server"></asp:TextBox>
        </div>
        
        <div class="form-group">
           <label for="description">Description:</label>
           <asp:TextBox ID="description" class="form-control" runat="server" ></asp:TextBox>
        </div>

         <div class="form-group">
            <label for="tnsme"> Professor Name :</label>
            <asp:TextBox ID="Tname" class="form-control" runat="server"></asp:TextBox>
        </div>
        <div  class="container">
          <asp:Button ID="btn_Edit" class="btn btn-dark" runat="server" Text="Edit" OnClick="btn_Edit_Click" />
          <asp:Button ID="btn_Delete" class="btn btn-dark" runat="server" Text="Delete" OnClick="btn_Delete_Click" />
       </div>
    </form>
   </div>
</body>
</html>
