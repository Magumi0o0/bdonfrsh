﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload_CSV.aspx.cs" Inherits="bdonfrsh.Upload_CSV" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="color: White;">
            <asp:DropDownList ID="drlDept" runat="server" Height="16px" Width="184px">
        </asp:DropDownList>

            <p>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            </p>
            <p>
                <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
            </p>
            <p>
                <asp:Label ID="message" runat="server" ForeColor="Black" />
            </p>
        </div>
    </form>
</body>
</html>