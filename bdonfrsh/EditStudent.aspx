<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditStudent.aspx.cs" Inherits="bdonfrsh.EditStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <div>
        </div>
        <asp:TextBox ID="txtname" placeholder="Name" runat="server" Width="507px"></asp:TextBox>
        <p>
            <asp:TextBox ID="txtLastname" placeholder="Last_Name" runat="server" Width="508px"></asp:TextBox>
        </p>
        <p>
                <input id="birthday" type="text" placeholder="Birth" runat="server"  />
        </p>
        <p>
            <asp:TextBox ID="txtEmail" placeholder="E_mail" runat="server" Width="506px"></asp:TextBox>
        </p>
        <p>
            <asp:TextBox ID="txtpass" placeholder="Pass" runat="server" Width="508px"></asp:TextBox>
        </p>
        <p>
        <asp:Button ID="btn_delete" runat="server" Text="Delete" OnClick="btn_delete_Click" />
        <asp:Button ID="btn_Edit" runat="server" Text="Edit" OnClick="btn_Edit_Click" />
        </p>
    </form>
</body>
</html>
