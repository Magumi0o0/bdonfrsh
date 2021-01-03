<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddSubject.aspx.cs" Inherits="bdonfrsh.AddSubject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Add Subject</title>
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
           <label for="name">Subject Name:</label>
            <asp:TextBox ID="txtName" class="form-control" runat="server"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate ="txtName"></asp:RequiredFieldValidator>
        </div>

         <div class="form-group">
             <label for="description">Subject Description :</label>
              <asp:TextBox ID="txtDescription" class="form-control" runat="server"></asp:TextBox>
           
          </div>
      <div class="form-group">
              <label for="tname"> Professor Name :</label>
        <asp:TextBox ID="txtTname" class="form-control" runat="server"></asp:TextBox>
        </div>

      <div class="form-group">
          <label for="drdept"> Subject Dept :</label>
        <asp:DropDownList ID="drDept" class="form-control" runat="server">
        </asp:DropDownList>
           </div>
         
         
        <div  class="container">
           <asp:Button ID="Add" class="btn btn-dark" runat="server" Text="Add" OnClick="Add_Click" />
        </div>

    </form>
    </div>
</body>
</html>
