$(document).ready(function () {
    $('.statusSelect').hide();
    $('#chatWindow').hide();

    $('.groupChild,.closeChat').click(function () {
        $('#chatWindow,#mainMenu').fadeToggle('fast');
    });

    $('.statusChange').click(function () {
        $('.statusSelect').slideToggle('slow');
    });
    $('.statusSelect div').click(cambiarStatus);
});
//cambia el estado del usuario.
function cambiarStatus() {
    var status = $.trim(this.childNodes[2].data);
    var $currentStatus = $('.statusIcon');
    switch (status) {
        case "Disponible":
            console.log($currentStatus);
            $currentStatus.attr('src', '../imgs/available.png');
            break;
        case "Ausente":
            console.log($currentStatus);
            $currentStatus.attr('src', '../imgs/idle.png');
            break;
        case "Ocupado":
            $currentStatus.attr('src', '../imgs/away.png');
            console.log($currentStatus);
            break;
        case "Desconectado":
            $currentStatus.attr('src', '../imgs/disconnect.png');
            console.log($currentStatus);
            break;
    }
    $('.statusSelect').slideToggle('slow');
}