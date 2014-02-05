<?php 
/*
|--------------------------------------------------------------------------
| MY Custom Modules
|--------------------------------------------------------------------------
|
| Specifies the module controller (key) and the name (value) for fuel
*/


/*********************** EXAMPLE ***********************************

$config['modules']['quotes'] = array(
	'preview_path' => 'about/what-they-say',
);

$config['modules']['projects'] = array(
	'preview_path' => 'showcase/project/{slug}',
	'sanitize_images' => FALSE // to prevent false positives with xss_clean image sanitation
);

*********************** /EXAMPLE ***********************************/



/*********************** OVERWRITES ************************************/

$config['module_overwrites']['categories']['hidden'] = TRUE; // change to FALSE if you want to use the generic categories module
$config['module_overwrites']['tags']['hidden'] = TRUE; // change to FALSE if you want to use the generic tags module

/*********************** /OVERWRITES ************************************/


$config['modules']['products_categories'] = array(
    'display_field' => 'name',
   // 'module_name' => 'products_categories',
);

$config['modules']['products'] = array(
    'display_field' => 'item_name', 
);

$config['modules']['products_images'] = array(
    
);