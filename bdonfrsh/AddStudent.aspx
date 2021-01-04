<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="AddStudent.aspx.cs" Inherits="bdonfrsh.AddStudent" EnableViewState="true" %>

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
         <label  for="UName">User Name</label>
        <asp:TextBox ID="Name" class="form-control" runat="server" ></asp:TextBox>
          <asp:RequiredFieldValidator ID="fornamr" runat="server" ControlToValidate="Name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
          </div>

        <div class="form-group">
        <label  for="lastname">Last Name</label>
         <asp:TextBox ID="txtLastName" class="form-control" runat="server" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="forlastnamr" runat="server" ControlToValidate="txtLastName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>

        
        <div class="form-group">
        <label  for="birth">Birthday</label>
        <asp:TextBox ID="txtBirth" class="form-control" runat="server" ></asp:TextBox>
            <asp:RangeValidator ID="forbirth" runat="server" ControlToValidate="txtBirth" ErrorMessage="Age Bettwen 18 and 30 "
                MaximumValue="1/1/2003" MinimumValue="1/1/1991" Type="Date" ForeColor="Red"></asp:RangeValidator>
            
       </div>

         <div class="form-group">
        <label  for="email">E_Mail</label>
        <asp:TextBox ID="txtEmail" class="form-control" runat="server" ></asp:TextBox>
             <asp:RegularExpressionValidator ID="foremail" runat="server" ControlToValidate="txtEmail"
                ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
               Display = "Dynamic" ErrorMessage = "Invalid email address"></asp:RegularExpressionValidator>
             <asp:RequiredFieldValidator ID="foremailr" ControlToValidate="txtEmail" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        
         <div class="form-group">
        <label for="pass">Password</label>
        <asp:TextBox ID="Pass" class="form-control" runat="server" ></asp:TextBox>
             <asp:RegularExpressionValidator ID="forpass" runat="server" ControlToValidate="Pass" 
                ErrorMessage="Minimum password length is 6" ValidationExpression="^([a-zA-Z0-9@#$%^&+=*]{6,30})$"
                ValidationGroup="RegisterCheck" ForeColor="Red">
             </asp:RegularExpressionValidator>
             <asp:RequiredFieldValidator ID="forpassr" ControlToValidate="Pass"  runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>

       <div class="form-group">
         <label  for="depts">Dept</label>
         <asp:DropDownList ID="drlDept" class="form-control" runat="server" > </asp:DropDownList>
           
        </div>

        <div  class="container">
        <asp:Button ID="Add"  class="btn btn-dark" runat="server" Text="Add" OnClick="Add_Click" />
            
       
           </div>
       
    </form>
        </div>
</body>
</html>


