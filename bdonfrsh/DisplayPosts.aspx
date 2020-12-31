<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayPosts.aspx.cs" Inherits="bdonfrsh.DisplayPosts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
               <% this.GetPosts(); %>
    </div>
    </form>
</body>
</html>
