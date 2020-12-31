<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplyComment.aspx.cs" Inherits="bdonfrsh.DisplyComment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <div class="container">
        <% this.GetComments(); %>
                    
   
    </div>
       
    </form>
</body>
</html>
