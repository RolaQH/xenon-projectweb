<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmSintomas.aspx.cs" Inherits="Xenon.FronEnd.WebForm.Sales.Mantenimientos.frmSintomas" %>


<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><a href="index.html">Home</a></li>
			<li><a href="#">Mantenimiento</a></li>
			<li><a href="#">Sintomas</a></li>
		</ol>
	</div>
</div>

<div class="row mt">
        <div class="col-lg-12">
            <div class="form-panel">
                <h4 class="mb">
                    <i class="fa fa-angle-right">

                    </i>
                    Busqueda:
                </h4>

                <!-- ******************* Control de Busqueda ************* -->
                <form class="form-inline" method="get">
                        
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">Codigo</label>
                        </div>
                        <div class="form-group">
                            
                            <input type="text" id="txtCodigoSearch" class="form-control" placeholder="Codigo AFP">
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">Descripcion</label>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="txtDescripcionSearch" placeholder="Descripcion AFP">
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <input type="button" id="btnBuscar" style="background:#3b5998;color:white;" class="btn btn-default" value="Buscar" />
                            </div>
                      </div>
                </form>
                 <!-- ******************* Fin Control de Busqueda ************* -->
                <br />
                <br />
                <div id="grid">
               <table class="footable table table-bordered metro-blue" id="Grilla"></table>
                </div>
            </div>

           
        </div>
</div>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  
      <div id="controls">
          <div class="row form-group"><div class="col-sm-2">Codigo:</div> <div class="col-sm-2"><input class="form-control" placeholder="Codigo Sintomas" id="txtCod" type="text"/></div></div>
          <div class="row form-group"><div class="col-sm-2">Descripcion:</div> <div class="col-sm-6"><input class="form-control" placeholder="Descipcion Sintoma" id="txtDes" type="text"/></div> </div>
          <div class="row form-group"><div class="col-sm-2">Estado:</div><div class="col-sm-2">
						<div class="toggle-switch toggle-switch-danger">
							<label>
								<input type="checkbox" id="chkEstado">
								<div class="toggle-switch-inner"></div>
								<div class="toggle-switch-switch"><i class="fa fa-check"></i></div>
							</label>
						</div>
					</div>
              </div>
      </div>
</div>

<div id="Mensajes"></div>

    <!--Tabla FooTable-->
    <link href="Scripts/FooTable-2/css/footable.core.css?v=2-0-1" rel="stylesheet" type="text/css"/>
    
    <link href="Scripts/FooTable-2/css/footable.metro.css" rel="stylesheet" />
    <link href="Scripts/FooTable-2/demos/css/footable-demos.css" rel="stylesheet" type="text/css"/>
    <script src="Scripts/FooTable-2/demos/js/bootstrap-tab.js" type="text/javascript"></script>
    <script src="Scripts/FooTable-2/demos/js/demos.js" type="text/javascript"></script>
    <script src="Scripts/FooTable-2/js/footable.js?v=2-0-1" type="text/javascript"></script>
    <script src="Scripts/FooTable-2/js/footable.grid.js" type="text/javascript"></script>
    <script src="Scripts/FooTable-2/js/footable.sort.js" type="text/javascript"></script>
    <script src="Scripts/FooTable-2/js/footable.paginate.js" type="text/javascript"></script>
    <!--gritter-->
    <link rel="stylesheet" type="text/css" href="ScriptsDev/gritter/css/jquery.gritter.css" />
    <script type="text/javascript" src="ScriptsDev/gritter/js/jquery.gritter.js"></script>

    <!--Utilitarios-->
    <script src="Mantenimientos/Utilil.js"></script>


<script>

    ///Funcion de Carga Grid 
    function CargarGrid(estado) {
        $('#grid').html("");
        $('#grid').html('<table class="footable table table-bordered" id="Grilla"></table>');
        var arg = {
            IdSintoma: $("#txtCodigoSearch").val(),
            Descripcion: $("#txtDescripcionSearch").val()
        };
        var args = (JSON.stringify(arg));
        if(estado == "0")
            DatosAjax('POST', 'Mantenimientos/frmSintomas.aspx/ListarCallBack', args, onSuccess);
    }
    
    
        
    $(function () {

        //Carga de Grid
        CargarGrid("0");
        //Input Text Desabilitado
        $("#txtCod").prop('disabled', true);

        ///Filtro Sintomas
        $('#btnBuscar').click(function () {
            CargarGrid("0");
        });

        ///Evento click(Ventana) Agrega o Modifica Sintoma
        $("#btnSave").click(function () {
            Actualizar();
        });
    });

    ///Si El Servidor Responde Cargara la tabla
    function onSuccess(output, context) {
        $('#Grilla').footable({
                    grid:{
                        activeClass:'info',
                        showIndex:true,
                        showCheckbox:true,
                        showEmptyInfo:true,
                        cols:[
                            { title:'Codigo', name:'IdSintoma'},
                            {
                                title: 'Descripcion', name: 'Descripcion', data: {
                                    "hide":"phone,tablet"
                                }
                            },
                            {
                                title: 'Estado', name: 'Estado', data: {
                                "hide":"phone"
                            }, formatter:function(val,$td,index){
                                var title = '';
                                if(val === 'False'){
                                    title = 'Active';
                                } else if (val === 'True') {
                                    title = 'Suspended';
                                }
                                $td.html('<span  class="status-metro status-' + title.toLowerCase() + '" title="' + title + '">' + title + '</span>');
                                $td.attr("data-value",val);
                            }},
                            { title:'', name:'',data:{
                                "sort-ignore":true
                            }, formatter: function () {
                                var btn = '<center><div class="btn-group btn-group-sm" role="group" aria-label="..."><button  id="btnMo" style="background:#2b5797;"  class="btn btn-primary btn-lg btnMod" data-toggle="modal" data-target="#myModal"><i class="fa fa-pencil"></i></button>     ';
                                btn += '<button type="button" style="background:#d3414a;"  id="btnDe" class="btn btn-primary btnDel" data-toggle="modal" data-target=".bs-example-modal-sm"><i class="fa fa-times-circle"></i></button></div></center>';
                                return btn;
                            }}],
                        items: output.d,
                        multiSelect: false, //allow select multiple row
                        showIndex: false, //show row index
                        showCheckbox: false, //show checkbox for select
                        showEmptyInfo: false
                    }
        });
        AddBtnSave(3);
        $.getScript('Mantenimientos/frmSintomas.js');

        $('#Grilla').footable().data('');
    }


    ///Muestra datos en Venta al Modificar
    function CargarDatos(data) {
        $('#txtCod').val(data.d.IdSintoma);
        $('#txtDes').val(data.d.Descripcion);
        if(data.d.Estado == "False")
            $('#chkEstado').prop('checked', true);
        else
            $('#chkEstado').prop('checked', false);
    }

    ///Invoca al Servidor para Mostrar Datos
    var ObtienePorId = function (id) {
        var sintoma = {
            IdSintoma: id
        };

        var args = JSON.stringify(sintoma);
        DatosAjax('POST', 'Mantenimientos/frmSintomas.aspx/ObtienePorIdCallBack', args, CargarDatos);
        
    }

    ///Agrega Codigo Generado a Input Text
    var GenerarId = function (data) {
        $('#txtCod').val(data.d);
    }

    ///Cargar El Grid al Modificar
    function Modificar (data) {
        CargarGrid("0");
        
    }

    ///Cargar El Grid al Agregar
    function Agregar(data) {
        CargarGrid("0");
        $('#myModal').modal('hide');
        Mensaje("Sistema BoticService", "Transaccion Satisfactoriamente");
    }

    ///Funcion Agrega o modifica segun Desicion del Usuario
    var Actualizar = function () {

        var sintoma = {
            IdSintoma: $('#txtCod').val(),
            Descripcion: $('#txtDes').val(),
            Estado: $('#chkEstado').is(':checked') ? "False" : "True"
        };

        var args = JSON.stringify(sintoma);

        if (K_OPERACION_ACTUAL == K_OPERACION_NUEVO) {
            DatosAjax('POST', 'Mantenimientos/frmSintomas.aspx/InsertarCallBack', args, Agregar);
            
        }
        else if (K_OPERACION_ACTUAL == K_OPERACION_ACTUALIZAR) {

            DatosAjax('POST', 'Mantenimientos/frmSintomas.aspx/ModificarCallBack', args, Modificar);
        }
        $('#myModal').modal('hide');
        Mensaje("Sistema BoticService", "Transaccion Satisfactoriamente");
    }

</script>
