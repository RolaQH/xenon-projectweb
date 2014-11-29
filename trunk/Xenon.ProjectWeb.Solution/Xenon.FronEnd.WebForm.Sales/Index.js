var mu = "";
var claseLink = "";
var claseDrop = "";
var dropurl = "";
var icono = "";
var url = "";
var nomre = "";
$(function () {
    Identificar();
    $('#cerrarSession').click(function () {
        CerrarSession("", function (output, context) {
            window.location.href = "InicioSession/Login.aspx";
            return;
        });
    });

});

function Identificar() {
    IdentificarUsuario("", function (output, context) {
        var result = (JSON.parse(output));
        if (result.data != "") {
            UserData(result.data);
            GenerateMenu(result.data);
        }
    });
}

function GenerateMenu(data) {
    var rol = data.IdRol;

    GenerarMenu(rol, function (output, context) {
        var result = (JSON.parse(output));
        CrearMenu(result.data);
    });
}

function retornaMenu() {
    mu = '<li ' + claseDrop + ' >';
    mu += '<a ' + claseLink + dropurl + '>';
    mu += '<i class="' + icono + '"></i><span class="hidden-xs">' + nombre + '</span>';
    mu += '</a>';
    return mu;
}

var CrearMenu = function (data) {
    $.each(data, function (key, val) {
        if (val.IdMenu == val.PadreId) {

            url = val.Url;
            icono = val.Icono;
            nombre = val.NombreMenu;
            claseLink = 'class="ajax-link" ';
            claseDrop = "";
            dropurl = ' href="' + url + '"';
            $('#menu').data("tag", val.IdMenu);
            CrearSubMenu(data);
        }
    });
};

var CrearSubMenu = function (data, menu, a) {
    var submenu = '<ul class="dropdown-menu">';
    var suma = 0;
    $.each(data, function (key, val) {
        if (val.PadreId == $('#menu').data("tag") && val.IdMenu != val.PadreId) {
            claseLink = 'class="dropdown-toggle"';
            claseDrop = 'class="dropdown"';
            dropurl = "";
            submenu += '<li><a class="ajax-link" href="' + val.Url + '">' + val.NombreMenu + '</a></li>';
            suma += 1;
        }
    });
    if (suma > 0) {
        var men = retornaMenu();
        men = men + submenu + "</ul></li>";
        $("#menu").append(men);
    }
    else {
        var men = retornaMenu();
        men = men + "</li>";
        $("#menu").append(men);
    }
    submenu = "";
}

var UserData = function (data) {
    $('#imgUser').attr("src", data.Foto);
    $('#user').text(data.Nombres);
};