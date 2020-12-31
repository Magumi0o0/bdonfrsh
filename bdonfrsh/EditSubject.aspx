<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditSubject.aspx.cs" Inherits="bdonfrsh.EditSubject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:TextBox ID="Sname" runat="server"></asp:TextBox>
        <p>
            <asp:TextBox ID="description" runat="server" ></asp:TextBox>
        </p>
        <p>
            <asp:TextBox ID="Tname" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="btn_Edit" runat="server" Text="Edit" OnClick="btn_Edit_Click" />
        <asp:Button ID="btn_Delete" runat="server" Text="Delete" OnClick="btn_Delete_Click" />
    </form>
</body>
</html>
