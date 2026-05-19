$(document).ready(function() {

  // On cache tous les contenus sauf le premier
  $('.tab-content').hide();
  $('.tab-content.active').show();

  // Au clic sur un titre d'onglet
  $('.tab-title').click(function() {
    // On récupère l'index de l'onglet cliqué
    let index = $(this).data('index');

    // On retire la classe active de tous les titres et contenus
    $('.tab-title').removeClass('active');
    $('.tab-content').hide();

    // On active l'onglet cliqué
    $(this).addClass('active');
    $('#tab-' + index).show();
  });

});
