 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Xenon.FronEnd.WebForm.Sales.InicioSession.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="utf-8"/>
		<title>Login BoticService</title>
		<meta name="description" content="description"/>
		<meta name="author" content="Evgeniya"/>
		<meta name="keyword" content="keywords"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
        <script src="../ScriptsDev/plugins/jquery/jquery-2.1.0.min.js"></script>
    <script src="../ScriptsDev/plugins/jquery-ui/jquery-ui.min.js"></script>
        <link href="../ScriptsDev/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
		<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet"/>
		<link href='http://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'/>
        <link href="../ScriptsDev/css/style.css" rel="stylesheet" />
<script src="../Scripts/Bootstrap%20Validator/dist/js/bootstrapValidator.min.js"></script>
    <script src="../Scripts/Bootstrap%20Validator/dist/js/language/es_ES.js"></script>
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
				<script src="http://getbootstrap.com/docs-assets/js/html5shiv.js"></script>
				<script src="http://getbootstrap.com/docs-assets/js/respond.min.js"></script>
		<![endif]-->

        <script src="Login.js"></script>
    <style>
        caja {
            border-radius:0px;

        }

    </style>
</head>
<body>

    <form runat="server">
        <asp:ScriptManager runat="server">
            <Scripts>
                <asp:ScriptReference Name="MsAjaxBundle" />

            </Scripts>
        </asp:ScriptManager>
    </form>

    <div class="container-fluid">
	<div id="page-login" class="row" style="Background:#fff">
		<div class="col-xs-12 col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
			<div class="text-right">
				<a href="page_register.html" class="txt-default">¿Necesitas una cuenta?</a>
			</div>
			<div class="box" style="Background:#fff">
				<div class="box-content" style="Background:#fff">
					<div class="text-center">
						<h3 class="page-header" style="color:#fff">BoticService Login</h3>
					</div>
                    <form id="defaultForm" method="post" action="../Index.aspx"  class="form-horizontal">
                        <div class="text-center">
                         <span></span>
                            </div>
					    <div class="form-group">
						    <label class="control-label" style="color:black">Usuario</label>
						    <input type="text" tabindex="1" class="form-control caja vali" style="text-align:center;border-radius:0px;box-shadow:0px;border: 1px solid #BF4346;height:32px;" id="user" name="username" />
					    </div>
					    <div class="form-group">
						    <label class="control-label" style="color:black">Comtraseña</label>
						    <input type="password" tabindex="2" id="pass" class="form-control vali" style="text-align:center; border-radius:0px;box-shadow:0px;border: 1px solid #BF4346;height:32px;" name="password" />
					    </div>
					    <div class="text-center">
						    <button type="submit" tabindex="3" id="Ingreso" class="btn btn-primary" style="background-color:#FFF;border-radius:0px;box-shadow:0px;border: 1px solid #BF4346;height:35px;text-align:center;vertical-align:bottom;">Iniciar Sesion</button>
                           
					    </div>
                    </form>

				</div>
			</div>
		</div>
	</div>
</div>
    
</body>
</html>
