<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagePosts.aspx.cs" Inherits="bdonfrsh.ManagePosts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Post </title>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>

<body id="page-top">
     <!-- Navigation -->
      <nav class="navbar navbar-inverse navbar-light ">
          <div class="container-fluid">
             <div class="navbar-header">
                <a class="navbar-brand" href="AdminPage.aspx">Technical Computer College</a>
             </div>
              <div class="navbar-header">
                <a class="navbar-brand" href="Manage_Student.aspx">Manage Students</a>
             </div>
                <div class="navbar-header">
                <a class="navbar-brand" href="Manage_Subject.aspx">Manage Subjects</a>
             </div>
                <div class="navbar-header">
                <a class="navbar-brand" href="ManagePosts.aspx">Manage Posts</a>
             </div>
                <ul class="nav navbar-nav navbar-right">
                  <li><a class=""input-group mb-3" href="Login.aspx" >   <button class="btn btn-dark"" type="button"> Log Out </button></li>
                </ul>
          </div>
     </nav>

    <form id="form1" runat="server">
        <div style="padding-top:100px">
            <center>
                <p>
            <asp:Button ID="Button1" class="btn btn-dark" runat="server" Text="Add New Post" OnClick="Button1_Click"  />
               </p>

        <asp:GridView ID="grdpost" runat="server" BorderColor="#787878" BorderStyle="Outset" BorderWidth="2px" CellPadding="5" CellSpacing="3" GridLines="None" OnRowCommand="grdpost_RowCommand" OnSelectedIndexChanged="grdpost_SelectedIndexChanged">
             <FooterStyle BackColor="#787878" ForeColor="Black" />
                <HeaderStyle BackColor="#787878"  ForeColor="#E7E7FF" />
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
                        <asp:Button Text="Manage" class="btn btn-dark" runat="server" CommandName="Manage" CommandArgument="<%# Container.DataItemIndex %>" />
                      </ItemTemplate>
                   </asp:TemplateField>
                </Columns>
        </asp:GridView>
            </center>
            </div>
    </form>

</body>
</html>
