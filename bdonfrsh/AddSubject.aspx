<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddSubject.aspx.cs" Inherits="bdonfrsh.AddSubject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </div>
        <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtTname" runat="server"></asp:TextBox>
        <br />
        <asp:DropDownList ID="drDept" runat="server">
        </asp:DropDownList>
        <p style="height: 169px; width: 758px">
        <asp:Button ID="Add" runat="server" Text="Add" OnClick="Add_Click" />
        </p>
    </form>
</body>
</html>
