<?php 
include_once "simple_html_dom.php";
// Create DOM from URL or file
$link_to_crawl = 'https://www.digitalocean.com';
//$link_to_crawl = '$_POST['url']';
$link_array = array($link_to_crawl);

$html = file_get_html($link_to_crawl);

// Find all images 
/*foreach($html->find('img') as $element) {
       echo $element->src . '<br>';
       $full_image_link = $link_to_crawl . $element->src;
       echo '<img src="'.$full_image_link.'">';
       }*/
       //echo "----------------------------------------------";
       //echo "<br/>";

// Find all links 
foreach($html->find('a') as $element) 
	{
       $link_crawled = $element->href;
      // echo $link_crawled;
      //echo '---------------------------------------------';
		//echo '<br>';
       
       //echo $element->href . '<br>';
      //Checks if the link is absolute url or relative url
       $pos1 = stripos($element->href,'/');
      //echo $pos1 .'<br>';
      //condition for the absolute url 
      if ($pos1 == 0)
      {
      	//echo domain+relative url
      //echo '<br>'. $link_to_crawl . $element->href ;
			$new_string_to_be_format = $link_to_crawl.$element->href;
			//echo $new_string_to_be_format . '<br>';
			$pos2 =stripos($new_string_to_be_format,'?');
			$string_to_be_format = $new_string_to_be_format.' ';    	
      	} else{
		//strips the unwanted post characters after ? which is unwanted
      	$pos2 = stripos($element->href,'?');
      	$string_to_be_format = $element->href .' ';
      	      		
      		}
      //	echo 'Formated String is';
      	//function to strip those unwanted post characters
      	$formated_link = substr_replace($string_to_be_format,'', $pos2,-1);
      
      	//echo '<br>' . $formated_link;
      	//stacks all links into the array of and makes an array for them
      	array_push($link_array,$formated_link);
      	
     // echo '<br>';
      
      
    }  
    //echo "---------------------------------------------------------------------------";
   /*foreach($link_array as $array_items)
   {
		echo "$array_items <br>";   	
   	}
		echo"---------------------------------------------------------------------------- <br>";
	*/	
	//removes the duplicate items from the array and should be the final absolute 
		$result = array_unique($link_array);
	
	/*foreach($result as $final_result)
	{
	echo $final_result .'<br>';
		}
echo "-----------------------------------------------------------------------------";		
	*/	
	$trimmed_array= array_map('trim',$result);
	//print_r($trimmed_array);
	echo "<table border=solid>";
	$filtered_array = (array_filter($trimmed_array));
		foreach($filtered_array as $output_array)
		{	echo "<tr> <td>";
			echo $output_array . '<br>';			
			echo "</td> </tr>";			
			}
	echo "</table>";

       ?>
       
