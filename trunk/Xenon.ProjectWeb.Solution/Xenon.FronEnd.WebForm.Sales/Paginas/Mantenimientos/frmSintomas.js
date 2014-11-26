
///Variables de Desicion de Actualizacion
var K_OPERACION_ACTUAL = "";
var K_OPERACION_NUEVO = "I";
var K_OPERACION_ACTUALIZAR = "U";

///Limpia controles
var Limpiar = function () {
    $("#txtCod").val("");
    $("#txtDes").val("");
}
$(function () {

    
    ///Evento de Eliminar Grilla
    $('#Grilla').on("click", "tbody .btnDel", function (event, $td) {
        $('.modal-header').css("background", $(this).css("background-color"));
        MessageBox("Sistema", "¿Seguro que desea Eliminar?");
    });

    ///Evento de Agregar Grilla
    $('#btnAdd').click(function () {
        $('#chkEstado').prop('checked', true);
        $('.modal-header').css("background", $(this).css("background-color"));
        ControlBox("Agregar Sintoma");

        Limpiar();
        var sintoma = {
            IdSintoma: 0
        };
        var args = JSON.stringify(sintoma);
        K_OPERACION_ACTUAL = K_OPERACION_NUEVO;
        DatosAjax('POST', 'Mantenimientos/frmSintomas.aspx/GeneraIdCallback', args, GenerarId);
    });

    ///Evento de Modificar Grilla
    $('#Grilla').on("click", "tbody .btnMod", function (event, $td) {
        $('.modal-header').css("background", $(this).css("background-color"));
        ControlBox("Modificar Sintoma");
        Limpiar();
        K_OPERACION_ACTUAL = K_OPERACION_ACTUALIZAR;
        var index = $(event.target).closest("tr").find('td')[0].innerHTML;
        var nuevo = index.replace('<span class="footable-toggle"></span>', '');
        ObtienePorId($.trim(nuevo));
        
    });
});