<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="bdonfrsh.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>tcc</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
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
    <ul class="nav navbar-nav">
      <li class="active"><a href="home1.html">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Dept <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">software</a></li>
          <li><a href="#">Networks</a></li>
          <li><a href="#">Computers</a></li>

        </ul>
      </li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a class=""input-group mb-3" href="logein.html" >   <button class="btn btn-outline-success" type="button">The Loge In </button></li>
    </ul>
  </div>
</nav>

  <header class="bg-primary text-white">
    <div class="container text-center">
      <h1>Welcome to</h1>
      <p class="lead">Technical Computer Collage</p>
       
    </div>
  </header>

 <section id="Software">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 mx-auto">
          <h2>Software Subjects</h2>
            <center style="padding-top:50px">
          <asp:GridView ID="grdSoftware" runat="server" >
         </asp:GridView>
            </center>
        </div>
      </div>
    </div>
  </section>

        <section id="Computers">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 mx-auto">
          <h2>Computers Subjects</h2>
            <center style="padding-top:50px">
          <asp:GridView ID="grdComputers" runat="server">
         </asp:GridView>
            </center>
        </div>
      </div>
    </div>
  </section>

         
        <section id="Networks">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 mx-auto">
          <h2>Networks Subjects</h2>
            <center style="padding-top:50px">
          <asp:GridView ID="grdNetworks" runat="server">
         </asp:GridView>
            </center>
        </div>
      </div>
    </div>
  </section>
         
       

    </form>
</body>
</html>
