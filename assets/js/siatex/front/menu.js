(function($)
{
    $('#theMenu').Accordion({
        active: 'h3.selected',
        header: 'h3.head',
        alwaysOpen: true,
        animated: true,
        showSpeed: 200,
        hideSpeed: 400
    });
    for (i = 1; i <= 6; i++) {
        $('#xtraMenu' + i).Accordion({
            active: 'h4.selected',
            header: 'h4.head',
            alwaysOpen: true,
            animated: true,
            showSpeed: 200,
            hideSpeed: 400
        });
    }


})(jQuery);
