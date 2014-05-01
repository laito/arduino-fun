<?php
if (isset($_GET['msg']) && $_GET['msg'] != "")  //send.php?msg=put+your+message_here
{
    $message = $_GET['msg'];
    $msgfile = fopen('messages.txt','w');
    fwrite($msgfile,$message);
    fclose($msgfile);
}
?>
