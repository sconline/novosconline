<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="drawchart.aspx.cs" Inherits="sconline.drawchart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">

        $(document).ready(function (e) {
            google.charts.load("current", { packages: ["corechart"] });
            // google.charts.setOnLoadCallback(drawChart(obj));
            getData("SELECT 1 AS TITULO, 2 AS VALOR UNION ALL SELECT 1 AS TITULO, 3 AS VALOR");
        });

        function drawChart(o) {

            //var data = google.visualization.arrayToDataTable([
            //  ['Task', 'Hours per Day'],
            //  ['Reclamações', 40],
            //  ['Informações', 20],
            //  ['Elogios', 10],
            //  ['Pedidos', 2]
            //]);

            var data = new google.visualization.DataTable(o);
            var options = {
                title: 'Manifestações',
                is3D: true,
            };

            var chart = new google.visualization.PieChart(document.getElementById('_grafico'));
            chart.draw(data, options);
        }

        function getData(query) {
            $.ajax({
                url: "drawchart.aspx/getData",
                dataType: "json",
                type: "POST",
                data: "{ query: '" + query + "' }",
                contentType: "application/json; charset=utf-8",
                success: function (data) {
                    var obj = jQuery.parseJSON(data.d);
                    $("#_debug").html(JSON.stringify(obj));

                    drawChart(obj);
                },
                error: function (request, status, error) {
                    alert(request.responseText + status + error);
                }
            });
        }


    </script>
</head>
<body>
    <div>
        <div id="_debug"></div>                
        <div id="_grafico"></div>                
    </div>
</body>
</html>
