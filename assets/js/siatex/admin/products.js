(function($)
{

    $(document).ready(function() {

        id = $("#id").attr('value');

        if (parseInt(id)) {
            $.ajax({
                type: "POST",
                url: "/index.php/products_images/get_products_images/" + id,
                dataType: 'json',
                success: function(msg) {
                    for (index = 0; index < msg.length; ++index) {
                        image = msg[index];

                        $('#products_images_' + index + '_item_image').val(image.item_image);
                        $('input#products_images_' + index + '_id').val(image.id);

                    }
                }
            });

            $.ajax({
                type: "POST",
                url: "/index.php/products_color_table/get_products_color_table/" + id,
                dataType: 'json',
                success: function(products_color_tables) {
                    for (index = 0; index < products_color_tables.length; ++index) {
                        products_color_table = products_color_tables[index];

                        $('#products_color_table_' + index + '_color_code').val(products_color_table.color_code);
                        $('#products_color_table_' + index + '_color_image').val(products_color_table.color_image);
                        $('#products_color_table_' + index + '_id').val(products_color_table.id);
                    }
                }
            });


            $.ajax({
                type: "POST",
                url: "/index.php/products_measurement_table/get_products_measurement_table/" + id,
                dataType: 'json',
                success: function(products_measurement_tables) {
                    for (index = 0; index < products_measurement_tables.length; ++index) {
                        products_measurement_table = products_measurement_tables[index];
                        $('#products_measurement_table_' + index + '_type').val(products_measurement_table.type);
                        $('#products_measurement_table_' + index + '_size').val(products_measurement_table.size);
                        $('#products_measurement_table_' + index + '_length').val(products_measurement_table.length);
                        $('#products_measurement_table_' + index + '_chest').val(products_measurement_table.chest);
                        $('#products_measurement_table_' + index + '_sleeve').val(products_measurement_table.sleeve);
                        $('#products_measurement_table_' + index + '_price').val(products_measurement_table.price);
                        $('#products_measurement_table_' + index + '_id').val(products_measurement_table.id);
                    }
                }
            });
        }

    });


})(jQuery);
 