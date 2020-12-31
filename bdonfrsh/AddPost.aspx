<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPost.aspx.cs" Inherits="bdonfrsh.AddPost" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 263px; width: 910px">
    <form id="form1" runat="server">
        <div>
       
        <asp:TextBox ID="txtPost" runat="server"></asp:TextBox>
      
             </div>
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />

        <asp:Button ID="btndel" runat="server" Text="Delete" OnClick="btndel_Click" />
        <asp:GridView ID="grdDisplyPost" runat="server"  OnSelectedIndexChanged="drdDisplyPost_SelectedIndexChanged">
        
            
        </asp:GridView>
    </form>
</body>
</html>
