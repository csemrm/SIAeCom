(function($)
{

    $(document).ready(function() {
        $('.add_cart').click(function() {
            products_id = $('#products_id').val();
            quantity = $('#quantity').val();
            color_type = $('select#color_type option:selected').text();
            select_type = $('select#select_type option:selected').text();
            select_type_val = $('#select_type').val();

            color_price = $('span#color_price' + select_type_val).text();
            black_white = $('span#black_white' + select_type_val).text();

            color_type_error = quantity_error = '';
            price = 0;
            if ($.trim(color_type) == 'Select Color') {
                color_type_error = 'Select Color <br/>';

            } else if (color_type == 'Color') {
                price = color_price;
            } else {
                price = black_white;
            }

            if (quantity < 10) {
                quantity_error = 'Minimum Qty. 10 Pcs Per Color';
            }
            if (color_type_error + quantity_error) {
                $('#cart_error').empty().html(color_type_error + quantity_error);
                return false;
            } else {
//                'id' = > 'sku_123ABC',
//                        'qty' = > 133,
//                        'price' = > 39.95,
//                        'name' = > 'T-Shirt',
//                        'options' = > array('Size' = > 'L', 'Color' = > 'Red')

                $.ajax({
                    type: "POST",
                    url: "/index.php/addtocart/insert",
                    data: 'products_id= ' + products_id + '&quantity= ' + quantity + '&color_type= ' + color_type + ' &select_type= ' + select_type + ' &price= ' + price,
//                    dataType: 'json',
                    success: function(msg) {
                        if (msg) {
                            $('#cart_error').empty().html('success');
                            setTimeout(function() {
                                document.location.href = '/index.php/addtocart/';
                            }, 500);
                        } else {
                            $('#cart_error').empty().html('fail to add');
                        }
                    }
                });
            }

        });
    });


})(jQuery);
 