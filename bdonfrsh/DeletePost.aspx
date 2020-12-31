<%@ Page Language="C#" EnableEventValidation="true" AutoEventWireup="true" CodeBehind="DeletePost.aspx.cs" Inherits="bdonfrsh.DeletePost" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
        <div>
        </div>
        <asp:TextBox ID="txtPost" runat="server"></asp:TextBox>
        <asp:TextBox ID="TxtDatePost" runat="server"></asp:TextBox>
    </form>
</body>
</html>
