<?php 
include_once "simple_html_dom.php";
$html = file_get_html('https://www.twitter.com/');

// Find all images 
foreach($html->find('img') as $element) 
       echo $element->src . '<br>';

// Find all links 
foreach($html->find('a') as $element) 
       echo $element->href . '<br>';
?>
