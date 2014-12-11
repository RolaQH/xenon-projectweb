<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmProveedor.aspx.cs" Inherits="Xenon.FronEnd.WebForm.Sales.Paginas.Mantenimientos.frmProveedor" %>

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
				<table class="table table-bordered table-striped table-hover table-heading table-datatable" id="grilla" style="width:3000px;">
					 
                    <thead id="headText">
						<tr>
                            <th>
                                <center><button id="btnAdd" style="background:#5BC0DE;"  class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal"><i class="fa fa-plus"></i></button></center>
                                <label><input type="hidden"name="search_rate" value="Buscar Codigo" class="search_init" /></label>

                            </th>
							<th><label><input type="text" name="search_rate" placeholder="B. Codigo" class="search_init" /></label></th>
                            <th><label><input type="text" name="search_votes" placeholder="B. TipoPersona" class="search_init" /></label></th>
							<th ><label><input type="text" name="search_votes" placeholder="B. Ruc" class="search_init" /></label></th>
							<th ><label><input type="text" name="search_rate" placeholder="B. Razon" class="search_init" /></label></th>
                            <th><label><input type="text" name="search_votes" placeholder="B. Contacto" class="search_init" /></label> </th>
                            <th><label><input type="text" name="search_votes" placeholder="B. Ubigeo" class="search_init" /></label></th>
                            <th><label><input type="text" name="search_votes" placeholder="B. Direccion" class="search_init" /></label></th>
                            <th><label><input type="text" name="search_votes" placeholder="B. Telefono" class="search_init" /></label></th>
                            <th><label><input type="text" name="search_votes" placeholder="B. Tel. Contact" class="search_init" /></label> </th>
                            <th><label><input type="text" name="search_votes" placeholder="B. Movil" class="search_init" /></label></th>
                            <th><label><input type="text" name="search_votes" placeholder="B. Fax" class="search_init" /></label></th>
                            <th ><label><input type="text" name="search_votes" placeholder="B. Email" class="search_init" /></label></th>
                            <th><label><input type="text" name="search_votes" placeholder="B. Web" class="search_init" /></label> </th>
                            <th><label><input type="text" name="search_votes" placeholder="B. Estado" class="search_init" /></label></th>
                        </tr>
					</thead>
					<tbody>
					</tbody>
					<tfoot style="background:#333;border:0px;color:white;">
						<tr>
                            <th style="background:#37455F;border:0px;" class="center">Acciones</th>
							<th style="background:#37455F;border:0px;" class="center">Codigo</th>
                            <th style="background:#37455F;border:0px;" class="center">Tipo Persona</th>
							<th style="background:#37455F;border:0px;" class="center">Ruc</th>
							<th style="background:#37455F;border:0px;" class="center">RazonSocial/Nombres</th>
                            <th style="background:#37455F;border:0px;" class="center">Contacto Proveedor</th>
                            <th style="background:#37455F;border:0px;" class="center">Ubigeo</th>
                            <th style="background:#37455F;border:0px;" class="center">Direccion</th>
                            <th style="background:#37455F;border:0px;" class="center">Telefono</th>
                            <th style="background:#37455F;border:0px;" class="center">Telefono Contacto</th>
                            <th style="background:#37455F;border:0px;" class="center">Movil</th>
                            <th style="background:#37455F;border:0px;" class="center">Fax</th>
                            <th style="background:#37455F;border:0px;" class="center">Email</th>
                            <th style="background:#37455F;border:0px;" class="center">Pagina Web</th>
                            <th style="background:#37455F;border:0px;" class="center">Estado</th>

						</tr>
					</tfoot>
				</table>
			</div>
		</div>
	</div>
</div>


<!-- Modal -->
<div class="modal fade bs-example-modal-lg" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    <div class="modal-header">
   <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
    <h4 class="modal-title" id="myModalLabel">Modal title</h4>
    </div>
        <form id="frmProveedor">
    <div class="modal-body">
      <div id="controls">
          
                <div class="row form-group">
                    <div class="col-sm-6">
                        <div class="row form-group"><div class="col-sm-4"><label>Codigo:</label></div> <div class="col-sm-4"><input class="form-control" name="codigo" placeholder="Codigo Proveedor" id="txtCod" type="text"/></div></div>
                        <div class="row form-group"><div class="col-sm-4"><label >Tipo Persona:</label></div> <div class="col-sm-6"><select name="tipoPersona" id="cboTipoPersona"></select></div></div>
                        <div class="row form-group"><div class="col-sm-4"><label >RUC/DNI</label></div> <div class="col-sm-6"><input name="documento" class="form-control" placeholder="Documento" id="txtDoc" type="text"/></div></div>
                        <div class="row form-group"><div class="col-sm-4"><label >Razon Social:</label></div> <div class="col-sm-8"><input name="razon" class="form-control" placeholder="Nombre Empresa" id="txtNom" type="text"/></div></div>
                        <div class="row form-group"><div class="col-sm-4"><label >Con. Proveedor:</label></div> <div class="col-sm-6"><input class="form-control" placeholder="Nombre Contacto" id="txtContacto" type="text"/></div></div>
                        <div class="row form-group"><div class="col-sm-4"><label>Pais: </label> <select id="cboPais"> </select></div>
                            <div class="col-sm-4" id="divDepartamento"><label >Departamento: </label> <select id="cboDepartamento"></select></div>
                            <div class="col-sm-4" id="divProvincia"><label >Provinvia: </label> <select id="cboProvinvia"></select></div>
                            <div class="col-sm-4" id="divDistrito"><label >Distrito: </label> <select id="cboDistrito"></select></div>
                            
                        </div>
                        <div class="row form-group"><div class="col-sm-4"><label >Direccion:</label></div> <div class="col-sm-8"><input class="form-control" placeholder="Direccion" id="txtDir" type="text"/></div></div>
                        
                        
                  </div>

                    <div class="col-sm-6">
                        <div class="row form-group"><div class="col-sm-4"><label >Telefono:</label></div> <div class="col-sm-6"><input class="form-control" data-mask="0000-0000"  placeholder="Telefono empresa" id="txtTel" type="text"/></div></div>
                        <div class="row form-group"><div class="col-sm-4"><label >Tel. Contacto:</label></div> <div class="col-sm-6"><input class="form-control" data-mask="0000-0000" placeholder="Telefono Contacto" id="txtTelCon" type="text"/></div></div>
                        <div class="row form-group"><div class="col-sm-4"><label >Movil:</label></div> <div class="col-sm-6"><input class="form-control" data-mask="0000-00000" placeholder="Nro. Celular" id="txtMovil" type="text"/></div></div>
                        <div class="row form-group"><div class="col-sm-4"><label >Fax:</label></div> <div class="col-sm-6"><input class="form-control" placeholder="Fax empresa" id="txtFax" type="text"/></div></div>
                        <div class="row form-group"><div class="col-sm-4"><label>Email:</label></div> <div class="col-sm-6"><input class="form-control" placeholder="Email empresa" id="txtEmail" type="text"/></div></div>
                        <div class="row form-group"><div class="col-sm-4"><label>Pagina Web:</label></div> <div class="col-sm-6"><input class="form-control" placeholder="Web Empresa" id="txtWeb" type="text"/></div></div>
                        <div class="row form-group"><div class="col-sm-4"><label>Estado:</label></div><div class="col-sm-6">
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
        </div>
        </div>
    <div class="modal-footer">
    <button  type="button" class="btn btn-default" style="height:35px;" data-dismiss="modal">Cancelar</button>
    <button type="submit" class="btn btn-primary" style="background-color:#D44646; border-color:#CD2F2F; height:35px;" id="btnSave">Guardar Cambios</button>
   </div>
        
        </form>
    </div>
    </div>

    
</div>


<div id="Mensajes"></div>


    <!--gritter-->
    <link rel="stylesheet" type="text/css" href="ScriptsDev/gritter/css/jquery.gritter.css" />
    <script type="text/javascript" src="ScriptsDev/gritter/js/jquery.gritter.js"></script>
    <!--Utilitarios-->
    <script src="Paginas/Mantenimientos/Utilil.js"></script>
    <!-- Mask Plugigin -->
    <script src="Scripts/jQuery-Mask-Plugin-master/dist/jquery.mask.min.js"></script>
    
<script src="Scripts/Bootstrap%20Validator/dist/js/bootstrapValidator.min.js"></script>
    <script src="Scripts/Bootstrap%20Validator/dist/js/language/es_ES.js"></script>

<script type="text/javascript">
    //$('.form-control').tooltip();

    function listarPais(cod) {
        DatosAjax('POST', 'Paginas/Mantenimientos/frmProveedor.aspx/ObtenerPais', cod, function (data) {
            
            var select = $('#cboPais');
            if (select.prop) {
                var options = select.prop('options');
            }
            else {
                var options = select.attr('options');
            }
            $('option', select).remove();

            $.each(data.d, function (val, text) {
                options[options.length] = new Option(text.text, text.id);
            });
            $("#cboPais").select2();
        });
    }

    function ListarDepartamento(cod) {
        DatosAjax('POST', 'Paginas/Mantenimientos/frmProveedor.aspx/ObtenerDepartamento', cod, function (data) {

            var select = $('#cboDepartamento');
            if (select.prop) {
                var options = select.prop('options');
            }
            else {
                var options = select.attr('options');
            }
            $('option', select).remove();

            $.each(data.d, function (val, text) {
                options[options.length] = new Option(text.text, text.id);
            });
            
            $("#cboDepartamento").select2();
        });
    }

    function ListarProvincia(cod) {
        DatosAjax('POST', 'Paginas/Mantenimientos/frmProveedor.aspx/ObtenerProvincia', cod, function (data) {

            var select = $('#cboProvinvia');
            if (select.prop) {
                var options = select.prop('options');
            }
            else {
                var options = select.attr('options');
            }
            $('option', select).remove();

            $.each(data.d, function (val, text) {
                options[options.length] = new Option(text.text, text.id);
            });
            
            $("#cboProvinvia").select2();
        });
    }

    function ListarDistrito(cod) {
        DatosAjax('POST', 'Paginas/Mantenimientos/frmProveedor.aspx/ObtenerDistrito', cod, function (data) {
           
            var select = $('#cboDistrito');
            if (select.prop) {
                var options = select.prop('options');
            }
            else {
                var options = select.attr('options');
            }

            
            $('option', select).remove();
            
            $.each(data.d, function (val, text) {
                options[options.length] = new Option(text.text, text.id);
            });
            
            $("#cboDistrito").select2();
        });

    }

    function OcultarCboUbigeo(ocul) {
        if (ocul == "fast") {
            $('#divDistrito').hide(ocul);
            $('#divPais').hide(ocul);
            $('#divProvincia').hide(ocul);
            $('#divDepartamento').hide(ocul);
        }
        else {
            $("#divDepartamento").show(ocul);
            $('#divDistrito').show(ocul);
            $('#divPais').show(ocul);
            $('#divProvincia').show(ocul);

        }

    }

    $(function () {
        OcultarCboUbigeo("fast");
        //$('.form-control').tooltip();
        $('#frmProveedor')
        .bootstrapValidator({
            container: 'tooltip',
            feedbackIcons: {
                valid: 'fa fa-check-circle',
                invalid: 'fa fa-times-circle',
                validating: 'fa fa-times-circle'
            },
            fields: {
                documento: {
                    validators: {
                        notEmpty: {
                            message: 'Se requiere Llenar Campo'
                        }
                    }
                },
                razon: {
                    validators: {
                        notEmpty: {
                            message: 'Se Requiere la Razon Social de Proveedor'
                        }
                    }
                }
            }
        })
        .on('error.field.bv', function (e, data) {

            // Get the tooltip
            var $parent = data.element.parents('.form-group'),
                $icon = $parent.find('.form-control-feedback[data-bv-icon-for="' + data.field + '"]'),
                title = $icon.data('bs.tooltip').getTitle();

            // Destroy the old tooltip and create a new one positioned to the right
            $icon.tooltip('destroy').tooltip({
                html: true,
                placement: 'right',
                title: title,
                container: '#myModal'
            });
        }).on('success.form.bv', function (e) {
            e.preventDefault();
            Actualizar();
        });

        //Scroll
        $("#contendido").mCustomScrollbar({
            theme: "minimal-dark",
            setHeight: 500,
        });


        listarPais(" ");
        
        $("#cboPais").on("select2-selecting", function (e) {
            var value = e.val;
            ListarDepartamento(value);
            $("#divDepartamento").show("slow");
            $('#divProvincia').hide("fast");
            $('#divDistrito').hide("fast");
        });
        
        $("#cboDepartamento").on("select2-selecting", function (e) {
            var value = e.val;
            ListarProvincia(value);
            $('#divDistrito').hide("fast");
            $("#divProvincia").show("slow");
        });
       
        $("#cboProvinvia").on("select2-selecting", function (e) {
            var value = e.val;
            
            ListarDistrito(value);
            $("#divDistrito").show("slow");
        });
        ///Llenar Combo TipoPersona
        CargarCboTipo();
        //Select2Test();
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
            DatosAjax('POST', 'Paginas/Mantenimientos/frmProveedor.aspx/EliminarCallBack', args, function (data) {
                listar();
                $('#modalMensaje').modal('hide');
                Mensaje("Sistema BoticService", "Transaccion Satisfactoriamente");
            });
        });


        $("#btnAdd").click(function () {
            
            Limpiar();
            K_OPERACION_ACTUAL = K_OPERACION_NUEVO;
            DatosAjax('POST', 'Paginas/Mantenimientos/frmProveedor.aspx/GeneraIdCallback', "", GenerarId);
        });

        //Input Text Desabilitado
        $("#txtCod").prop('disabled', true);

        ///Filtro Sintomas
        $('#btnBuscar').click(function () {
            CargarGrid("0");
        });

        ///Evento click(Ventana) Agrega o Modifica Sintoma
        //$("#btnSave").click(function () {
        //    Actualizar();
        //});



    });


    var K_OPERACION_ACTUAL = "";
    var K_OPERACION_NUEVO = "I";
    var K_OPERACION_ACTUALIZAR = "U";
    var TipoPersona = "";
    var Pais = "";


    function Limpiar() {
        $("#frmProveedor").find(":input").each(function () {
            this.value = "";
        });
    }

    ///Funcion Agrega o modifica segun Desicion del Usuario
    var Actualizar = function () {

        var proveedor = {
            IdProveedor: $('#txtCod').val(),
            IdTipo: $("#cboTipoPersona").val(),
            Documento: $("#txtDoc").val(),
            RazonSocialNombres: $("#txtNom").val(),
            ContactoProveedor: $("#txtContacto").val(),
            Ubigeo: $("#cboPais").val() + "-" + $("#cboDepartamento").val() + "-" + $("#cboProvinvia").val() + "-" + $("#cboProvinvia").val(),
            Direccion: $("#txtDir").val(),
            Telefono: $("#txtTel").val(),
            TelefonoContacto: $("#txtTelCon").val(),
            Movil: $("#txtMovil").val(),
            Fax: $("#txtFax").val(),
            Email: $("#txtEmail").val(),
            PaginaWeb: $("#txtWeb").val(),
            Estado: $('#chkEstado').is(':checked') ? "False" : "True"
        };

        var args = JSON.stringify(proveedor);

        if (K_OPERACION_ACTUAL == K_OPERACION_NUEVO) {

            DatosAjax('POST', 'Paginas/Mantenimientos/frmProveedor.aspx/InsertarCallBack', args, Agregar);

        }
        else if (K_OPERACION_ACTUAL == K_OPERACION_ACTUALIZAR) {
            DatosAjax('POST', 'Paginas/Mantenimientos/frmProveedor.aspx/ModificarCallBack', args, Modificar);
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

    

    ///Muestra datos en Venta al Modificar
    function CargarDatos(data) {
        var ubigeoArray = data.d.Ubigeo.split("-");
        listarPais(ubigeoArray[0] != null ? ubigeoArray[0] : "-1");
        ListarDepartamento(ubigeoArray[1] != null ? ubigeoArray[1] : "-1");
        ListarProvincia(ubigeoArray[2] != null ? ubigeoArray[2] : "-1");
        ListarDistrito(ubigeoArray[3] != null ? ubigeoArray[3] : "-1");
        OcultarCboUbigeo("slow");
        $('#txtCod').val(data.d.IdSintoma);
        $("#cboTipoPersona").val(data.d.IdTipo);
        $("#txtDoc").val(data.d.Documento);
        $("#txtNom").val(data.d.RazonSocialNombres);
        $("#txtContacto").val(data.d.ContactoProveedor);
        $("#txtDir").val(data.d.Direccion);
        $("#txtTel").val(data.d.Telefono);
        $("#txtTelCon").val(data.d.TelefonoContacto);
        $("#txtMovil").val(data.d.Movil);
        $("#txtFax").val(data.d.Fax);
        $("#txtEmail").val(data.d.Email);
        $("#txtWeb").val(data.d.PaginaWeb);
        if (data.d.Estado == "false")
            $('#chkEstado').prop('checked', true);
        else
            $('#chkEstado').prop('checked', false);
    }

    ///Invoca al Servidor para Mostrar Datos
    var ObtienePorId = function (id) {
        var args = id;
        DatosAjax('POST', 'Paginas/Mantenimientos/frmProveedor.aspx/ObtienePorIdCallBack', args, CargarDatos);

    }
    function listar() {
        DatosAjax('POST', 'Paginas/Mantenimientos/frmProveedor.aspx/ListarCallBack', "", config);
    }

    function config(dt) {
        var xdata = JSON.parse(dt.d);
        var asInitVals = [];
        var oTable = $('#grilla').dataTable({
            "sScrollX": "1000px",
            "aaData": xdata.data,
            "aoColumns": [
                {
                    "mDataProp": null,
                    "sClass": "center",
                    "sDefaultContent": '<center><button type="button"  style="background:#DBDBDB;color:#777;"  class="btn btn-primary btn-lg btnMod" data-toggle="modal" data-target="#myModal"><i class="fa fa-edit"></i></button> <button type="button" style="background:#D9534F;"  class="btn btn-primary btnEli" data-toggle="modal" data-target=".bs-example-modal-sm"><i class="fa fa-trash-o"></i></button></center>'
                },
                    { "mDataProp": "IdProveedor" },
                    { "mDataProp": "IdTipo", "sClass": "center" },
                    { "mDataProp": "Documento", "sClass": "center" },
                    { "mDataProp": "RazonSocialNombres", "sClass": "center" },
                    { "mDataProp": "ContactoProveedor", "sClass": "center" },
                    { "mDataProp": "Ubigeo", "sClass": "center" },
                    { "mDataProp": "Direccion", "sClass": "center" },
                    { "mDataProp": "Telefono", "sClass": "center" },
                    { "mDataProp": "TelefonoContacto", "sClass": "center" },
                    { "mDataProp": "Movil", "sClass": "center" },
                    { "mDataProp": "Fax", "sClass": "center" },
                    { "mDataProp": "Email", "sClass": "center" },
                    { "mDataProp": "PaginaWeb", "sClass": "center" },
                    { "mDataProp": "Estado", "sClass": "center" }
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
                var cod = JSON.stringify(aData.IdProveedor);
                $('td button:eq(0)', nRow).data("codigo", cod);
                $('td button:eq(1)', nRow).data("codigo", cod);
            },
            "bDestroy": true

        });
        
        var header_inputs = $("#headText input");
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
    function AllTables() {
        listar();
        LoadSelect2Script(config);
    }
    function MakeSelect2() {
        $('select').select2();
        $('.dataTables_filter').each(function () {
            $(this).find('label input[type=text]').attr('placeholder', 'Search');
        });
    }


    function CargarCboTipo() {
        DatosAjax('POST', 'Paginas/Mantenimientos/frmProveedor.aspx/ListarTipoPersonaCallBack', "", function (data) {
            var result = JSON.parse(data.d);
            var select = $('#cboTipoPersona');
            if(select.prop) {
                var options = select.prop('options');
            }
            else {
                var options = select.attr('options');
            }
            $('option', select).remove();

            $.each(result.data, function (val, text) {
                options[options.length] = new Option(text.text, text.id);
            });
            $("#cboTipoPersona").select2();
        });
    }
</script>