<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditStudent.aspx.cs" Inherits="bdonfrsh.EditStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Student</title>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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
          <label for="name">First Name:</label>
          <asp:TextBox ID="txtname"  class="form-control" placeholder="Name" runat="server" Width="507px"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="name">Last Name:</label>
            <asp:TextBox ID="txtLastname"  class="form-control" placeholder="Last_Name" runat="server" Width="508px"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="birth">Birthday:</label>
            <input id="birthday"   class="form-control" type="text" placeholder="Birth" runat="server"  />
            <asp:RangeValidator ID="forbirth" runat="server" ControlToValidate="birthday" ErrorMessage="Age Bettwen 18 and 30 "
                MaximumValue="1/1/2003" MinimumValue="1/1/1991" Type="Date" ForeColor="Red"></asp:RangeValidator>
       </div>

       <div class="form-group">
            <label for="mail">Email:</label>
            <asp:TextBox ID="txtEmail"  class="form-control" placeholder="E_mail" runat="server" Width="506px"></asp:TextBox>
           <asp:RegularExpressionValidator ID="formail" runat="server" ControlToValidate="txtEmail"
                ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
               Display = "Dynamic" ErrorMessage = "Invalid email address"></asp:RegularExpressionValidator>
       </div>

        <div class="form-group">
             <label for="pass">Password:</label>
             <asp:TextBox ID="txtpass"  class="form-control" placeholder="Pass" runat="server" Width="508px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="forpass" runat="server"  ControlToValidate="txtpass" 
                ErrorMessage="Minimum password length is 6" ValidationExpression="^([a-zA-Z0-9@#$%^&+=*]{6,30})$"
                ValidationGroup="RegisterCheck" ForeColor="Red"></asp:RegularExpressionValidator>
       </div>

       <div  class="container">
            <asp:Button ID="btn_delete" class="btn btn-dark" runat="server" Text="Delete" OnClick="btn_delete_Click" />
     
           <asp:Button ID="btn_Edit" class="btn btn-dark" runat="server" Text="Edit" OnClick="btn_Edit_Click" />
      </div>
    </form>
   </div>
</body>
</html>
