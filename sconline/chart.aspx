<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chart.aspx.cs" Inherits="sconline.chart" %>

<html>
  <head>
    <title>SC Charts</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <link href="css/simple-sidebar.css" rel="stylesheet" />
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Reclamações',   40],
          ['Informações',   20],
          ['Elogios',  10],
          ['Pedidos', 2]
        ]);

        var options = {
          title: 'Manifestações',
          is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);
      }
    </script>
  </head>
  <body>

    <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                        SC
                    </a>
                </li>
                <li>
                    <a href="#">Dashboards</a>
                </li>
                <li>
                    <a href="#">Painel de Controle</a>
                </li>
                <li>
                    <a href="#">Sobre</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Menu</a>

        <div id="piechart_3d" style="width: 900px; height: 500px;"></div>
        <hr />

          <table class="table table-striped table-bordered">
            <thead>
              <tr>
                <th>Manifestacao</th>
                <th>Quantidade</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>Reclamações</td>
                <td>40</td>
              </tr>
              <tr>
                <td>Elogios</td>
                <td>20</td>
              </tr>
              <tr>
                <td>Informações</td>
                <td>10</td>
              </tr>
            </tbody>
          </table>

                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Menu Toggle Script -->
    <script>
        $("#menu-toggle").click(function (e) {
            e.preventDefault();
            $("#wrapper").toggleClass("toggled");
        });
    </script>

  </body>
</html>

