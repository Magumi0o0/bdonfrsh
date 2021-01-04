<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentPage.aspx.cs" Inherits="bdonfrsh.StudentPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>tcc</title>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body id="page-top">
    <form id="form1" runat="server">



      <!-- Navigation -->
      <nav class="navbar navbar-inverse">
          <div class="container-fluid">
             <div class="navbar-header">
                <a class="navbar-brand" href="#">Technical Computer College</a>
             </div>
              <div class="navbar-header">
                <a class="navbar-brand" href="DisplayPosts.aspx">DisplayPosts</a>
             </div>
              <div class="navbar-header">
                <a class="navbar-brand" href="DisplySavingPosts.aspx">Display Saving Posts</a>
             </div>
                
                <ul class="nav navbar-nav navbar-right">
                  <li><a class=""input-group mb-3" href="Login.aspx" >   <button class="btn btn-dark"" type="button"> Loge Out </button></li>
                </ul>
          </div>
     </nav>
  <section id="subject">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 mx-auto">
          <h2>Your Subjects</h2>
            <center style="padding-top:50px">
               <asp:GridView ID="grdSubject" runat="server" BorderColor="#787878" BorderStyle="Inset" BorderWidth="3px" CellPadding="10" CellSpacing="3" Font-Italic="True"  >
               <FooterStyle BackColor="#787878" ForeColor="Black" />
                <HeaderStyle BackColor="#787878"  ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" /> 
             </asp:GridView>
            </center>
        </div>
      </div>
    </div>
 </section>
    </form>
</body>
</html>
