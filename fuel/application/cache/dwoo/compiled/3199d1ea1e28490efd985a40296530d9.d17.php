<?php
/* template head */
/* end template head */ ob_start(); /* template body */ ?><h4>Head Office</h4>
        <p>Siatex Bangladesh Limited</p>
        <p>House # 8, Road # 6, BLK "E"</p>
        <p>Dhaka-1212. Bangladesh.</p>
        <p> Phone: (+880-2) 985-9720</p><br />

        <h4>Canada Sales Office  </h4>
        <p> APTEX Canada Limited</p>
        <p> 22 Hagley Road</p>
        <p> Toronto, M1M 1S9</p>
        <p> ON Canada</p><?php  /* end template body */
return $this->buffer . ob_get_clean();
?>