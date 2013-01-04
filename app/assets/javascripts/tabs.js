$(document).ready(function(){
    var tab_id = $('body').data('id');

    $('#appnav a[data-id="' + tab_id + '"]').addClass('selected');
});
