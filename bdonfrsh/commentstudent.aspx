<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="commentstudent.aspx.cs" Inherits="bdonfrsh.commentstudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      
       
        <br />
        <asp:TextBox ID="txtcomment" runat="server" ></asp:TextBox>
        <br />
       
        <asp:Button ID="btncomment" runat="server" Text="Comment" OnClick="btncomment_Click" />
    </form>
</body>
</html>
