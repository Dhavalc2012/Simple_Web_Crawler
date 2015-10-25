<?php
include_once "simple_html_dom.php";
$html = file_get_html('http://www.stupidsid.com/');
$ret = $html->find('title');
foreach($ret as $str)
{
//echo $str . "<br>";
$var = htmlspecialchars($str);
//echo $var;
$var = explode('title', $var);
//echo $var[1];
$var = $var[1];
//echo "<br>" . $var;
$var = explode('&', $var);
//echo "<br>" .$var[1];
$var = $var[1];
$var = explode(';', $var);
echo '<br>' .$var[1];


}


?>
