<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmPedido.aspx.cs" Inherits="Xenon.FronEnd.WebForm.Sales.ProcesoPedido.frmPedido" %>


<style>
    #grilla {
    width: 100% !Important;
}
        table {
            width: 100% !Important;
        }


</style>
<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><a href="#">Procesos</a></li>
			<li><a href="#">Pedido</a></li>
		</ol>
	</div>
</div>

<div class="row">
	<div class="col-xs-12 col-sm-6">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<span></span>
				</div>
				<div class="box-icons">
					<a class="collapse-link">
						<i class="fa fa-chevron-up"></i>
					</a>
					<a class="expand-link">
						<i class="fa fa-expand"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
            <div class="row form-group" style="margin-top:5px;margin-right:1px;">
                        <div class="col-sm-6" >
                            
                        </div>
                        <div class="col-sm-6"  >
                            <div class="input-group">
                              <input type="text" class="form-control" placeholder="Buscar Producto" id="txtBuscar" style="border:1px solid #2B5797;">
                              <div class="input-group-btn">
                                <button style="height:34px; color:#333;border:1px solid #2B5797;background-color:#fff;" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Action <span class="caret"></span></button>
                                <ul class="dropdown-menu dropdown-menu-right" role="menu">
                                  <li><a href="#">Clseficacion Terapeutica</a></li>
                                  <li><a href="#">Cuadro Clinico</a></li>
                                  <li><a id="btnPrin">Prinicipios Activos</a></li>
                                  <li><a href="#">Sintomas</a></li>
                                </ul>
                              </div><!-- /btn-group -->
                            </div>
                        </div>
            </div>
            <div class="row form-group" role="group" >
                   <div class="col-sm-3" role="group"  >
                       <div id="simple_gallery" class="box-content" style="padding: 5px;" >
                            <a class="fancybox" rel="gallery1" href="http://www.thedrugstorelimited.com/Shopping/repository/product/Panadol%20Extra%20Tablets%2032.jpg" title="Westfield Waterfalls - Middletown CT Lower (Graham_CS)">
					    
                            <img  draggable="true" id="proimg" src="Images/Productos/Panadol.jpg" alt="" style="width:135px;height:160px;padding: 0px; cursor:move;"/>
				            </a>
                       </div>
                     </div>
                   <div class="col-sm-9" role="group" >
                <div class="box-content" style="padding: 5px;">
				<div id="tabs">
					<ul>
						<li><a href="#tabs-1">Descipcion</a></li>
						<li><a href="#tabs-2">Detalle</a></li>
					</ul>
					<div id="tabs-1">
						<p>
							Android is an operating system based on the Linux kernel, and designed primarily for touchscreen
							mobile devices such as smartphones and tablet computers. Initially developed by Android, Inc.,
							which Google backed financially and later bought in 2005, Android was unveiled in 2007 along with
							the founding of the Open Handset Alliance: a consortium of hardware, software, and telecommunication
							companies devoted to advancing open standards for mobile devices. The first publicly available
							smartphone running Android, the HTC Dream, was released on October 22, 2008.
						</p>
					</div>
					<div id="tabs-2">
						<p>
							Firefox OS (project name: Boot to Gecko, also known as B2G) is a Linux-based open-source operating
							system for smartphones and tablet computers and is set to be used on smart TVs. It is being developed
							by Mozilla, the non-profit organization best known for the Firefox web browser. Firefox OS is
							designed to provide a "complete" community-based alternative system for mobile devices, using open
							standards and approaches such as HTML5 applications, JavaScript, a robust privilege model, open web
							APIs to communicate directly with cellphone hardware, and application marketplace. As such,
							it competes with proprietary systems such as Apple's iOS, Google's Chrome OS and Microsoft's Windows
							Phone, as well as other open source systems such as Android, Jolla's Sailfish OS and Ubuntu Touch.
						</p>
					</div>
				</div>
			</div>

            </div>
            </div>
            
                <div class="box-content no-padding table-responsive" id="contendido">
                    <table style="width:100%;" class="table table-bordered table-striped table-hover table-heading table-datatable" id="grillaProduct">
					<thead>
						<tr>
						    <th style="border:0px;" class="center">Codigo</th>
							<th style="border:0px;" class="center">Descripcion</th>
							<th style="border:0px;" class="center">Producto</th>
                            <th style="border:0px;" class="center">Cantidad</th>
                            <th style="border:0px;" class="center">SubTotal</th>
                            <th style="border:0px;" class="center">Total</th>
                            <th style="border:0px;" class="center">SubTotal</th>
                            <th style="border:0px;" class="center">Total</th>
						</tr>
					</thead>
					<tbody id="xx">
					</tbody>
					<tfoot style="background:#fff;border:0px;color:#333;text-align:center;vertical-align:middle;">
						<tr>
                            <th style="border:0px;" class="center" colspan="3"></th>
                            <th style="border:0px;" class="center">Can.Total: <span style="font-size:15px;">0.5</span></th>
                            <th style="border:0px;" class="center">Sum: 11</th>
                            <th style="border:0px;" class="center">Total: 5.5</th>
						</tr>
					</tfoot>
				</table>
                </div>
            
			</div>

		</div>


      
    <div class="col-xs-12 col-sm-6">
		<div class="box" id="boxs">
			<div class="box-header">
				<div class="box-name">
					<span></span>
				</div>
				<div class="box-icons">
					<a class="collapse-link">
						<i class="fa fa-chevron-up"></i>
					</a>
					<a class="expand-link">
						<i class="fa fa-expand"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
             
            <h3 style="text-align:right;margin:5px;margin-right:20px;">
                Total: S/. 11.5
            </h3>
            <div class="box-content no-padding table-responsive" >
				<table style="width:100%;" class="table table-bordered table-striped table-hover table-heading table-datatable" id="grilla">
					<thead>
						<tr>
						    <th style="border:0px;" class="center">Acciones</th>
							<th style="border:0px;" class="center">Codigo</th>
							<th style="border:0px;" class="center">Producto</th>
                            <th style="border:0px;" class="center">Cantidad</th>
                            <th style="border:0px;" class="center">SubTotal</th>
                            <th style="border:0px;" class="center">Total</th>
						</tr>
					</thead>
					<tbody >
					</tbody>
					<tfoot style="background:#fff;border:0px;color:#333;text-align:center;vertical-align:middle;">
						<tr>
                            <th style="border:0px;" class="center" colspan="3"></th>
                            <th style="border:0px;" class="center">Can.Total: <span style="font-size:15px;">0.5</span></th>
                            <th style="border:0px;" class="center">Sum: 11</th>
                            <th style="border:0px;" class="center">Total: 5.5</th>
						</tr>
					</tfoot>
				</table>
			</div>
                <button type="button" style="height:35px;text-align:center;vertical-align:middle;background:#D9534F;" class="btn btn-primary btnEli" data-toggle="modal" data-target=".bs-example-modal-sm"><i class="fa fa-trash-o"></i> Imprimir</button>
            <button type="button" style="height:35px;text-align:center;vertical-align:middle; background:#D9534F;" class="btn btn-primary btnEli" data-toggle="modal" data-target=".bs-example-modal-sm"><i class="fa fa-trash-o"></i> Generar Pedido</button>
			
        
        </div>
		</div>

	</div>


<%--<link href="Scripts/Telerik%20Style/styles/examples-offline.css" rel="stylesheet" />--%>
<script src="Paginas/Mantenimientos/Utilil.js"></script>

<script>
    var content;

    
    ///Datos en Venta
    function init() {
        content = document.querySelector('#grilla');
        content.addEventListener('dragover', dragsobreContent, false);
        content.addEventListener('dragleave', dragsalioContent, false);
        content.addEventListener('drop', manejarDrop, false);
        var img = document.querySelector('#proimg');
        
        img.addEventListener('dragstart', dragIniciado, false);
        img.addEventListener('dragend', dragFinalizado, false);
       
        
    }

    function dragIniciado(e) {
        var padre = document.createElement('p');
        var clon = this.cloneNode(true);
        padre.appendChild(clon);
        e.dataTransfer.setData('text', padre.innerHTML);
    }

    function manejarDrop(e) {
        e.preventDefault();
    }

    function dragsobreContent(e) {
        e.preventDefault();
        //this.classList.add("anima");
        var box = document.querySelector("#boxs");
        box.classList.add("anima");
        return false;
    }

    function dragsalioContent(e) {
        this.classList.remove("anima");
        var box = document.querySelector("#boxs");
        box.classList.remove("anima");
    }


    function dragFinalizado(e) {

    }

// Create fancybox2 gallery
function DemoGallery(){
	$('.fancybox').fancybox({
		openEffect	: 'none',
		closeEffect	: 'none'
	});
}

function listar() {
    var data = { d:[{
            codigo: '001',
            producto: 'Panadol',
            precio: '0.5',
            cantidad: '11',
            total: '5.5'
        }]
    };
    var xdata = JSON.stringify(data);
    var d = JSON.parse(xdata);
    var oTable = $('#grilla').dataTable({
        "aaData": d.d,
        "aoColumns": [
            {
                "bSortable": false ,
                "mDataProp": null,
                "sClass": "center",
                "sDefaultContent": '<center><button type="button"  style="background:#DBDBDB;color:#777;"  class="btn btn-primary btn-lg btnMod" data-toggle="modal" data-target="#myModal"><i class="fa fa-edit"></i></button> <button type="button" style="background:#D9534F;"  class="btn btn-primary btnEli" data-toggle="modal" data-target=".bs-example-modal-sm"><i class="fa fa-trash-o"></i></button></center>'
            },
                { "mDataProp": "codigo", "bSortable": false },
                { "mDataProp": "producto", "sClass": "center", "bSortable": false },
                { "mDataProp": "precio", "sClass": "center", "bSortable": false },
                { "mDataProp": "cantidad", "sClass": "center", "bSortable": false },
                { "mDataProp": "total", "sClass": "center", "bSortable": false }
        ],
        "aaSorting": [[0, "asc"]],
        "sDom": "<'box-content'<'col-sm-6'f><'col-sm-6 text-right'l><'clearfix'>>rt<'box-content'<'col-sm-6'i><'col-sm-6 text-right'p><'clearfix'>>",
        "sPaginationType": "bootstrap",
        "oLanguage": {
            "sSearch": "",
            "sLengthMenu": '_MENU_'
        },
        "fnRowCallback": function (nRow, aData, iDisplayIndex, iDisplayIndexFull) {
            //var cod = JSON.stringify(aData.IdEstadoCivil);
            //$('td button:eq(0)', nRow).data("codigo", cod);
            //$('td button:eq(1)', nRow).data("codigo", cod);
        },
        "bDestroy": true

    });
    $('#grilla_length').hide("fast");
    $("#grilla_filter").css("margin", "10px");
    $('.dataTables_paginate').css("float", "right");
}

function ListarProducto(Dato) {
    DatosAjax('POST', 'ProcesoPedido/frmPedido.aspx/BuscarProductoCallBack', Dato, function (data) {
        var oTable = $('#grillaProduct').dataTable({
            "aaData": data.d,
            "bFilter": false,
            "bPaginate": true,
            "aoColumns": [
                    { "mDataProp": "IdProducto", "bSortable": false },
                    { "mDataProp": "Producto", "sClass": "center", "bSortable": false },
                    { "mDataProp": "Descripcion", "sClass": "center", "bSortable": false },
                    { "mDataProp": "LaboratorioMarca", "sClass": "center", "bSortable": false },
                    { "mDataProp": "TipoFarmaceutico", "sClass": "center", "bSortable": false },
                    { "mDataProp": "PrecioVentaUnidad", "sClass": "center", "bSortable": false },
                    { "mDataProp": "PrecioVenta", "sClass": "center", "bSortable": false },
                    { "mDataProp": "Cantidad", "sClass": "center", "bSortable": false }

            ],
            "aaSorting": [[0, "asc"]],
            "sDom": "<'box-content'<'col-sm-6'f><'col-sm-6 text-right'l><'clearfix'>>rt<'box-content'<'col-sm-6'i><'col-sm-6 text-right'p><'clearfix'>>",
            "sPaginationType": "bootstrap",
            "oLanguage": {
                "sSearch": "",
                "sLengthMenu": '_MENU_'
            },
            "fnRowCallback": function (nRow, aData, iDisplayIndex, iDisplayIndexFull) {
                //var cod = JSON.stringify(aData.IdEstadoCivil);
                //$('td button:eq(0)', nRow).data("codigo", cod);
                //$('td button:eq(1)', nRow).data("codigo", cod);
            },
            "bDestroy": true

        });
    });
}
$(document).ready(function () {

    init();
    LoadDataTablesScripts(listar);
    ListarProducto(" ");
    $('#xx').on('click', 'tr', function () {
        alert($(this).find("td:eq(0)").text());
    });

	// Load Fancybox2 and make gallery in callback
    LoadFancyboxScript(DemoGallery);
    WinMove();
    $("#tabs").tabs();
    // Droppable for example of trash
    //$(".drop div.col-sm-2").draggable({ containment: '.dropbox' });
    //$('#trash').droppable({
    //    drop: function (event, ui) {
    //        $(ui.draggable).remove();
    //    }
    //});
    var icons = {
        header: "ui-icon-circle-arrow-e",
        activeHeader: "ui-icon-circle-arrow-s"
    };
    // Make accordion feature of jQuery-UI
    $("#accordion").accordion({ icons: icons });
    $("#accordion div").css("height", "145px");

    
});


$('#txtBuscar').on('keydown', function (e) {
    // Solo nos importa si la tecla presionada fue ENTER... (Para ver el código de otras teclas: http://www.webonweboff.com/tips/js/event_key_codes.aspx)
    if (e.keyCode === 13) {
        // Obtenemos el número del tabindex del campo actual
        ListarProducto($("#txtBuscar").val());
    }
});
</script>