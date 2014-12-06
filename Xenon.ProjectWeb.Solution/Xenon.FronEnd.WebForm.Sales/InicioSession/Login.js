$('#defaultForm input').on('keydown', function (e) {
    // Solo nos importa si la tecla presionada fue ENTER... (Para ver el código de otras teclas: http://www.webonweboff.com/tips/js/event_key_codes.aspx)
    if (e.keyCode === 13) {
        // Obtenemos el número del tabindex del campo actual
        var currentTabIndex = $(this).attr('tabindex');
        // Le sumamos 1 :P
        var nextTabIndex = parseInt(currentTabIndex) + 1;
        // Obtenemos (si existe) el siguiente elemento usando la variable nextTabIndex
        var nextField = $('[tabindex=' + nextTabIndex + ']');
        // Si se encontró un elemento:
        if (nextField.length > 0) {
            // Hacerle focus / seleccionarlo
            nextField.focus();
            // Ignorar el funcionamiento predeterminado (enviar el formulario)
            e.preventDefault();
        }
        // Si no se encontro ningún elemento, no hacemos nada (se envia el formulario)
    }
});

var ing = "";

function validacion() {
    $('#defaultForm').bootstrapValidator({
        message: 'Este valor no es válido',
        fields: {
            username: {
                validators: {
                    notEmpty: {
                        message: 'Se requiere que el nombre de usuario y no puede estar vacío'
                    },
                    stringLength: {
                        min: 4,
                        max: 10,
                        message: 'El nombre de usuario debe ser mayor de 6 y menos de 10 caracteres'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_\.]+$/,
                        message: 'El nombre de usuario sólo puede consistir alfabético , número, puntos o subrayados'
                    }
                }
            },
            password: {
                validators: {
                    notEmpty: {
                        message: 'La contraseña es necesaria y no puede estar vacío'
                    },
                    stringLength: {
                        min: 6,
                        max: 20,
                        message: 'La Contraseña debe ser mayor de 6 y menos de 10 caracteres'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_\.]+$/,
                        message: 'El nombre de usuario sólo puede consistir alfabético , número, puntos o subrayados'
                    }

                }
            }
        }
    });
}

function Limpiar() {
    $(".vali").val("");

}

$(function () {

    $('#defaultForm input').on('keydown', function (e) {
        // Solo nos importa si la tecla presionada fue ENTER... (Para ver el código de otras teclas: http://www.webonweboff.com/tips/js/event_key_codes.aspx)
        if (e.keyCode === 13) {
            // Obtenemos el número del tabindex del campo actual
            var currentTabIndex = $(this).attr('tabindex');
            // Le sumamos 1 :P
            var nextTabIndex = parseInt(currentTabIndex) + 1;
            // Obtenemos (si existe) el siguiente elemento usando la variable nextTabIndex
            var nextField = $('[tabindex=' + nextTabIndex + ']');
            // Si se encontró un elemento:
            if (nextField.length > 0) {
                // Hacerle focus / seleccionarlo
                nextField.focus();
                // Ignorar el funcionamiento predeterminado (enviar el formulario)
                e.preventDefault();
            }
            // Si no se encontro ningún elemento, no hacemos nada (se envia el formulario)
        }
    });


    Limpiar();
    $("#user").focus();
    validacion();

    $('#defaultForm').submit(function (event) {
        var login = {
            user: $('#user').val(),
            contrasena: $('#pass').val()
        }
        var args = JSON.stringify(login);

        ValidarIngreso(args, function (output, context) {
            var data = (JSON.parse(output));
            if (data.data == "Ok") {
                window.location.href = "../Index.aspx";
                return;
            }
            else {
                $("span").text("Usuario o Contraseña Incorrecta").show();

            }
        });
        event.preventDefault();
    });
});
