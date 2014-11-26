

var Mensaje = function (title, text) {
    $.gritter.add({
        // (string | mandatory) the heading of the notification
        title: title,
        // (string | mandatory) the text inside the notification
        text: text
    });
    return false;
}

var DatosAjax = function (type, url, data, fun) {
    $.ajax({
        type: type,
        contentType: 'application/json; charset=utf-8',
        url: url,
        data: data != "" ? "{arg: '" + data + "'}": "{}",
        dataType: "json",
        success: fun,
        error: function () {
            alter("error");
        }
    });
}

var AddBtnSave = function (indexTh) {
    $("#Grilla thead tr").each(function (index) {
        $(this).children("th").each(function (index2) {

            if (index2 == indexTh)
                $(this).append('<center><button id="btnAdd" style="background:#00c060;"  class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal"><i class="fa fa-plus"></i></button></center>');
        })
    })
}

var BoxControlInitial = function () {
    var control = $('#controls').html();
    $('#myModal').empty();
    var box = '<div class="modal-dialog">';
    box += '<div class="modal-content">';
    box += '<div class="modal-header">';
    box += '<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>';
    box += '<h4 class="modal-title" id="myModalLabel">Modal title</h4>';
    box += '</div>';
    box += '<div class="modal-body">';
    box += control;
    box += '</div>';
    box += '<div class="modal-footer">';
    box += '<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>';
    box += '<button type="button" class="btn btn-primary" id="btnSave">Guardar</button>';
    box += '</div>';
    box += '</div>';
    box += '</div>';
    $('#myModal').append(box);
}


var MessageBoxInitial = function () {
    var modal = '<div id="modalMensaje" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">';
    modal += '<div class="modal-dialog modal-sm">';
    modal += '<div class="modal-content">';
    modal += '<div class="modal-header">';
    modal += '<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>';
    modal += '<h4 class="modal-title" id="titleBox">...</h4>';
    modal += '</div>';
    modal += '<div class="modal-body" id="bodyBox">';
    modal += '....';
    modal += '</div>';
    modal += '<div class="modal-footer">';
    modal += '<button type="button" class="btn btn-default" data-dismiss="modal">No</button>';
    modal += '<button type="button" class="btn btn-primary" id="btnSi">Si</button>';
    modal += '</div>';
    modal += '</div>';
    modal += '</div>';
    modal += '</div>';
    $('#Mensajes').append(modal);
}

var MessageBox = function (title, body) {
    $('#titleBox').empty();
    $('#bodyBox').empty();
    $('#titleBox').html(title);
    $('#bodyBox').html(body);
}

var ControlBox = function (title) {
    $('#myModalLabel').empty();
    $('#myModalLabel').html(title);
    
}

$(function () {
    $('#ControlDiv').hide();
    MessageBoxInitial();
    BoxControlInitial();
});