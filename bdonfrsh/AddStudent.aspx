<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="AddStudent.aspx.cs" Inherits="bdonfrsh.AddStudent" EnableViewState="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 493px;
            width: 1006px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:TextBox ID="Name" runat="server" Height="16px" Width="352px"></asp:TextBox> <br/>
         <asp:TextBox ID="txtLastName" runat="server" Height="25px" Width="350px"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtBirth" runat="server" Height="16px" Width="345px"></asp:TextBox>
        <br/>
        <asp:TextBox ID="txtEmail" runat="server" Height="20px" Width="348px"></asp:TextBox>
        <br />
        <asp:TextBox ID="Pass" runat="server" Height="18px" Width="347px"></asp:TextBox>
        <br />
        <asp:DropDownList ID="drlDept" runat="server" Height="16px" Width="184px">
        </asp:DropDownList>
        <br />
        <asp:Button ID="Add" runat="server" Text="Add" OnClick="Add_Click" Width="119px" />
        <br />
        <asp:Button ID="UploadCSV" runat="server" Text="Upload CSV" Width="142px" OnClick="UploadCSV_Click" />
       
    </form>
</body>
</html>


