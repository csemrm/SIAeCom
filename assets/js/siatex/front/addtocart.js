(function($)
{

    $(document).ready(function() {
        select_type = $('#select_type').val();
        $("#tabs").tabs({
            active: select_type,
            activate: function(event, ui) {
                // alert((ui.newPanel.selector+ui.oldPanel.selector));

                previous_val = ((ui.oldPanel.selector).split('-')[1] - 1);

                selected_val = ((ui.newPanel.selector).split('-')[1] - 1);
                //alert(previous_val + ' selected_val'+ selected_val);
                $('#products_price' + previous_val).removeClass('show');
                $('#products_price' + previous_val).addClass('hide');

                $('#products_price' + selected_val).removeClass('hide');
                $('#products_price' + selected_val).addClass('show');
            }
        });

        $('#products_price' + select_type).removeClass('hide');
        $('#products_price' + select_type).addClass('show');

        $('#select_type').change(function() {

            val = $(this).val();
            $("#tabs").tabs({active: val});


            select_type = val;
        });
    });


})(jQuery);
 