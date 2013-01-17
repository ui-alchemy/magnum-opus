$(function(){

    $('a[data-component="code-tab"]').live('click', function(e){
        e.preventDefault();

        var $section = $(this).closest('.code_example_section');
        $section.find('a[data-component="code-tab"]').parent().removeClass('selected');
        $(this).parent().addClass('selected');

        var type = $section.find('li.selected > a[data-component="example-tab"]').data('type');
        var format = $(this).data('format');
        showCodeExample($section, type, format);
    });

    $('a[data-component="example-tab"]').live('click', function(e){
        e.preventDefault();

        $('a[data-component="example-tab"]').parent().removeClass('selected');
        $(this).parent().addClass('selected');

        var $section = $(this).closest('.code_example_section');
        var type = $(this).data('type');
        var format = $section.find('li.selected > a[data-component="code-tab"]').data('format');

        $section.find('.example').hide();
        $section.find('.example.' + type).show();
        showCodeExample($section, type, format);
    });

    function showCodeExample($section, type, format) {
        $section.find('div[data-component="tab-container"]').hide();
        $section.find('div[data-component="tab-container"][data-type=' + type + '][data-format=' + format + ']').show();
    }

});
