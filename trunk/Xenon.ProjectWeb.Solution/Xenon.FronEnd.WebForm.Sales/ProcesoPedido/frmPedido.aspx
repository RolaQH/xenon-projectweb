<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmPedido.aspx.cs" Inherits="Xenon.FronEnd.WebForm.Sales.ProcesoPedido.frmPedido" %>
<link href="Scripts/Kendo%20UI%20Web%20Q1%202014/styles/kendo.common.min.css" rel="stylesheet" />
<link href="Scripts/Kendo%20UI%20Web%20Q1%202014/styles/kendo.default.min.css" rel="stylesheet" />
<link href="Scripts/Kendo%20UI%20Web%20Q1%202014/styles/kendo.rtl.min.css" rel="stylesheet" />
<link href="Scripts/Kendo%20UI%20Web%20Q1%202014/styles/kendo.metro.min.css" rel="stylesheet" />
 <link href="Scripts/malihu-custom-scrollbar-plugin-master/jquery.mCustomScrollbar.css" rel="stylesheet" />
 <script src="Scripts/Kendo%20UI%20Web%20Q1%202014/js/kendo.web.min.js"></script>
<script src="Scripts/Kendo%20UI%20Web%20Q1%202014/examples/content/shared/js/console.js"></script>

<script src="Scripts/DataTables-1.10.4/extensions/Responsive/js/dataTables.responsive.js"></script>
<link href="Scripts/DataTables-1.10.4/extensions/Responsive/css/dataTables.responsive.css" rel="stylesheet" />
<link href="ProcesoPedido/estilosTable.css" rel="stylesheet" />

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
                              <span class="input-group-addon" style="color:#fff;"><i class="fa fa-search-plus"></i></span>
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
                <!--Grid Telerik -->

                 <div id="example" class="k-content">
            <div id="grid"></div>

            <script type="text/x-kendo-template" id="template">
                <div class="tabstrip">
                    <ul>
                        <li class="k-state-active">
                           Orders
                        </li>
                        <li>
                            neworders
                        </li>
                        <li>
                            Contact Information
                        </li>
                    </ul>
                    <div>
                        <div class="orders"></div>
                        
                    </div>
                    <div>
                        <div class="neworders"></div>
                    </div>
                    <div>
                        <div class='employee-details'>
                            <ul>
                                <li><label>Country:</label>#= Country #</li>
                                <li><label>City:</label>#= City #</li>
                                <li><label>Address:</label>#= Address #</li>
                                <li><label>Home Phone:</label>#= HomePhone #</li>
                            </ul>
                        </div>
                    </div>
                </div>

            </script>

            <script>
                $(document).ready(function () {
                    var element = $("#grid").kendoGrid({
                        dataSource: {
                            type: "odata",
                            transport: {
                                read: "http://demos.telerik.com/kendo-ui/service/Northwind.svc/Employees"
                            },
                            pageSize: 5,
                            serverPaging: true,
                            serverSorting: true
                        },
                        selectable: "multiple",
                        scrollable: true,
                        height: 300,
                        sortable: true,
                        pageable: true,
                        
                        detailInit: detailInit,
                        dataBound: function () {
                            this.expandRow(this.tbody.find("tr.k-master-row").first());
                        },
                        detailTemplate: kendo.template($("#template").html()),
                        columns: [
                            {
                                field: "FirstName",
                                title: "First Name",
                                width: "120px"
                            },
                            {
                                field: "LastName",
                                title: "Last Name",
                                width: "120px"
                            },
                            {
                                field: "Country",
                                width: "120px"
                            },
                            {
                                field: "City",
                                width: "120px"
                            },
                            {
                                field: "Title",
                                width: "120px"
                            }
                        ]
                    });
                });

                function detailInit(e) {
                    var detailRow = e.detailRow;

                    detailRow.find(".tabstrip").kendoTabStrip({
                        animation: {
                            open: { effects: "fadeIn" }
                        }
                    });

                    detailRow.find(".orders").kendoGrid({
                        dataSource: {
                            type: "odata",
                            transport: {
                                read: "http://demos.telerik.com/kendo-ui/service/Northwind.svc/Orders"
                            },
                            serverPaging: true,
                            serverSorting: true,
                            serverFiltering: true,
                            pageSize: 5,
                            filter: { field: "EmployeeID", operator: "eq", value: e.data.EmployeeID }
                        },
                        scrollable: false,
                        sortable: true,
                        pageable: true,
                        columns: [
                            { field: "OrderID", title: "ID", width: "56px" },
                            { field: "ShipCountry", title: "Ship Country", width: "110px" },
                            { field: "ShipAddress", title: "Ship Address" },
                            { field: "ShipName", title: "Ship Name", width: "190px" }
                        ]
                    });

                    detailRow.find(".neworders").kendoGrid({
                        dataSource: {
                            type: "odata",
                            transport: {
                                read: "http://demos.telerik.com/kendo-ui/service/Northwind.svc/Orders"
                            },
                            serverPaging: true,
                            serverSorting: true,
                            serverFiltering: true,
                            pageSize: 5,
                            filter: { field: "EmployeeID", operator: "eq", value: e.data.EmployeeID }
                        },
                        scrollable: false,
                        sortable: true,
                        pageable: true,
                        columns: [
                            { field: "OrderID", title: "ID", width: "56px" },
                            { field: "ShipCountry", title: "Ship Country", width: "110px" },
                            { field: "ShipAddress", title: "Ship Address" },
                            { field: "ShipName", title: "Ship Name", width: "190px" }
                        ]
                    });
                }
            </script>
            <style scoped>
                .k-detail-cell .k-tabstrip .k-content {
                    padding: 0.2em;
                }
                .employee-details ul
                {
                    list-style:none;
                    font-style:italic;
                    margin: 15px;
                    padding: 0;
                }
                .employee-details ul li
                {
                    margin: 0;
                    line-height: 1.7em;
                }

                .employee-details label
                {
                    display:inline-block;
                    width:90px;
                    padding-right: 10px;
                    text-align: right;
                    font-style:normal;
                    font-weight:bold;
                }
            </style>
        </div>
                <!-- Cierre Grid-->

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
					<tbody>
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
$(document).ready(function () {

    init();

    LoadDataTablesScripts(listar);
    
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
</script>