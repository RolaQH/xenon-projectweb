<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmTable.aspx.cs" Inherits="Xenon.FronEnd.WebForm.Sales.Mantenimientos.frmTable" %>

<style>

    .center {
        text-align:center;
    
    }
</style>
<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><a href="#">Mantenimiento</a></li>
			<li><a href="#">Sintomas</a></li>
		</ol>
	</div>
</div>
<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<span>Sintomas</span>
				</div>
				<div class="box-icons">
					<a class="collapse-link">
						<i class="fa fa-chevron-up"></i>
					</a>
					<a class="expand-link">
						<i class="fa fa-expand"></i>
					</a>
					<a class="close-link">
						<i class="fa fa-times"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>

			<div class="box-content no-padding table-responsive" id="contendido">
				<table class="table table-bordered table-striped table-hover table-heading table-datatable" id="grilla">
					<thead>
						<tr>
                            <th>
                                <center><button id="btnAdd" style="background:#5BC0DE;"  class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal"><i class="fa fa-plus"></i></button></center>
                                <label><input type="hidden"name="search_rate" value="Buscar Codigo" class="search_init" /></label>

                            </th>
						<th><label><input type="text" name="search_rate" placeholder="Codigo Sintomas" class="search_init" /></label></th>
							<th><label><input type="text" name="search_name" placeholder="Descripcion" class="search_init" /></label></th>
							<th><label><input type="text" name="search_votes" placeholder="Estado" class="search_init" /></label></th>
						</tr>
					</thead>
					<tbody>
					</tbody>
					<tfoot style="background:#333;border:0px;color:white;">
						<tr>
                            <th style="background:#333;border:0px;" class="center">Acciones</th>
							<th style="background:#333;border:0px;" class="center">Codigo</th>
							<th style="background:#333;border:0px;" class="center">Descipcion</th>
							<th style="background:#333;border:0px;" class="center">Estado</th>
						</tr>
					</tfoot>
				</table>
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
    <!--gritter-->
    <link rel="stylesheet" type="text/css" href="ScriptsDev/gritter/css/jquery.gritter.css" />
    <script type="text/javascript" src="ScriptsDev/gritter/js/jquery.gritter.js"></script>
    <!--Utilitarios-->
    <script src="Paginas/Mantenimientos/Utilil.js"></script>



<script type="text/javascript">



    var K_OPERACION_ACTUAL = "";
    var K_OPERACION_NUEVO = "I";
    var K_OPERACION_ACTUALIZAR = "U";



    ///Funcion Agrega o modifica segun Desicion del Usuario
    var Actualizar = function () {

        var sintoma = {
            IdSintoma: $('#txtCod').val(),
            Descripcion: $('#txtDes').val(),
            Estado: $('#chkEstado').is(':checked') ? "False" : "True"
        };

        var args = JSON.stringify(sintoma);
        
        if (K_OPERACION_ACTUAL == K_OPERACION_NUEVO) {
            
            DatosAjax('POST', 'Paginas/Mantenimientos/frmTable.aspx/InsertarCallBack', args, Agregar);

        }
        else if (K_OPERACION_ACTUAL == K_OPERACION_ACTUALIZAR) {
            DatosAjax('POST', 'Paginas/Mantenimientos/frmTable.aspx/ModificarCallBack', args, Modificar);
        }
        $('#myModal').modal('hide');
    }


    ///Cargar El Grid al Modificar
    function Modificar(data) {
        listar();
        Mensaje("Sistema BoticService", "Transaccion Satisfactoriamente");
    }

    ///Cargar El Grid al Agregar
    function Agregar(data) {
        listar();
        $('#myModal').modal('hide');
        Mensaje("Sistema BoticService", "Transaccion Satisfactoriamente");
    }

    ///Cargar El Grid Al eliminar
    

    ///Agrega Codigo Generado a Input Text
    var GenerarId = function (data) {
        $('#txtCod').val(data.d);
    }

    ///Limpia controles
    var Limpiar = function () {
        $("#txtCod").val("");
        $("#txtDes").val("");
    }

    ///Muestra datos en Venta al Modificar
    function CargarDatos(data) {
        $('#txtCod').val(data.d.IdSintoma);
        $('#txtDes').val(data.d.Descripcion);
        if (data.d.Estado == "False")
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
        DatosAjax('POST', 'Paginas/Mantenimientos/frmTable.aspx/ObtienePorIdCallBack', args, CargarDatos);

    }
    function listar() {
        DatosAjax('POST', 'Paginas/Mantenimientos/frmTable.aspx/ListarCallBack', "", config);
    }

    function config(dt) {
        var xdata = JSON.parse(dt.d);
        var asInitVals = [];
        var oTable = $('#grilla').dataTable({
            "aaData": xdata.data,
            "aoColumns": [
                {
                    "mDataProp": null,
                    "sClass": "center",
                    "sDefaultContent": '<center><button type="button"  style="background:#DBDBDB;color:#777;"  class="btn btn-primary btn-lg btnMod" data-toggle="modal" data-target="#myModal"><i class="fa fa-edit"></i></button> <button type="button" style="background:#D9534F;"  class="btn btn-primary btnEli" data-toggle="modal" data-target=".bs-example-modal-sm"><i class="fa fa-trash-o"></i></button></center>'
                },
                    { "mDataProp": "IdSintoma" },
                    { "mDataProp": "Descripcion", "sClass": "center" },
                    { "mDataProp": "Estado", "sClass": "center"}
            ],
            "aaSorting": [[0, "asc"]],
            "sDom": "<'box-content'<'col-sm-6'f><'col-sm-6 text-right'l><'clearfix'>>rt<'box-content'<'col-sm-6'i><'col-sm-6 text-right'p><'clearfix'>>",
            "sPaginationType": "bootstrap",
            "oLanguage": {
                "sSearch": "",
                "sLengthMenu": '_MENU_'
            },
            bAutoWidth: false,
            "fnRowCallback": function (nRow, aData, iDisplayIndex, iDisplayIndexFull) {
                var cod = JSON.stringify(aData.IdSintoma);
                $('td button:eq(0)', nRow).data("codigo", cod);
                $('td button:eq(1)', nRow).data("codigo", cod);
            },
            "bDestroy":true

        });
        
        var header_inputs = $(".dataTable thead input");
        header_inputs.on('keyup', function () {
            /* Filter on the column (the index) of this element */
            oTable.fnFilter(this.value, header_inputs.index(this));
        })
        .on('focus', function () {
            if (this.className == "search_init") {
                this.className = "";
                this.value = "";
            }
        })
        .on('blur', function (i) {
            if (this.value == "") {
                this.className = "search_init";
                this.value = asInitVals[header_inputs.index(this)];
            }
        });
        header_inputs.each(function (i) {
            asInitVals[i] = this.value;
        });
    }
// Run Datables plugin and create 3 variants of settings
function AllTables(){
    listar();
    LoadSelect2Script(config);
}
function MakeSelect2(){
	$('select').select2();
	$('.dataTables_filter').each(function(){
		$(this).find('label input[type=text]').attr('placeholder', 'Search');
	});
}

$(function () {
        $("#contendido").mCustomScrollbar({
            theme: "minimal-dark",
            setHeight:500,

        });
    //$("#ajax-content").mCustomScrollbar({
    //    theme: "dark-3"
    //});
    MessageBoxInitial();
    BoxControlInitial();
	// Load Datatables and run plugin on tables 
	LoadDataTablesScripts(AllTables);
	// Add Drag-n-Drop feature
	WinMove();
	

    /////Eventos



	$('#grilla').on("click", "tbody .btnMod", function (event, $td) {
	    ControlBox("Modificar Sintoma");
	    Limpiar();
	    K_OPERACION_ACTUAL = K_OPERACION_ACTUALIZAR;
	    var cod = $(this).data("codigo").replace('"', "");
	    cod = cod.replace('"', "")
	    ObtienePorId($.trim(cod));
	});

	$('#grilla').on("click", "tbody .btnEli", function (event, $td) {
	    var cod = $(this).data("codigo").replace('"', "");
	    cod = cod.replace('"', "")
	    MessageBox("Sistema", "¿Seguro que desea Eliminar El Sintoma con Codigo: |" + cod + "|?");
	    $('#btnSi').data("cod", cod);
	});

	$('#btnSi').click(function () {
	    var cod = $(this).data("cod");
	    var sintoma = {
	        IdSintoma: cod
	    };

	    var args = JSON.stringify(sintoma);
	    DatosAjax('POST', 'Paginas/Mantenimientos/frmTable.aspx/EliminarCallBack', args, function (data) {
	        listar();
	        $('#modalMensaje').modal('hide');
	        Mensaje("Sistema BoticService", "Transaccion Satisfactoriamente");
	    });
	});


	$("#btnAdd").click(function () {
	    ControlBox("Agregar Sintoma");
	    Limpiar();
	    K_OPERACION_ACTUAL = K_OPERACION_NUEVO;
	    DatosAjax('POST', 'Paginas/Mantenimientos/frmTable.aspx/GeneraIdCallback', "", GenerarId);
	});

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
</script>