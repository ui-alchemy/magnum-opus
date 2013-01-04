$(function(){
    $('a[data-component="tab"]').live('click', function(){
        var href = $(this).attr('href');

        $('div[data-component="tab-container"]').hide();
        $('a[data-component="tab"]').parent().removeClass('selected');

        $(this).parent().addClass('selected');
        $(href).show();
    });

});
