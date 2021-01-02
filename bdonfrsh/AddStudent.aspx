<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="AddStudent.aspx.cs" Inherits="bdonfrsh.AddStudent" EnableViewState="true" %>

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
<body>

    <div class="container">
    <form id="form1" runat="server">
      <div class="form-group">
         <label class="label" for="UName">User Name</label>
        <asp:TextBox ID="Name" class="form-control" runat="server" Height="16px" Width="352px"></asp:TextBox> 
          </div>

        <div class="form-group">
        <label class="label" for="lastname">Last Name</label>
         <asp:TextBox ID="txtLastName" class="form-control" runat="server" Height="25px" Width="350px"></asp:TextBox>
        </div>

        
        <div class="form-group">
        <label class="label" for="birth">Birthday</label>
        <asp:TextBox ID="txtBirth" class="form-control" runat="server" Height="16px" Width="345px"></asp:TextBox>
       </div>

         <div class="form-group">
        <label class="label" for="email">E_Mail</label>
        <asp:TextBox ID="txtEmail" class="form-control" runat="server" Height="20px" Width="348px"></asp:TextBox>
        </div>
        
         <div class="form-group">
        <label class="label" for="pass">Password</label>
        <asp:TextBox ID="Pass" class="form-control" runat="server" Height="18px" Width="347px"></asp:TextBox>
        </div>

         <div class="form-group">
        <label class="label" for="depts">Dept</label>
        <asp:DropDownList ID="drlDept" class="form-control" runat="server" Height="16px" Width="184px">
        </asp:DropDownList>
        </div>

        <div  class="container">
        <asp:Button ID="Add"  class="btn btn-primary" runat="server" Text="Add" OnClick="Add_Click" Width="119px" />
            </div>
       <div  class="container">
        <asp:Button ID="UploadCSV" class="btn btn-primary" runat="server" Text="Upload CSV" Width="142px" OnClick="UploadCSV_Click" />
           </div>
       
    </form>
        </div>
</body>
</html>


