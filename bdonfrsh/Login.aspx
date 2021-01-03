<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="bdonfrsh.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> log in</title>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <style>
   h1{ margin-top: 0;
  margin-bottom: 0.5rem;}
    </style>
  
 
</head>
<body>
  
    <div class="container">
       
  <form id="form1" runat="server" >

     
      <div>
          <h1 class="h4 text-gray-900 mb-4">Log in Now</h1>
       </div>
    <div class="form-group">
        

      <label for="email">Email:</label>

     <asp:TextBox ID="txtemail" class="form-control" runat="server"></asp:TextBox>
    </div>
    
    <div class="form-group">
      <label for="pwd">Password:</label>
     <asp:TextBox ID="txtpassword" class="form-control"  runat ="server"></asp:TextBox>
    </div>
        <div  class="container">
        <asp:Button ID="btnlogin"  class="btn btn-dark" runat="server" Text="Log In" OnClick="btnlogin_Click" />
         </div>
      
    </form>
        </div>
       
</body>
</html>
