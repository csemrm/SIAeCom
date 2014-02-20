(function($)
{

    $(document).ready(function() {

        $("#tabs").tabs();

        $('#select_type').change(function() {

            val = $(this).val();
            $("#tabs").tabs({active: val});
        });
    });


})(jQuery);
 