<?php
/* template head */
/* end template head */ ob_start(); /* template body */ ?><ol>
    <li>dsadasd</li>
    <li>sadsad</li>
    <li>sdad</li>
    <li>&nbsp;</li>
</ol>
<?php  /* end template body */
return $this->buffer . ob_get_clean();
?>