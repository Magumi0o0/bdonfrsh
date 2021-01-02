﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manage_Student.aspx.cs" Inherits="bdonfrsh.Manage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding-top:100px">
            <center>
                <p>
                <asp:Button ID="btnAddNewStudent" runat="server" Text="Add New Student" OnClick="btnAddNewStudent_Click"></asp:Button>
              </p>
            <asp:GridView ID="grdDisplayStudents" runat="server"  BorderColor="#999999" BorderStyle="Ridge" BorderWidth="2px" CellPadding="5" CellSpacing="3" GridLines="None" OnRowCommand="grdDisplayStudents_RowCommand" OnSelectedIndexChanged="grdDisplayStudents_SelectedIndexChanged1">
                <FooterStyle BackColor="#003300" ForeColor="Black" />
                <HeaderStyle BackColor="#003300"  ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
                <Columns>
                   <asp:TemplateField>
                      <ItemTemplate>
                        <asp:Button Text="Manage" runat="server" CommandName="Manage" CommandArgument="<%# Container.DataItemIndex %>" />
                      </ItemTemplate>
                   </asp:TemplateField>
                </Columns>
            </asp:GridView>
                </center>
        </div>
    </form>
</body>
</html>