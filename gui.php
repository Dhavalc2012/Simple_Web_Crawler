<?php
session_start();
if($_SESSION["login"] != "true"){

	include_once 'redirect.php';
		redirect_to('login.php');
}
?>
<?php 
include_once "connect.php" ;
?> 
<html>
<head><title>WEB SPIDER</title>
		<style>
	#logout {
		position: fixed;
		z-index: 999;
		display: block;
		right: 2em;
		top:2em;

	}
	</style>
 <link rel="stylesheet" href="main.css">
<link href='http://fonts.googleapis.com/css?family=Oswald:400,700' rel='stylesheet' type='text/css'>
</head>
<body>
	<a href="logout.php" id="logout">Logout</a>
<header>&nbsp;&nbsp;&nbsp;

<img src="logo.png" alt="Logo">
<form action="#" method="POST">
<input type="text" name="url" placeholder="Format: https://www.google.co.in ">&nbsp;&nbsp;&nbsp;

<input type="submit" value="Crawl">
</header>
<section>
<?php 

if (!empty($_POST)) {
    // handle post data
   	//var_dump($_POST);
   	include_once "simple_html_dom.php";
// Create DOM from URL or file
//$link_to_crawl = 'https://www.digitalocean.com/pricing';
$link_to_crawl =$_POST['url'];
// Create DOM from URL or file
$html = file_get_html($link_to_crawl);
$link_array_for_images = array($link_to_crawl);
$link_array = array($link_to_crawl);
// Find all images 
foreach($html->find('img') as $element) {
       //echo $element->src . '<br>';
        array_push ($link_array_for_images,$element->src) ;}
			$new_link_array_for_images = array_unique($link_array_for_images); 
			//echo "----------<br>";      
       	//print_r($new_link_array_for_images);
       $formatted_array_for_images=  array($link_to_crawl);
		
// Find all links 
foreach($html->find('a') as $element) 
       array_push ($link_array,$element->href) ;
foreach ($new_link_array_for_images as $links)
{
$pos1 = stripos($links,'/');
if ($pos1 == 0)
{
	$temparray = $link_to_crawl . $links;
array_push ($formatted_array_for_images, $temparray);
}
else 
{
array_push ($formatted_array_for_images , $links);
}

}
//echo "------------------------------------------<br>";
//print_r($formatted_array_for_images);
/*echo "<div class=\"images\">";
$i =0;
foreach($formatted_array_for_images as $links)
{
	$i++;
if ($i>2)
{
	echo "<img src=\"".$links ."\">";

}

}
echo "</div>";*/
//this is for determining if the link has already been crawled or not .if its crawled then it will go 
//to next database and search for meta (unique ) and retrieve  the links from another database first whose links matches with 
//meta keyword

// printf("uniqid('php_'): %s\r\n", uniqid());
$unique_timestamp = uniqid();

//2. Perform database query
$query ="INSERT INTO CRAWL (link,Meta)
VALUES ('{$link_to_crawl}','{$unique_timestamp}')";

$result= mysqli_query($connection, $query);
// Test if there was a query error 
/*if(!$result){
echo "FAILED";
echo mysql_errno($query) . ": " . mysql_error($query) . "\n";
echo mysqli_error();

}*/
// printf("Affected rows (INSERT): %d\n", mysqli_affected_rows($connection));
if (mysqli_affected_rows($connection) == 1)
{



/*echo "----------------------------------------------------------------";
 //print_r($link_array);  
 echo "----------------------------------------------------------------";    */
$new_link_array = array_unique($link_array);
/*echo "<br>";
echo "-----------------------------------------------------------------";
echo "<br>";
//print_r($new_link_array);
echo "------------------------------------------------------------------";*/
$formatted_array=  array($link_to_crawl);
foreach ($new_link_array as $links)
{
$pos1 = stripos($links,'/');
if ($pos1 == 0)
{
	$temparray = $link_to_crawl . $links;
array_push ($formatted_array, $temparray);
}
else 
{
array_push ($formatted_array, $links);
}

}
//echo "-------------------------------------------------------------<br>";
$last_array = array($link_to_crawl);
foreach ($formatted_array as $arrayitems)
{
$p = explode("?",$arrayitems);
$arrayitems = $p[0];
$p = explode("#",$arrayitems);
$arrayitems = $p[0];
//echo $arrayitems .'<br>';
array_push ($last_array,$arrayitems) ;
}
/*echo "-------------------------------------------------------------<br>";
echo "---Last---<br>";*/
$result = array_unique($last_array);
echo "<table >";

foreach ($result as $last_value)
{	
	$linked = $last_value;
	echo "<tr><td>";
/*$html = file_get_html($last_value);
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
echo '<br>' .$var[1] .'<br>';


}
*/
echo "<br><a href=\"";
echo $linked . "\">".$linked ."<br>";

//2. Perform database query
$query1 ="INSERT INTO CRAWLED (Crawled,Meta)
VALUES ('{$linked}','{$unique_timestamp}')";

$result1= mysqli_query($connection, $query1);
// Test if there was a query error 
/*if(!$result1){
echo "FAILED";


}*/


	echo "</td></tr>";
}
echo "</table>";
}
else {
	// echo "This is else part";
//2. Perform database query
	// echo $link_to_crawl;
$query2 ="SELECT * FROM `CRAWL` where link = '{$link_to_crawl}'";
$result2= mysqli_query($connection, $query2);
    $row_cnt = mysqli_num_rows($result2);

    // printf("Result set has %d rows.\n", $row_cnt);
while($linker=mysqli_fetch_assoc($result2))
{

	$unique_timestamp = $linker["Meta"];
	// echo "this is uniue" . $unique_timestamp;
}

//2. Perform database query
$query3 ="SELECT * FROM `CRAWLED` where Meta='{$unique_timestamp}' ";
$result3= mysqli_query($connection, $query3);
echo "<table >";
while($all_links=mysqli_fetch_assoc($result3))
{
	echo "<tr><td>";
	echo "<br><a href=\"";
echo $all_links["Crawled"] . "\">".$all_links["Crawled"] ."<br>";
	
}




}
}


?></section>
</body>
</html>
