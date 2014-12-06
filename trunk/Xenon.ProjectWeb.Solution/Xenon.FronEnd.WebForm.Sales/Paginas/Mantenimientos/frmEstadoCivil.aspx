<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmEstadoCivil.aspx.cs" Inherits="Xenon.FronEnd.WebForm.Sales.Paginas.Mantenimientos.frmEstadoCivil" %>

<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><a href="#">Mantenimiento</a></li>
			<li><a href="#">Estado Civil</a></li>
		</ol>
	</div>
</div>
<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<span>Estado Civil</span>
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
						<th><label><input type="text" name="search_rate" placeholder="Codigo Estado Civil" class="search_init" /></label></th>
							<th><label><input type="text" name="search_name" placeholder="Descripcion" class="search_init" /></label></th>
						</tr>
					</thead>
					<tbody>
					</tbody>
					<tfoot style="background:#2B5797;border:0px;color:white;">
						<tr>
                            <th style="border:0px;" class="center">Acciones</th>
							<th style="border:0px;" class="center">Codigo</th>
							<th style="border:0px;" class="center">Descipcion</th>
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
          <div class="row form-group"><div class="col-sm-2">Codigo:</div> <div class="col-sm-2"><input class="form-control" placeholder="Codigo Estado Civil" id="txtCod" type="text"/></div></div>
          <div class="row form-group"><div class="col-sm-2">Descripcion:</div> <div class="col-sm-6"><input class="form-control" placeholder="Descipcion Estado Civil" id="txtDes" type="text"/></div> </div>
         
              </div>
      
</div>

<div id="Mensajes"></div>
    <!--gritter-->
    <link rel="stylesheet" type="text/css" href="ScriptsDev/gritter/css/jquery.gritter.css" />
    <script type="text/javascript" src="ScriptsDev/gritter/js/jquery.gritter.js"></script>
    <!--Utilitarios-->
    <script src="Paginas/Mantenimientos/Utilil.js"></script>

<script>
    ///Operaciones para diferncias Accion
    var K_OPERACION_ACTUAL = "";
    var K_OPERACION_NUEVO = "I";
    var K_OPERACION_ACTUALIZAR = "U";


    var Limpiar = function () {
        $("#txtCod").val("");
        $("#txtDes").val("");
    }

    var ObtienePorId = function (id) {
        var EstadoCivil = {
            IdEstadoCivil: id
        };

        var args = JSON.stringify(EstadoCivil);
        DatosAjax('POST', 'Paginas/Mantenimientos/frmEstadoCivil.aspx/ObtienePorIdCallBack', args, function (data) {
                $('#txtCod').val(data.d.IdEstadoCivil);
                $('#txtDes').val(data.d.Descripcion);
        });

    }

    ///Funcion Agrega o modifica segun Desicion del Usuario
    var Actualizar = function () {

        

      

        if (K_OPERACION_ACTUAL == K_OPERACION_NUEVO) {
            var estadoCivil = {
                Descripcion: $('#txtDes').val(),
            };
            var args = JSON.stringify(estadoCivil);
            DatosAjax('POST', 'Paginas/Mantenimientos/frmEstadoCivil.aspx/InsertarCallBack', args, function () {
                Listar();
                $('#myModal').modal('hide');
                Mensaje("Sistema BoticService", "Transaccion Satisfactoriamente");
            });

        }
        else if (K_OPERACION_ACTUAL == K_OPERACION_ACTUALIZAR) {
            var estadoCivil = {
                IdEstadoCivil: $('#txtCod').val(),
                Descripcion: $('#txtDes').val(),
            };
            var args = JSON.stringify(estadoCivil);
            DatosAjax('POST', 'Paginas/Mantenimientos/frmEstadoCivil.aspx/ModificarCallBack', args, function () {
                Listar();
                $('#myModal').modal('hide');
                Mensaje("Sistema BoticService", "Transaccion Satisfactoriamente");
            });
        }
        $('#myModal').modal('hide');
    }


    $(function () {
        LoadDataTablesScripts(AllTables);
        // Add Drag-n-Drop feature
        WinMove();

        MessageBoxInitial();
        BoxControlInitial();

        /////Eventos



        $('#grilla').on("click", "tbody .btnMod", function (event, $td) {
            ControlBox("Modificar Esatdi Civil");
            Limpiar();
            K_OPERACION_ACTUAL = K_OPERACION_ACTUALIZAR;
            var cod = $(this).data("codigo").replace('"', "");
            cod = cod.replace('"', "")
            ObtienePorId($.trim(cod));
        });

        $('#grilla').on("click", "tbody .btnEli", function (event, $td) {
            var cod = $(this).data("codigo").replace('"', "");
            cod = cod.replace('"', "")
            MessageBox("Estado Civil", "¿Seguro que desea Eliminar El EstadoCivil con Codigo: |" + cod + "|?");
            $('#btnSi').data("cod", cod);
        });

        $('#btnSi').click(function () {
            var cod = $(this).data("cod");
            var estadoCivil = {
                IdEstadoCivil: cod
            };

            var args = JSON.stringify(estadoCivil);
            DatosAjax('POST', 'Paginas/Mantenimientos/frmEstadoCivil.aspx/EliminarCallBack', args, function (data) {
                Listar();
                $('#modalMensaje').modal('hide');
                Mensaje("Sistema BoticService", "Transaccion Satisfactoriamente");
            });
        });


        $("#btnAdd").click(function () {
            ControlBox("Agregar Estado Civil");
            Limpiar();
            K_OPERACION_ACTUAL = K_OPERACION_NUEVO;
        });

        //Input Text Desabilitado
        $("#txtCod").prop('disabled', true);



        ///Evento click(Ventana) Agrega o Modifica Sintoma
        $("#btnSave").click(function () {
            Actualizar();
        });



    });

    function AllTables() {
        Listar();
        LoadSelect2Script(Listar);

    }

    function Listar() {
        DatosAjax('POST', 'Paginas/Mantenimientos/frmEstadoCivil.aspx/ListarCallBack', "", function (dt) {
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
                        { "mDataProp": "IdEstadoCivil" },
                        { "mDataProp": "Descripcion", "sClass": "center" },
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
                    var cod = JSON.stringify(aData.IdEstadoCivil);
                    $('td button:eq(0)', nRow).data("codigo", cod);
                    $('td button:eq(1)', nRow).data("codigo", cod);
                },
                "bDestroy": true

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
        });
    }
</script>
