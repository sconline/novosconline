<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="sconline._default" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>SC Online. 2016</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href='http://suporte.scservicos.com.br/fancybox/source/jquery.fancybox.css?v=2.1.2' media="screen" />
    <link rel="stylesheet" type="text/css" href='http://suporte.scservicos.com.br/fancybox/source/helpers/jquery.fancybox-buttons.css?v=1.0.5' />
    <link rel="stylesheet" type="text/css" href='http://suporte.scservicos.com.br/fancybox/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7'/>
    <script type="text/javascript" src='http://suporte.scservicos.com.br/fancybox/lib/jquery-1.8.2.min.js' ></script>
    <script type='text/javascript' src='http://static.scservicos.com.br/js/jquery.validate.js'></script>
    <script type='text/javascript' src='http://static.scservicos.com.br/js/jquery.maskedinput.min.js'></script>
    <script type="text/javascript" src='http://suporte.scservicos.com.br/fancybox/lib/jquery.mousewheel-3.0.6.pack.js' ></script>
    <script type="text/javascript" src='http://suporte.scservicos.com.br/fancybox/source/jquery.fancybox.js?v=2.1.3' ></script>
    <script type="text/javascript" src='http://suporte.scservicos.com.br/fancybox/source/helpers/jquery.fancybox-buttons.js?v=1.0.5' ></script>
    <script type="text/javascript" src='http://suporte.scservicos.com.br/fancybox/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7' ></script>
    <script>
        $(document).ready(function (e) {
            $("#login").click(function (e) {
                location.href = "pages/blank.html";
                /* chart.aspx */
            });
        });
    </script>
</head>
<body>

    <div class="container">
        <div class="row">
            <div class="col-sm-4">
            </div>
            <div class="col-sm-4">
                <div class="panel panel-default" style="margin-top: 20px; width: 300px;">
                      <div class="panel-heading"><h2>SC</h2></div>
                      <div class="panel-body">
                            <br />
                            <input type="text" class="form-control" placeholder="Informe seu Id SC" id="usuario" name="usuario" />
                            <br />
                            <input type="password" class="form-control" placeholder="Informe sua senha" id="senha" name="senha" />
                            <hr />
                            <input type="button" value="ENTRAR" class="btn btn-primary" id="login" />
                      </div>
                </div>
            </div>
            <div class="col-sm-4">
            </div>
        </div>

    </div>

</body>
</html>

